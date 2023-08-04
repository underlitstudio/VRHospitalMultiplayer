Shader "Ciconia Studio/CS_Polybrush/Builtin/Lite/Flood"
{
	Properties
	{
		[Space(35)][Header(Base Layer (R)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXY("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_Color("Color", Color) = (1,1,1,0)
		_MainTex("Base Color", 2D) = "white" {}
		_Saturation("Saturation", Float) = 0
		_Brightness("Brightness", Range( 1 , 8)) = 1
		[Space(35)]_BumpMap("Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Intensity", Float) = 0.3
		[Space(35)]_MetallicGlossMapMAHS("Mask Map  -->M(R) - Ao(G) - H(B) - S(A)", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 2)) = 0
		_Glossiness("Smoothness", Range( 0 , 2)) = 0.5
		[Space(15)]_Parallax("Height Scale", Range( -0.1 , 0.1)) = 0
		_AoIntensity("Ao Intensity", Range( 0 , 2)) = 0
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L0VisualizeHeightmap("Visualize Heightmap", Float) = 0
		_L0HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L0Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L0Displacement("Displacement", Float) = 0
		[Space(35)][Header(Wet Properties (A)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)][KeywordEnum(Color,Wetmap,BaseLayer)] _WetBaseColor("Base Color", Float) = 2
		[Space(10)]_ColorWet("Color", Color) = (0.5,0.5,0.5,1)
		_WetTex("Wet map  -->Ao(A)", 2D) = "gray" {}
		_DetailSaturation("Saturation", Float) = 0
		_DetailBrightness("Brightness", Range( 1 , 8)) = 1
		[Space(10)]_Metalness("Metalness", Range( 0 , 1)) = 0.2
		_SmoothnessWet("Smoothness", Range( 0 , 2)) = 1
		[Space(10)]_AoWet("Ao Intensity", Range( 0 , 1)) = 0
		[Space(15)][Header(Additional Reflection)][Space(10)]_ColorCubemap1("Color ", Color) = (1,1,1,1)
		[HDR]_Cubemap("Cubemap", CUBE) = "black" {}
		[Space(10)]_ReflectionIntensity("Intensity", Range( 0 , 10)) = 0.2
		_BlurReflection("Blur", Range( 0 , 7)) = 0.5
		[Space(35)][Header(Puddles Animations)][Space(15)]_PuddleMap("Wave Normal Map", 2D) = "bump" {}
		[Space(15)][Toggle(_MAINWAVE_ON)] _MainWave("Main Wave", Float) = 1
		_NormalWaveIntensity1("Intensity", Float) = 0.5
		_TranslationSpeed1("Speed", Float) = 0.2
		_RotationAngle1("Rotation", Float) = 0
		_TilingWave1("Tiling", Float) = 0.05
		[Space(25)][Toggle(_DETAILWAVE_ON)] _DetailWave("Detail Wave", Float) = 1
		_NormalWaveIntensity2("Intensity", Float) = 0.3
		_TranslationSpeed2("Speed", Float) = 0.2
		_RotationAngle2("Rotation", Float) = 90
		_TilingWave2("Tiling", Float) = 0.05
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L3UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L3ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L3BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L3BlendAmount("Amount", Float) = 1
		_L3BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L1VisualizeHeightmap("Visualize Heightmap", Float) = 0
		[Space(10)]_L1Displacement1("Displacement", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[Space(35)][Header(Tessellation Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Toggle]_EnableTessellation("Enable ", Float) = 0
		[Space(15)]_Tessellation("Tessellation", Float) = 8
		[Space(15)]_DistanceMin("Distance Min", Float) = 1
		_DistanceMax("Distance Max", Float) = 20
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityCG.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Tessellation.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		#pragma shader_feature_local _DETAILWAVE_ON
		#pragma shader_feature_local _MAINWAVE_ON
		#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER
		#define Z_TEXTURE_CHANNELS 4
		#define Z_MESH_ATTRIBUTES UV0
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float3 viewDir;
			INTERNAL_DATA
			half ASEVFace : VFACE;
			float4 vertexColor : COLOR;
			float3 worldRefl;
		};

		uniform float _L0Displacement;
		uniform float _L0Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHS;
		uniform float4 _MetallicGlossMapMAHS_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXY;
		uniform float _L0HeightmapSpread;
		uniform float _L1Displacement1;
		uniform float _L3BlendOpacity;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _Parallax;
		uniform float _BumpScale;
		uniform sampler2D _PuddleMap;
		uniform float _TranslationSpeed1;
		uniform float4 _PuddleMap_ST;
		uniform float _TilingWave1;
		uniform float _RotationAngle1;
		uniform float _NormalWaveIntensity1;
		uniform float _TranslationSpeed2;
		uniform float _TilingWave2;
		uniform float _RotationAngle2;
		uniform float _NormalWaveIntensity2;
		uniform float _L3UseHeightmapDepth1;
		uniform float _L3ConstrainbyPaintedMask;
		uniform float _L3BlendAmount;
		uniform float _L3BlendContrast;
		uniform float _L1VisualizeHeightmap;
		uniform float _L0VisualizeHeightmap;
		uniform float _Brightness;
		uniform float4 _Color;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float _Saturation;
		uniform float4 _ColorWet;
		uniform float _DetailBrightness;
		uniform sampler2D _WetTex;
		uniform float4 _WetTex_ST;
		uniform float _DetailSaturation;
		uniform samplerCUBE _Cubemap;
		uniform float _BlurReflection;
		uniform float _ReflectionIntensity;
		uniform float4 _ColorCubemap1;
		uniform float _Metallic;
		uniform float _Metalness;
		uniform float _Glossiness;
		uniform float _SmoothnessWet;
		uniform float _AoIntensity;
		uniform float _AoWet;
		uniform float _EnableTessellation;
		uniform float _DistanceMin;
		uniform float _DistanceMax;
		uniform float _Tessellation;


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
		}

		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			float4 temp_cast_7 = (0.5).xxxx;
			float clampResult9_g1336 = clamp( _Tessellation , 1.0 , 64.0 );
			return (( _EnableTessellation )?( UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _DistanceMin,_DistanceMax,clampResult9_g1336) ):( temp_cast_7 ));
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float3 ase_vertexNormal = v.normal.xyz;
			float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1054 = uv_MetallicGlossMapMAHS;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1054 = (float2(( break26_g1054.x * L0GlobalTilingX150 ) , ( break26_g1054.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1054 = (float2(( break26_g1054.x + L0GlobalOffsetX151 ) , ( break26_g1054.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1053 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer0Heightmap336 = tex2DNode3_g1053.b;
			float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1333 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VertexOffset605 = ( float4( ( ase_vertexNormal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1333 );
			float4 temp_cast_5 = (1.0).xxxx;
			float4 temp_output_10_0_g1334 = ( temp_cast_5 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
			float4 Layer1VertexOffset613 = ( float4( ( ase_vertexNormal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1334 );
			float4 break106 = v.color;
			float VertexA117 = break106.a;
			float WetOpacity768 = _L3BlendOpacity;
			float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexA117 * WetOpacity768 ));
			float4 VertexOffset621 = lerpResult619;
			v.vertex.xyz += VertexOffset621.xyz;
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 break26_g1330 = uv_BumpMap;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1330 = (float2(( break26_g1330.x * L0GlobalTilingX150 ) , ( break26_g1330.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1330 = (float2(( break26_g1330.x + L0GlobalOffsetX151 ) , ( break26_g1330.y + L0GlobalOffsetY148 )));
			float2 uv_MetallicGlossMapMAHS = i.uv_texcoord * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1054 = uv_MetallicGlossMapMAHS;
			float2 appendResult14_g1054 = (float2(( break26_g1054.x * L0GlobalTilingX150 ) , ( break26_g1054.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1054 = (float2(( break26_g1054.x + L0GlobalOffsetX151 ) , ( break26_g1054.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1053 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1053 = ParallaxOffset( tex2DNode3_g1053.b , _Parallax , i.viewDir );
			float2 switchResult37_g1053 = (((i.ASEVFace>0)?(paralaxOffset38_g1053):(0.0)));
			float2 Layer0Parallax215 = switchResult37_g1053;
			float3 tex2DNode4_g1329 = UnpackScaleNormal( tex2D( _BumpMap, ( ( appendResult14_g1330 + appendResult13_g1330 ) + Layer0Parallax215 ) ), _BumpScale );
			float3 Layer0Normal193 = tex2DNode4_g1329;
			float2 temp_cast_0 = (_TranslationSpeed1).xx;
			float2 uv_PuddleMap = i.uv_texcoord * _PuddleMap_ST.xy + _PuddleMap_ST.zw;
			float cos54_g1337 = cos( radians( _RotationAngle1 ) );
			float sin54_g1337 = sin( radians( _RotationAngle1 ) );
			float2 rotator54_g1337 = mul( ( uv_PuddleMap * _TilingWave1 ) - float2( 0.5,0.5 ) , float2x2( cos54_g1337 , -sin54_g1337 , sin54_g1337 , cos54_g1337 )) + float2( 0.5,0.5 );
			float2 panner86_g1337 = ( _Time.x * temp_cast_0 + rotator54_g1337);
			#ifdef _MAINWAVE_ON
				float3 staticSwitch109_g1337 = UnpackScaleNormal( tex2D( _PuddleMap, panner86_g1337 ), _NormalWaveIntensity1 );
			#else
				float3 staticSwitch109_g1337 = float3(0,0,1);
			#endif
			float2 temp_cast_1 = (_TranslationSpeed2).xx;
			float cos83_g1337 = cos( radians( _RotationAngle2 ) );
			float sin83_g1337 = sin( radians( _RotationAngle2 ) );
			float2 rotator83_g1337 = mul( ( uv_PuddleMap * _TilingWave2 ) - float2( 0.5,0.5 ) , float2x2( cos83_g1337 , -sin83_g1337 , sin83_g1337 , cos83_g1337 )) + float2( 0.5,0.5 );
			float2 panner88_g1337 = ( _Time.x * temp_cast_1 + rotator83_g1337);
			#ifdef _DETAILWAVE_ON
				float3 staticSwitch56_g1337 = BlendNormals( staticSwitch109_g1337 , UnpackScaleNormal( tex2D( _PuddleMap, panner88_g1337 ), _NormalWaveIntensity2 ) );
			#else
				float3 staticSwitch56_g1337 = staticSwitch109_g1337;
			#endif
			float3 Layer1Normal260 = staticSwitch56_g1337;
			float4 break106 = i.vertexColor;
			float VertexA117 = break106.a;
			float temp_output_21_0_g1324 = VertexA117;
			float Layer0Heightmap336 = tex2DNode3_g1053.b;
			float clampResult11_g1324 = clamp( ( _L3BlendAmount + (( 1.0 + _L3BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L3BlendContrast - ( 1.0 + _L3BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1324 = clampResult11_g1324;
			float blendOpDest18_g1324 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1324 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1324 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1324 * blendOpDest18_g1324 ) )) ):( clampResult11_g1324 ));
			float blendOpDest31_g1324 = temp_output_21_0_g1324;
			float temp_output_953_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1324 + blendOpDest31_g1324 ) )) ):( temp_output_21_0_g1324 ));
			float VertexAHeightmap799 = temp_output_953_0;
			float WetOpacity768 = _L3BlendOpacity;
			float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , ( VertexAHeightmap799 * WetOpacity768 ));
			float3 Normal129 = lerpResult133;
			o.Normal = Normal129;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 break26_g1328 = float4( uv_MainTex, 0.0 , 0.0 ).xy;
			float2 appendResult14_g1328 = (float2(( break26_g1328.x * L0GlobalTilingX150 ) , ( break26_g1328.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1328 = (float2(( break26_g1328.x + L0GlobalOffsetX151 ) , ( break26_g1328.y + L0GlobalOffsetY148 )));
			float4 tex2DNode7_g1327 = tex2D( _MainTex, ( ( appendResult14_g1328 + appendResult13_g1328 ) + Layer0Parallax215 ) );
			float clampResult27_g1327 = clamp( _Saturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1327 = ( _Color * tex2DNode7_g1327 ).rgb;
			float desaturateDot29_g1327 = dot( desaturateInitialColor29_g1327, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1327 = lerp( desaturateInitialColor29_g1327, desaturateDot29_g1327.xxx, -clampResult27_g1327 );
			float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1327 , 0.0 ));
			float4 temp_cast_6 = (1.0).xxxx;
			float2 uv_WetTex = i.uv_texcoord * _WetTex_ST.xy + _WetTex_ST.zw;
			float2 temp_output_40_0_g1325 = ( ( uv_WetTex + float2( 0,0 ) ) + ( float2( 0,0 ) * float2( 0,0 ) ) );
			float4 tex2DNode56_g1325 = tex2D( _WetTex, temp_output_40_0_g1325 );
			float clampResult27_g1325 = clamp( _DetailSaturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1325 = tex2DNode56_g1325.rgb;
			float desaturateDot29_g1325 = dot( desaturateInitialColor29_g1325, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1325 = lerp( desaturateInitialColor29_g1325, desaturateDot29_g1325.xxx, -clampResult27_g1325 );
			float4 Layer1BaseColor261 = CalculateContrast(_DetailBrightness,float4( desaturateVar29_g1325 , 0.0 ));
			#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_6;
			#elif defined(_WETBASECOLOR_WETMAP)
				float4 staticSwitch767 = Layer1BaseColor261;
			#elif defined(_WETBASECOLOR_BASELAYER)
				float4 staticSwitch767 = Layer0BaseColor179;
			#else
				float4 staticSwitch767 = Layer0BaseColor179;
			#endif
			float4 Layer3BaseColor786 = ( _ColorWet * staticSwitch767 );
			float4 lerpResult101 = lerp( Layer0BaseColor179 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
			float4 BaseColor121 = lerpResult101;
			float4 temp_cast_9 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1333 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VisHeightmap579 = temp_output_8_0_g1333;
			float VertexR114 = break106.r;
			float4 temp_cast_12 = (1.0).xxxx;
			float4 temp_output_10_0_g1334 = ( temp_cast_12 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
			float4 Layer1VisHeightmap612 = temp_output_10_0_g1334;
			o.Albedo = (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexA117 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )).xyz;
			float4 texCUBENode27_g1332 = texCUBElod( _Cubemap, float4( normalize( WorldReflectionVector( i , Normal129 ) ), _BlurReflection) );
			float clampResult39_g1332 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
			float4 temp_cast_14 = (1.0).xxxx;
			float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1332 * ( texCUBENode27_g1332.a * clampResult39_g1332 ) * _ColorCubemap1 ) * temp_cast_14 ) , VertexA117);
			float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
			o.Emission = Cubemap742.rgb;
			float Layer0Metallic211 = ( tex2DNode3_g1053.r * _Metallic );
			float CubemapMetalness750 = _Metalness;
			float lerpResult293 = lerp( Layer0Metallic211 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Metallic296 = lerpResult293;
			o.Metallic = Metallic296;
			float temp_output_1_0_g1053 = ( tex2DNode3_g1053.a * _Glossiness );
			float Layer0Smoothness210 = temp_output_1_0_g1053;
			float CubemapSkyIntensity741 = _SmoothnessWet;
			float lerpResult305 = lerp( Layer0Smoothness210 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Smoothness309 = lerpResult305;
			o.Smoothness = Smoothness309;
			float blendOpSrc34_g1053 = tex2DNode3_g1053.g;
			float blendOpDest34_g1053 = ( 1.0 - _AoIntensity );
			float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1053 ) * ( 1.0 - blendOpDest34_g1053 ) ) ));
			float WetAo935 = tex2DNode56_g1325.a;
			#if defined(_WETBASECOLOR_COLOR)
				float staticSwitch931 = 1.0;
			#elif defined(_WETBASECOLOR_WETMAP)
				float staticSwitch931 = WetAo935;
			#elif defined(_WETBASECOLOR_BASELAYER)
				float staticSwitch931 = Layer0Ao214;
			#else
				float staticSwitch931 = Layer0Ao214;
			#endif
			float AoWet940 = _AoWet;
			float blendOpSrc944 = staticSwitch931;
			float blendOpDest944 = ( 1.0 - AoWet940 );
			float lerpResult316 = lerp( Layer0Ao214 , ( saturate( ( 1.0 - ( 1.0 - blendOpSrc944 ) * ( 1.0 - blendOpDest944 ) ) )) , ( VertexAHeightmap799 * WetOpacity768 ));
			float Ao321 = lerpResult316;
			o.Occlusion = Ao321;
			o.Alpha = 1;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Standard keepalpha fullforwardshadows vertex:vertexDataFunc tessellate:tessFunction 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.6
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				half4 color : COLOR0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.color = v.color;
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.viewDir = IN.tSpace0.xyz * worldViewDir.x + IN.tSpace1.xyz * worldViewDir.y + IN.tSpace2.xyz * worldViewDir.z;
				surfIN.worldRefl = -worldViewDir;
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.vertexColor = IN.color;
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
}