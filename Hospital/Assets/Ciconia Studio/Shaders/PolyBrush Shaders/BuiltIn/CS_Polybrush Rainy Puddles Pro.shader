Shader "Ciconia Studio/CS_Polybrush/Builtin/Pro/Rainy Puddles"
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
		[Space(35)][Header(Layer1 (G)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXYL1("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_ColorL1("Color", Color) = (1,1,1,1)
		_BaseColorL1("Base Color", 2D) = "white" {}
		_SaturationL1("Saturation", Float) = 0
		_BrightnessL1("Brightness", Range( 1 , 8)) = 1
		[Space(35)]_BumpMapL1("Normal Map", 2D) = "bump" {}
		_BumpScaleL1("Normal Intensity", Float) = 0.3
		[Space(35)]_MetallicGlossMapMAHSL1("Mask Map  -->M(R) - Ao(G) - H(B) - S(A)", 2D) = "white" {}
		_MetallicL1("Metallic", Range( 0 , 2)) = 0
		_GlossinessL1("Smoothness", Range( 0 , 2)) = 0.5
		[Space(15)]_ParallaxL1("Height Scale", Range( -0.1 , 0.1)) = 0
		_AoIntensityL1("Ao Intensity", Range( 0 , 2)) = 0
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L1VisualizeHeightmap("Visualize Heightmap", Float) = 0
		_L1HeightmapSpread("Heightmap Spread", Float) = 0.5
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		_L1Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L1Displacement("Displacement", Float) = 0
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L1UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L1ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L1BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L1BlendAmount("Amount", Float) = 1
		_L1BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Rain Dots Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GradientTex("Gradient Tex", 2D) = "white" {}
		_Intensity("Intensity", Range( 0 , 1)) = 0
		_Tiling("Tiling", Float) = 100
		_SplashSpeed("Splash Speed", Range( 0 , 1)) = 0.1
		_Size("Size", Range( 0 , 1)) = 0.5
		[Space(35)][Header(Wet Properties (A)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)][KeywordEnum(Color,Wetmap,BaseLayer,Layer1)] _WetBaseColor("Base Color", Float) = 2
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
		[Space(35)][Header(Rain Ripples Properties)][Space(15)]_XColumnsYRowsZSpeedWStrartFrameNormal("X(Columns) - Y(Rows) - Z(Speed) - W(Strart Frame)", Vector) = (8,8,0.25,0)
		_TextureAtlasNormal("Texture Atlas Normal", 2D) = "bump" {}
		_FlipBTilingNormal("FlipBook Tiling", Float) = 1
		_IntensityScaleNormal1("Intensity", Range( 0 , 1)) = 0.4
		[Space(35)][Toggle]_DuplicateTextureAtlasNormal("Duplicate Texture Atlas", Float) = 1
		_IntensityScaleNormal2("Intensity", Range( 0 , 1)) = 0.3
		_ScaleFBDetailsNormal("Scale", Float) = 1
		_FBDetailsNormal("Rotate Details", Float) = 45
		_OffsetFBDetailsNormal("Offset XY", Vector) = (1.5,1.5,0,0)
		[Space(10)]_Distortion("Distortion --> Wetmap Only", Range( 0 , 1)) = 0.3
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L3VisualizeHeightmap1("Visualize Heightmap", Float) = 0
		[Space(10)]_L1Displacement1("Displacement", Float) = 0
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L3UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L3ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L3BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L3BlendAmount("Amount", Float) = 1
		_L3BlendContrast("Contrast", Float) = 3.5
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
		#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER _WETBASECOLOR_LAYER1
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
		uniform float _L1Displacement;
		uniform float _L1Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHSL1;
		uniform float4 _MetallicGlossMapMAHSL1_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXYL1;
		uniform float _L1HeightmapSpread;
		uniform float _L1BlendOpacity;
		uniform float _L1Displacement1;
		uniform float _L3BlendOpacity;
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
		uniform float _DuplicateTextureAtlasNormal;
		uniform sampler2D _TextureAtlasNormal;
		uniform float _FlipBTilingNormal;
		uniform float4 _XColumnsYRowsZSpeedWStrartFrameNormal;
		uniform float _IntensityScaleNormal1;
		uniform float _ScaleFBDetailsNormal;
		uniform float2 _OffsetFBDetailsNormal;
		uniform float _FBDetailsNormal;
		uniform float _IntensityScaleNormal2;
		uniform float _L3UseHeightmapDepth1;
		uniform float _L3ConstrainbyPaintedMask;
		uniform float _L3BlendAmount;
		uniform float _L3BlendContrast;
		uniform float _L3VisualizeHeightmap1;
		uniform float _L1VisualizeHeightmap;
		uniform float _L0VisualizeHeightmap;
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
		uniform float4 _ColorWet;
		uniform float _DetailBrightness;
		uniform sampler2D _WetTex;
		uniform float4 _WetTex_ST;
		uniform float _Distortion;
		uniform float _DetailSaturation;
		uniform samplerCUBE _Cubemap;
		uniform float _BlurReflection;
		uniform float _ReflectionIntensity;
		uniform float4 _ColorCubemap1;
		uniform float _Metallic;
		uniform float _MetallicL1;
		uniform float _Metalness;
		uniform float _Glossiness;
		uniform sampler2D _GradientTex;
		uniform float _SplashSpeed;
		uniform float _Tiling;
		uniform float _Size;
		uniform float _Intensity;
		uniform float _GlossinessL1;
		uniform float _SmoothnessWet;
		uniform float _AoIntensity;
		uniform float _AoIntensityL1;
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

		float2 voronoihash58_g1410( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi58_g1410( float2 v, float time, inout float2 id, inout float2 mr, float smoothness )
		{
			float2 n = floor( v );
			float2 f = frac( v );
			float F1 = 8.0;
			float F2 = 8.0; float2 mg = 0;
			for ( int j = -1; j <= 1; j++ )
			{
				for ( int i = -1; i <= 1; i++ )
			 	{
			 		float2 g = float2( i, j );
			 		float2 o = voronoihash58_g1410( n + g );
					o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
					float d = 0.5 * dot( r, r );
			 		if( d<F1 ) {
			 			F2 = F1;
			 			F1 = d; mg = g; mr = r; id = o;
			 		} else if( d<F2 ) {
			 			F2 = d;
			 		}
			 	}
			}
			return F1;
		}


		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			float4 temp_cast_10 = (0.5).xxxx;
			float clampResult9_g1415 = clamp( _Tessellation , 1.0 , 64.0 );
			return (( _EnableTessellation )?( UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _DistanceMin,_DistanceMax,clampResult9_g1415) ):( temp_cast_10 ));
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float3 ase_vertexNormal = v.normal.xyz;
			float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1056 = uv_MetallicGlossMapMAHS;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1056 = (float2(( break26_g1056.x * L0GlobalTilingX150 ) , ( break26_g1056.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1056 = (float2(( break26_g1056.x + L0GlobalOffsetX151 ) , ( break26_g1056.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1055 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer0Heightmap336 = tex2DNode3_g1055.b;
			float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1412 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VertexOffset605 = ( float4( ( ase_vertexNormal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1412 );
			float2 uv_MetallicGlossMapMAHSL1 = v.texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1058 = uv_MetallicGlossMapMAHSL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1058 = (float2(( break26_g1058.x * L1GlobalTilingX234 ) , ( break26_g1058.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1058 = (float2(( break26_g1058.x + L1GlobalOffsetX236 ) , ( break26_g1058.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1057 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1058 + appendResult13_g1058 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer1Heightmap510 = tex2DNode3_g1057.b;
			float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
			float4 temp_output_8_0_g1413 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer1VertexOffset613 = ( float4( ( ase_vertexNormal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1413 );
			float4 break106 = v.color;
			float VertexG115 = break106.g;
			float L1Opacity950 = _L1BlendOpacity;
			float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
			float4 temp_cast_8 = (1.0).xxxx;
			float4 temp_output_10_0_g1414 = ( temp_cast_8 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
			float4 Layer3VertexOffset869 = ( float4( ( ase_vertexNormal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1414 );
			float VertexA117 = break106.a;
			float WetOpacity768 = _L3BlendOpacity;
			float4 lerpResult905 = lerp( lerpResult619 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
			float4 VertexOffset621 = lerpResult905;
			v.vertex.xyz += VertexOffset621.xyz;
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 break26_g1390 = uv_BumpMap;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1390 = (float2(( break26_g1390.x * L0GlobalTilingX150 ) , ( break26_g1390.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1390 = (float2(( break26_g1390.x + L0GlobalOffsetX151 ) , ( break26_g1390.y + L0GlobalOffsetY148 )));
			float2 uv_MetallicGlossMapMAHS = i.uv_texcoord * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1056 = uv_MetallicGlossMapMAHS;
			float2 appendResult14_g1056 = (float2(( break26_g1056.x * L0GlobalTilingX150 ) , ( break26_g1056.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1056 = (float2(( break26_g1056.x + L0GlobalOffsetX151 ) , ( break26_g1056.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1055 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1055 = ParallaxOffset( tex2DNode3_g1055.b , _Parallax , i.viewDir );
			float2 switchResult37_g1055 = (((i.ASEVFace>0)?(paralaxOffset38_g1055):(0.0)));
			float2 Layer0Parallax215 = switchResult37_g1055;
			float3 tex2DNode4_g1389 = UnpackScaleNormal( tex2D( _BumpMap, ( ( appendResult14_g1390 + appendResult13_g1390 ) + Layer0Parallax215 ) ), _BumpScale );
			float3 Layer0Normal193 = tex2DNode4_g1389;
			float2 uv_BumpMapL1 = i.uv_texcoord * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
			float2 break26_g1387 = uv_BumpMapL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1387 = (float2(( break26_g1387.x * L1GlobalTilingX234 ) , ( break26_g1387.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1387 = (float2(( break26_g1387.x + L1GlobalOffsetX236 ) , ( break26_g1387.y + L1GlobalOffsetY237 )));
			float2 uv_MetallicGlossMapMAHSL1 = i.uv_texcoord * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1058 = uv_MetallicGlossMapMAHSL1;
			float2 appendResult14_g1058 = (float2(( break26_g1058.x * L1GlobalTilingX234 ) , ( break26_g1058.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1058 = (float2(( break26_g1058.x + L1GlobalOffsetX236 ) , ( break26_g1058.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1057 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1058 + appendResult13_g1058 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1057 = ParallaxOffset( tex2DNode3_g1057.b , _ParallaxL1 , i.viewDir );
			float2 switchResult37_g1057 = (((i.ASEVFace>0)?(paralaxOffset38_g1057):(0.0)));
			float2 Layer1Parallax247 = switchResult37_g1057;
			float3 tex2DNode4_g1386 = UnpackScaleNormal( tex2D( _BumpMapL1, ( ( appendResult14_g1387 + appendResult13_g1387 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
			float3 Layer1Normal260 = tex2DNode4_g1386;
			float4 break106 = i.vertexColor;
			float VertexG115 = break106.g;
			float temp_output_21_0_g1388 = VertexG115;
			float Layer0Heightmap336 = tex2DNode3_g1055.b;
			float temp_output_10_0_g1388 = Layer0Heightmap336;
			float clampResult11_g1388 = clamp( ( _L1BlendAmount + (( 1.0 + _L1BlendContrast ) + (temp_output_10_0_g1388 - 0.0) * (-_L1BlendContrast - ( 1.0 + _L1BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1388 = clampResult11_g1388;
			float blendOpDest18_g1388 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1388 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1388 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1388 * blendOpDest18_g1388 ) )) ):( clampResult11_g1388 ));
			float blendOpDest31_g1388 = temp_output_21_0_g1388;
			float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1388 + blendOpDest31_g1388 ) )) ):( temp_output_21_0_g1388 )) * _L1BlendOpacity );
			float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
			float2 temp_cast_0 = (_TranslationSpeed1).xx;
			float2 uv_PuddleMap = i.uv_texcoord * _PuddleMap_ST.xy + _PuddleMap_ST.zw;
			float cos54_g1400 = cos( radians( _RotationAngle1 ) );
			float sin54_g1400 = sin( radians( _RotationAngle1 ) );
			float2 rotator54_g1400 = mul( ( uv_PuddleMap * _TilingWave1 ) - float2( 0.5,0.5 ) , float2x2( cos54_g1400 , -sin54_g1400 , sin54_g1400 , cos54_g1400 )) + float2( 0.5,0.5 );
			float2 panner86_g1400 = ( _Time.x * temp_cast_0 + rotator54_g1400);
			#ifdef _MAINWAVE_ON
				float3 staticSwitch109_g1400 = UnpackScaleNormal( tex2D( _PuddleMap, panner86_g1400 ), _NormalWaveIntensity1 );
			#else
				float3 staticSwitch109_g1400 = float3(0,0,1);
			#endif
			float2 temp_cast_1 = (_TranslationSpeed2).xx;
			float cos83_g1400 = cos( radians( _RotationAngle2 ) );
			float sin83_g1400 = sin( radians( _RotationAngle2 ) );
			float2 rotator83_g1400 = mul( ( uv_PuddleMap * _TilingWave2 ) - float2( 0.5,0.5 ) , float2x2( cos83_g1400 , -sin83_g1400 , sin83_g1400 , cos83_g1400 )) + float2( 0.5,0.5 );
			float2 panner88_g1400 = ( _Time.x * temp_cast_1 + rotator83_g1400);
			#ifdef _DETAILWAVE_ON
				float3 staticSwitch56_g1400 = BlendNormals( staticSwitch109_g1400 , UnpackScaleNormal( tex2D( _PuddleMap, panner88_g1400 ), _NormalWaveIntensity2 ) );
			#else
				float3 staticSwitch56_g1400 = staticSwitch109_g1400;
			#endif
			float FlipBookTiling100_g1350 = _FlipBTilingNormal;
			float2 temp_cast_2 = (FlipBookTiling100_g1350).xx;
			float2 uv_TexCoord114_g1350 = i.uv_texcoord * temp_cast_2;
			float2 appendResult124_g1350 = (float2(frac( uv_TexCoord114_g1350.x ) , frac( uv_TexCoord114_g1350.y )));
			float XColumns119_g1350 = _XColumnsYRowsZSpeedWStrartFrameNormal.x;
			float YRows118_g1350 = _XColumnsYRowsZSpeedWStrartFrameNormal.y;
			float ZSpeed121_g1350 = ( ( _XColumnsYRowsZSpeedWStrartFrameNormal.x * _XColumnsYRowsZSpeedWStrartFrameNormal.y ) * _XColumnsYRowsZSpeedWStrartFrameNormal.z );
			float WStrartFrame122_g1350 = _XColumnsYRowsZSpeedWStrartFrameNormal.w;
			// *** BEGIN Flipbook UV Animation vars ***
			// Total tiles of Flipbook Texture
			float fbtotaltiles130_g1350 = XColumns119_g1350 * YRows118_g1350;
			// Offsets for cols and rows of Flipbook Texture
			float fbcolsoffset130_g1350 = 1.0f / XColumns119_g1350;
			float fbrowsoffset130_g1350 = 1.0f / YRows118_g1350;
			// Speed of animation
			float fbspeed130_g1350 = _Time[ 1 ] * ZSpeed121_g1350;
			// UV Tiling (col and row offset)
			float2 fbtiling130_g1350 = float2(fbcolsoffset130_g1350, fbrowsoffset130_g1350);
			// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
			// Calculate current tile linear index
			float fbcurrenttileindex130_g1350 = round( fmod( fbspeed130_g1350 + WStrartFrame122_g1350, fbtotaltiles130_g1350) );
			fbcurrenttileindex130_g1350 += ( fbcurrenttileindex130_g1350 < 0) ? fbtotaltiles130_g1350 : 0;
			// Obtain Offset X coordinate from current tile linear index
			float fblinearindextox130_g1350 = round ( fmod ( fbcurrenttileindex130_g1350, XColumns119_g1350 ) );
			// Multiply Offset X by coloffset
			float fboffsetx130_g1350 = fblinearindextox130_g1350 * fbcolsoffset130_g1350;
			// Obtain Offset Y coordinate from current tile linear index
			float fblinearindextoy130_g1350 = round( fmod( ( fbcurrenttileindex130_g1350 - fblinearindextox130_g1350 ) / XColumns119_g1350, YRows118_g1350 ) );
			// Reverse Y to get tiles from Top to Bottom
			fblinearindextoy130_g1350 = (int)(YRows118_g1350-1) - fblinearindextoy130_g1350;
			// Multiply Offset Y by rowoffset
			float fboffsety130_g1350 = fblinearindextoy130_g1350 * fbrowsoffset130_g1350;
			// UV Offset
			float2 fboffset130_g1350 = float2(fboffsetx130_g1350, fboffsety130_g1350);
			// Flipbook UV
			half2 fbuv130_g1350 = appendResult124_g1350 * fbtiling130_g1350 + fboffset130_g1350;
			// *** END Flipbook UV Animation vars ***
			float3 tex2DNode132_g1350 = UnpackScaleNormal( tex2D( _TextureAtlasNormal, fbuv130_g1350 ), _IntensityScaleNormal1 );
			float2 temp_cast_3 = (( FlipBookTiling100_g1350 / _ScaleFBDetailsNormal )).xx;
			float2 uv_TexCoord105_g1350 = i.uv_texcoord * temp_cast_3 + _OffsetFBDetailsNormal;
			float cos111_g1350 = cos( _FBDetailsNormal );
			float sin111_g1350 = sin( _FBDetailsNormal );
			float2 rotator111_g1350 = mul( uv_TexCoord105_g1350 - float2( 0.5,0.5 ) , float2x2( cos111_g1350 , -sin111_g1350 , sin111_g1350 , cos111_g1350 )) + float2( 0.5,0.5 );
			float2 break112_g1350 = rotator111_g1350;
			float2 appendResult123_g1350 = (float2(frac( break112_g1350.x ) , frac( break112_g1350.y )));
			float fbtotaltiles129_g1350 = XColumns119_g1350 * YRows118_g1350;
			float fbcolsoffset129_g1350 = 1.0f / XColumns119_g1350;
			float fbrowsoffset129_g1350 = 1.0f / YRows118_g1350;
			float fbspeed129_g1350 = _Time[ 1 ] * ZSpeed121_g1350;
			float2 fbtiling129_g1350 = float2(fbcolsoffset129_g1350, fbrowsoffset129_g1350);
			float fbcurrenttileindex129_g1350 = round( fmod( fbspeed129_g1350 + WStrartFrame122_g1350, fbtotaltiles129_g1350) );
			fbcurrenttileindex129_g1350 += ( fbcurrenttileindex129_g1350 < 0) ? fbtotaltiles129_g1350 : 0;
			float fblinearindextox129_g1350 = round ( fmod ( fbcurrenttileindex129_g1350, XColumns119_g1350 ) );
			float fboffsetx129_g1350 = fblinearindextox129_g1350 * fbcolsoffset129_g1350;
			float fblinearindextoy129_g1350 = round( fmod( ( fbcurrenttileindex129_g1350 - fblinearindextox129_g1350 ) / XColumns119_g1350, YRows118_g1350 ) );
			fblinearindextoy129_g1350 = (int)(YRows118_g1350-1) - fblinearindextoy129_g1350;
			float fboffsety129_g1350 = fblinearindextoy129_g1350 * fbrowsoffset129_g1350;
			float2 fboffset129_g1350 = float2(fboffsetx129_g1350, fboffsety129_g1350);
			half2 fbuv129_g1350 = appendResult123_g1350 * fbtiling129_g1350 + fboffset129_g1350;
			float3 RainDotsNormal976 = (( _DuplicateTextureAtlasNormal )?( BlendNormals( tex2DNode132_g1350 , UnpackScaleNormal( tex2D( _TextureAtlasNormal, fbuv129_g1350 ), _IntensityScaleNormal2 ) ) ):( tex2DNode132_g1350 ));
			float VertexA117 = break106.a;
			float temp_output_21_0_g1385 = VertexA117;
			float lerpResult50_g1385 = lerp( _L3BlendAmount , ( _L3BlendAmount - 2.0 ) , VertexG115);
			float VertexB116 = break106.b;
			float lerpResult55_g1385 = lerp( lerpResult50_g1385 , -1.0 , VertexB116);
			float Layer1Heightmap510 = tex2DNode3_g1057.b;
			float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
			float temp_output_817_0 = ( lerpResult876 * ( 1.0 - VertexB116 ) );
			float clampResult11_g1385 = clamp( ( lerpResult55_g1385 + (( 1.0 + _L3BlendContrast ) + (temp_output_817_0 - 0.0) * (-_L3BlendContrast - ( 1.0 + _L3BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1385 = clampResult11_g1385;
			float blendOpDest18_g1385 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1385 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1385 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1385 * blendOpDest18_g1385 ) )) ):( clampResult11_g1385 ));
			float blendOpDest31_g1385 = temp_output_21_0_g1385;
			float temp_output_929_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1385 + blendOpDest31_g1385 ) )) ):( temp_output_21_0_g1385 ));
			float VertexAHeightmap799 = temp_output_929_0;
			float WetOpacity768 = _L3BlendOpacity;
			float3 lerpResult128 = lerp( lerpResult133 , BlendNormals( staticSwitch56_g1400 , RainDotsNormal976 ) , ( VertexAHeightmap799 * WetOpacity768 ));
			float3 Normal129 = lerpResult128;
			o.Normal = Normal129;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 break26_g1394 = float4( uv_MainTex, 0.0 , 0.0 ).xy;
			float2 appendResult14_g1394 = (float2(( break26_g1394.x * L0GlobalTilingX150 ) , ( break26_g1394.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1394 = (float2(( break26_g1394.x + L0GlobalOffsetX151 ) , ( break26_g1394.y + L0GlobalOffsetY148 )));
			float4 tex2DNode7_g1393 = tex2D( _MainTex, ( ( appendResult14_g1394 + appendResult13_g1394 ) + Layer0Parallax215 ) );
			float clampResult27_g1393 = clamp( _Saturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1393 = ( _Color * tex2DNode7_g1393 ).rgb;
			float desaturateDot29_g1393 = dot( desaturateInitialColor29_g1393, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1393 = lerp( desaturateInitialColor29_g1393, desaturateDot29_g1393.xxx, -clampResult27_g1393 );
			float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1393 , 0.0 ));
			float2 uv_BaseColorL1 = i.uv_texcoord * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
			float2 break26_g1392 = uv_BaseColorL1;
			float2 appendResult14_g1392 = (float2(( break26_g1392.x * L1GlobalTilingX234 ) , ( break26_g1392.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1392 = (float2(( break26_g1392.x + L1GlobalOffsetX236 ) , ( break26_g1392.y + L1GlobalOffsetY237 )));
			float4 tex2DNode7_g1391 = tex2D( _BaseColorL1, ( ( appendResult14_g1392 + appendResult13_g1392 ) + Layer1Parallax247 ) );
			float clampResult27_g1391 = clamp( _SaturationL1 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1391 = ( _ColorL1 * tex2DNode7_g1391 ).rgb;
			float desaturateDot29_g1391 = dot( desaturateInitialColor29_g1391, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1391 = lerp( desaturateInitialColor29_g1391, desaturateDot29_g1391.xxx, -clampResult27_g1391 );
			float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1391 , 0.0 ));
			float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
			float4 temp_cast_10 = (1.0).xxxx;
			float2 uv_WetTex = i.uv_texcoord * _WetTex_ST.xy + _WetTex_ST.zw;
			float2 temp_cast_12 = (_Distortion).xx;
			float4 tex2DNode44_g1409 = tex2D( _WetTex, ( uv_WetTex + ( RainDotsNormal976.xy * temp_cast_12 ) ) );
			float clampResult27_g1409 = clamp( _DetailSaturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1409 = tex2DNode44_g1409.rgb;
			float desaturateDot29_g1409 = dot( desaturateInitialColor29_g1409, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1409 = lerp( desaturateInitialColor29_g1409, desaturateDot29_g1409.xxx, -clampResult27_g1409 );
			#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_10;
			#elif defined(_WETBASECOLOR_WETMAP)
				float4 staticSwitch767 = CalculateContrast(_DetailBrightness,float4( desaturateVar29_g1409 , 0.0 ));
			#elif defined(_WETBASECOLOR_BASELAYER)
				float4 staticSwitch767 = Layer0BaseColor179;
			#elif defined(_WETBASECOLOR_LAYER1)
				float4 staticSwitch767 = Layer1BaseColor261;
			#else
				float4 staticSwitch767 = Layer0BaseColor179;
			#endif
			float4 Layer3BaseColor786 = ( _ColorWet * staticSwitch767 );
			float4 lerpResult101 = lerp( lerpResult99 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
			float4 BaseColor121 = lerpResult101;
			float4 temp_cast_15 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1412 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_15 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VisHeightmap579 = temp_output_8_0_g1412;
			float VertexR114 = break106.r;
			float4 temp_cast_17 = (Layer1Heightmap510).xxxx;
			float4 temp_output_8_0_g1413 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_17 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer1VisHeightmap612 = temp_output_8_0_g1413;
			float4 temp_cast_20 = (1.0).xxxx;
			float4 temp_output_10_0_g1414 = ( temp_cast_20 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
			float4 Layer3VisHeightmap868 = temp_output_10_0_g1414;
			o.Albedo = (( _L3VisualizeHeightmap1 )?( Layer3VisHeightmap868 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) )).xyz;
			float4 texCUBENode27_g1411 = texCUBElod( _Cubemap, float4( normalize( WorldReflectionVector( i , Normal129 ) ), _BlurReflection) );
			float clampResult39_g1411 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
			float4 temp_cast_22 = (1.0).xxxx;
			float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1411 * ( texCUBENode27_g1411.a * clampResult39_g1411 ) * _ColorCubemap1 ) * temp_cast_22 ) , VertexA117);
			float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
			o.Emission = Cubemap742.rgb;
			float Layer0Metallic211 = ( tex2DNode3_g1055.r * _Metallic );
			float Layer1Metallic263 = ( tex2DNode3_g1057.r * _MetallicL1 );
			float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
			float CubemapMetalness750 = _Metalness;
			float lerpResult293 = lerp( lerpResult289 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Metallic296 = lerpResult293;
			o.Metallic = Metallic296;
			float temp_output_1_0_g1055 = ( tex2DNode3_g1055.a * _Glossiness );
			float2 temp_cast_25 = (_SplashSpeed).xx;
			float time58_g1410 = ( 1.0 * 0.001 );
			float2 coords58_g1410 = i.uv_texcoord * _Tiling;
			float2 id58_g1410 = 0;
			float2 uv58_g1410 = 0;
			float fade58_g1410 = 0.5;
			float voroi58_g1410 = 0;
			float rest58_g1410 = 0;
			for( int it58_g1410 = 0; it58_g1410 <2; it58_g1410++ ){
			voroi58_g1410 += fade58_g1410 * voronoi58_g1410( coords58_g1410, time58_g1410, id58_g1410, uv58_g1410, 0 );
			rest58_g1410 += fade58_g1410;
			coords58_g1410 *= 2;
			fade58_g1410 *= 0.5;
			}//Voronoi58_g1410
			voroi58_g1410 /= rest58_g1410;
			float2 myVarName60_g1410 = id58_g1410;
			float2 panner63_g1410 = ( 1.0 * _Time.y * temp_cast_25 + ( step( voroi58_g1410 , 0.1 ) * myVarName60_g1410 ));
			float RainDotsRoughness970 = ( saturate( ( tex2D( _GradientTex, panner63_g1410 ).g * step( voroi58_g1410 , (0.0 + (_Size - 0.0) * (0.05 - 0.0) / (1.0 - 0.0)) ) ) ) * _Intensity );
			float Layer0Smoothness210 = ( ( temp_output_1_0_g1055 * ( 1.0 - RainDotsRoughness970 ) ) + RainDotsRoughness970 );
			float temp_output_1_0_g1057 = ( tex2DNode3_g1057.a * _GlossinessL1 );
			float Layer1Smoothness264 = ( ( temp_output_1_0_g1057 * ( 1.0 - RainDotsRoughness970 ) ) + RainDotsRoughness970 );
			float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
			float CubemapSkyIntensity741 = _SmoothnessWet;
			float lerpResult305 = lerp( lerpResult301 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Smoothness309 = lerpResult305;
			o.Smoothness = Smoothness309;
			float blendOpSrc34_g1055 = tex2DNode3_g1055.g;
			float blendOpDest34_g1055 = ( 1.0 - _AoIntensity );
			float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1055 ) * ( 1.0 - blendOpDest34_g1055 ) ) ));
			float blendOpSrc34_g1057 = tex2DNode3_g1057.g;
			float blendOpDest34_g1057 = ( 1.0 - _AoIntensityL1 );
			float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1057 ) * ( 1.0 - blendOpDest34_g1057 ) ) ));
			float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
			float WetAo935 = tex2DNode44_g1409.a;
			#if defined(_WETBASECOLOR_COLOR)
				float staticSwitch931 = 1.0;
			#elif defined(_WETBASECOLOR_WETMAP)
				float staticSwitch931 = WetAo935;
			#elif defined(_WETBASECOLOR_BASELAYER)
				float staticSwitch931 = Layer0Ao214;
			#elif defined(_WETBASECOLOR_LAYER1)
				float staticSwitch931 = Layer1Ao262;
			#else
				float staticSwitch931 = Layer0Ao214;
			#endif
			float AoWet940 = _AoWet;
			float blendOpSrc944 = staticSwitch931;
			float blendOpDest944 = ( 1.0 - AoWet940 );
			float lerpResult316 = lerp( lerpResult312 , ( saturate( ( 1.0 - ( 1.0 - blendOpSrc944 ) * ( 1.0 - blendOpDest944 ) ) )) , ( VertexAHeightmap799 * WetOpacity768 ));
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