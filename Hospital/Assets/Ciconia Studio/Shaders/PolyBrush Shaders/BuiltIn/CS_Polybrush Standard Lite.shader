Shader "Ciconia Studio/CS_Polybrush/Builtin/Lite/Standard"
{
	Properties
	{
		[Space(35)][Header(Base Layer (R)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXY("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		[Space(15)]_Color("Color -->BaseColor Intensity(A)", Color) = (1,1,1,1)
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
		[HDR][Space(45)]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		_EmissionIntensity("Intensity", Range( 0 , 2)) = 1
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L0VisualizeHeightmap1("Visualize Heightmap", Float) = 0
		_L0HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L0Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L0Displacement("Displacement", Float) = 0
		[Space(35)][Header(Layer1 (G)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXYL1("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_ColorL1("Color", Color) = (1,1,1,1)
		_BaseColorL1("Base Color", 2D) = "white" {}
		_SaturationL1("Saturation", Float) = 0
		_BrightnessL1("Brightness", Range( 1 , 8)) = 1
		[Space(35)]_BumpMapL1("Normal Map", 2D) = "bump" {}
		_BumpScaleL1("Normal Intensity", Float) = 0.3
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[Space(35)]_MetallicGlossMapMAHSL1("Mask Map  -->M(R) - Ao(G) - H(B) - S(A)", 2D) = "white" {}
		_MetallicL1("Metallic", Range( 0 , 2)) = 0
		_GlossinessL1("Smoothness", Range( 0 , 2)) = 0.5
		[Space(15)]_ParallaxL1("Height Scale", Range( -0.1 , 0.1)) = 0
		_AoIntensityL1("Ao Intensity", Range( 0 , 2)) = 0
		[Space(35)][Toggle]_UseEmissionFromMainPropertiesOld1("Use Emission From Main Properties", Float) = 0
		_L2EmissionIntensity("Emission Intensity", Range( 0 , 1)) = 1
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L1UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L1ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L1BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L1BlendAmount("Amount", Float) = 1
		_L1BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L1VisualizeHeightmap1("Visualize Heightmap", Float) = 0
		_L1HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L1Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L1Displacement("Displacement", Float) = 0
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
		#include "Tessellation.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
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
		};

		uniform float _L0Displacement;
		uniform float _L0Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHS;
		uniform float4 _MetallicGlossMapMAHS_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXY;
		uniform float _L0HeightmapSpread;
		uniform float _L1Displacement;
		uniform float _L1Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHSL1;
		uniform float4 _MetallicGlossMapMAHSL1_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXYL1;
		uniform float _L1HeightmapSpread;
		uniform float _L1BlendOpacity;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _Parallax;
		uniform float _BumpScale;
		uniform sampler2D _BumpMapL1;
		uniform float4 _BumpMapL1_ST;
		uniform float _ParallaxL1;
		uniform float _BumpScaleL1;
		uniform float _L1UseHeightmapDepth1;
		uniform float _L1ConstrainbyPaintedMask;
		uniform float _L1BlendAmount;
		uniform float _L1BlendContrast;
		uniform float _L1VisualizeHeightmap1;
		uniform float _L0VisualizeHeightmap1;
		uniform float _Brightness;
		uniform float4 _Color;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float _Saturation;
		uniform float _BrightnessL1;
		uniform float4 _ColorL1;
		uniform sampler2D _BaseColorL1;
		uniform float4 _BaseColorL1_ST;
		uniform float _SaturationL1;
		uniform float _UseEmissionFromMainPropertiesOld1;
		uniform float4 _EmissionColor;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float _EmissionIntensity;
		uniform float _L2EmissionIntensity;
		uniform float _Metallic;
		uniform float _MetallicL1;
		uniform float _Glossiness;
		uniform float _GlossinessL1;
		uniform float _AoIntensity;
		uniform float _AoIntensityL1;
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
			float clampResult9_g1394 = clamp( _Tessellation , 1.0 , 64.0 );
			return (( _EnableTessellation )?( UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _DistanceMin,_DistanceMax,clampResult9_g1394) ):( temp_cast_7 ));
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float3 ase_vertexNormal = v.normal.xyz;
			float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1057 = uv_MetallicGlossMapMAHS;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1057 = (float2(( break26_g1057.x * L0GlobalTilingX150 ) , ( break26_g1057.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1057 = (float2(( break26_g1057.x + L0GlobalOffsetX151 ) , ( break26_g1057.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1056 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1057 + appendResult13_g1057 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer0Heightmap336 = tex2DNode3_g1056.b;
			float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1392 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VertexOffset977 = ( float4( ( ase_vertexNormal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1392 );
			float2 uv_MetallicGlossMapMAHSL1 = v.texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1055 = uv_MetallicGlossMapMAHSL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1055 = (float2(( break26_g1055.x * L1GlobalTilingX234 ) , ( break26_g1055.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1055 = (float2(( break26_g1055.x + L1GlobalOffsetX236 ) , ( break26_g1055.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1054 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1055 + appendResult13_g1055 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer1Heightmap510 = tex2DNode3_g1054.b;
			float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
			float4 temp_output_8_0_g1395 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer1VertexOffset1010 = ( float4( ( ase_vertexNormal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1395 );
			float4 break106 = v.color;
			float VertexG115 = break106.g;
			float L1Opacity950 = _L1BlendOpacity;
			float4 lerpResult991 = lerp( Layer0VertexOffset977 , Layer1VertexOffset1010 , ( VertexG115 * L1Opacity950 ));
			float4 VertexOffset996 = lerpResult991;
			v.vertex.xyz += VertexOffset996.rgb;
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 break26_g1389 = uv_BumpMap;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
			float2 uv_MetallicGlossMapMAHS = i.uv_texcoord * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1057 = uv_MetallicGlossMapMAHS;
			float2 appendResult14_g1057 = (float2(( break26_g1057.x * L0GlobalTilingX150 ) , ( break26_g1057.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1057 = (float2(( break26_g1057.x + L0GlobalOffsetX151 ) , ( break26_g1057.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1056 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1057 + appendResult13_g1057 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1056 = ParallaxOffset( tex2DNode3_g1056.b , _Parallax , i.viewDir );
			float2 switchResult37_g1056 = (((i.ASEVFace>0)?(paralaxOffset38_g1056):(0.0)));
			float2 Layer0Parallax215 = switchResult37_g1056;
			float3 tex2DNode4_g1388 = UnpackScaleNormal( tex2D( _BumpMap, ( ( appendResult14_g1389 + appendResult13_g1389 ) + Layer0Parallax215 ) ), _BumpScale );
			float3 Layer0Normal193 = tex2DNode4_g1388;
			float2 uv_BumpMapL1 = i.uv_texcoord * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
			float2 break26_g1391 = uv_BumpMapL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1391 = (float2(( break26_g1391.x * L1GlobalTilingX234 ) , ( break26_g1391.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1391 = (float2(( break26_g1391.x + L1GlobalOffsetX236 ) , ( break26_g1391.y + L1GlobalOffsetY237 )));
			float2 uv_MetallicGlossMapMAHSL1 = i.uv_texcoord * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1055 = uv_MetallicGlossMapMAHSL1;
			float2 appendResult14_g1055 = (float2(( break26_g1055.x * L1GlobalTilingX234 ) , ( break26_g1055.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1055 = (float2(( break26_g1055.x + L1GlobalOffsetX236 ) , ( break26_g1055.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1054 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1055 + appendResult13_g1055 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1054 = ParallaxOffset( tex2DNode3_g1054.b , _ParallaxL1 , i.viewDir );
			float2 switchResult37_g1054 = (((i.ASEVFace>0)?(paralaxOffset38_g1054):(0.0)));
			float2 Layer1Parallax247 = switchResult37_g1054;
			float3 tex2DNode4_g1390 = UnpackScaleNormal( tex2D( _BumpMapL1, ( ( appendResult14_g1391 + appendResult13_g1391 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
			float3 Layer1Normal260 = tex2DNode4_g1390;
			float4 break106 = i.vertexColor;
			float VertexG115 = break106.g;
			float temp_output_21_0_g1384 = VertexG115;
			float Layer0Heightmap336 = tex2DNode3_g1056.b;
			float clampResult11_g1384 = clamp( ( ( (-4.0 + (_L1BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) - 2.37 ) + (( 1.0 + _L1BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L1BlendContrast - ( 1.0 + _L1BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1384 = clampResult11_g1384;
			float blendOpDest18_g1384 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1384 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1384 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1384 * blendOpDest18_g1384 ) )) ):( clampResult11_g1384 ));
			float blendOpDest31_g1384 = temp_output_21_0_g1384;
			float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1384 + blendOpDest31_g1384 ) )) ):( temp_output_21_0_g1384 )) * _L1BlendOpacity );
			float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
			float3 Normal129 = lerpResult133;
			o.Normal = Normal129;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 break26_g1383 = float4( uv_MainTex, 0.0 , 0.0 ).xy;
			float2 appendResult14_g1383 = (float2(( break26_g1383.x * L0GlobalTilingX150 ) , ( break26_g1383.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1383 = (float2(( break26_g1383.x + L0GlobalOffsetX151 ) , ( break26_g1383.y + L0GlobalOffsetY148 )));
			float4 tex2DNode7_g1382 = tex2D( _MainTex, ( ( appendResult14_g1383 + appendResult13_g1383 ) + Layer0Parallax215 ) );
			float4 lerpResult56_g1382 = lerp( _Color , ( ( _Color * tex2DNode7_g1382 ) * _Color.a ) , _Color.a);
			float clampResult27_g1382 = clamp( _Saturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1382 = lerpResult56_g1382.rgb;
			float desaturateDot29_g1382 = dot( desaturateInitialColor29_g1382, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1382 = lerp( desaturateInitialColor29_g1382, desaturateDot29_g1382.xxx, -clampResult27_g1382 );
			float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1382 , 0.0 ));
			float2 uv_BaseColorL1 = i.uv_texcoord * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
			float2 break26_g1386 = uv_BaseColorL1;
			float2 appendResult14_g1386 = (float2(( break26_g1386.x * L1GlobalTilingX234 ) , ( break26_g1386.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1386 = (float2(( break26_g1386.x + L1GlobalOffsetX236 ) , ( break26_g1386.y + L1GlobalOffsetY237 )));
			float4 tex2DNode7_g1385 = tex2D( _BaseColorL1, ( ( appendResult14_g1386 + appendResult13_g1386 ) + Layer1Parallax247 ) );
			float clampResult27_g1385 = clamp( _SaturationL1 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1385 = ( _ColorL1 * tex2DNode7_g1385 ).rgb;
			float desaturateDot29_g1385 = dot( desaturateInitialColor29_g1385, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1385 = lerp( desaturateInitialColor29_g1385, desaturateDot29_g1385.xxx, -clampResult27_g1385 );
			float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1385 , 0.0 ));
			float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
			float4 BaseColor121 = lerpResult99;
			float4 temp_cast_6 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1392 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_6 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VisHeightmap978 = temp_output_8_0_g1392;
			float VertexR114 = break106.r;
			float Layer1Heightmap510 = tex2DNode3_g1054.b;
			float4 temp_cast_8 = (Layer1Heightmap510).xxxx;
			float4 temp_output_8_0_g1395 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_8 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer1VisHeightmap1011 = temp_output_8_0_g1395;
			o.Albedo = (( _L1VisualizeHeightmap1 )?( ( Layer1VisHeightmap1011 * VertexG115 ) ):( (( _L0VisualizeHeightmap1 )?( ( Layer0VisHeightmap978 * VertexR114 ) ):( BaseColor121 )) )).rgb;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float2 break26_g1381 = uv_EmissionMap;
			float2 appendResult14_g1381 = (float2(( break26_g1381.x * L0GlobalTilingX150 ) , ( break26_g1381.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1381 = (float2(( break26_g1381.x + L0GlobalOffsetX151 ) , ( break26_g1381.y + L0GlobalOffsetY148 )));
			float4 temp_output_5_0_g1380 = ( _EmissionColor * tex2D( _EmissionMap, ( ( appendResult14_g1381 + appendResult13_g1381 ) + Layer1Parallax247 ) ) );
			float4 Layer0Emission1034 = ( temp_output_5_0_g1380 * _EmissionIntensity );
			float4 temp_cast_11 = (0.0).xxxx;
			float4 lerpResult1022 = lerp( Layer0Emission1034 , temp_cast_11 , VertexGHeightmap352);
			float4 Layer0EmissionRGB1039 = temp_output_5_0_g1380;
			float4 lerpResult1044 = lerp( Layer0Emission1034 , ( Layer0EmissionRGB1039 * _L2EmissionIntensity ) , VertexGHeightmap352);
			float4 Emission1024 = (( _UseEmissionFromMainPropertiesOld1 )?( lerpResult1044 ):( lerpResult1022 ));
			o.Emission = Emission1024.rgb;
			float Layer0Metallic211 = ( tex2DNode3_g1056.r * _Metallic );
			float Layer1Metallic263 = ( tex2DNode3_g1054.r * _MetallicL1 );
			float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
			float Metallic296 = lerpResult289;
			o.Metallic = Metallic296;
			float temp_output_1_0_g1056 = ( tex2DNode3_g1056.a * _Glossiness );
			float Layer0Smoothness210 = temp_output_1_0_g1056;
			float temp_output_1_0_g1054 = ( tex2DNode3_g1054.a * _GlossinessL1 );
			float Layer1Smoothness264 = temp_output_1_0_g1054;
			float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
			float Smoothness309 = lerpResult301;
			o.Smoothness = Smoothness309;
			float blendOpSrc34_g1056 = tex2DNode3_g1056.g;
			float blendOpDest34_g1056 = ( 1.0 - _AoIntensity );
			float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1056 ) * ( 1.0 - blendOpDest34_g1056 ) ) ));
			float blendOpSrc34_g1054 = tex2DNode3_g1054.g;
			float blendOpDest34_g1054 = ( 1.0 - _AoIntensityL1 );
			float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1054 ) * ( 1.0 - blendOpDest34_g1054 ) ) ));
			float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
			float Ao321 = lerpResult312;
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