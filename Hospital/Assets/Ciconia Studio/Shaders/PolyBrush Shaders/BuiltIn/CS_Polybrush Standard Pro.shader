Shader "Ciconia Studio/CS_Polybrush/Builtin/Pro/Standard"
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
		[Space(35)][Header(Layer2 (B)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXYL2("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_ColorL2("Color", Color) = (1,1,1,1)
		_BaseColorL2("Base Color", 2D) = "white" {}
		_SaturationL2("Saturation", Float) = 0
		_BrightnessL2("Brightness", Range( 1 , 8)) = 1
		[Space(35)]_BumpMapL2("Normal Map", 2D) = "bump" {}
		_BumpScaleL2("Normal Intensity", Float) = 0.3
		[Space(35)]_MetallicGlossMapMAHSL2("Mask Map  -->M(R) - Ao(G) - H(B) - S(A)", 2D) = "white" {}
		_MetallicL2("Metallic", Range( 0 , 2)) = 0
		_GlossinessL2("Smoothness", Range( 0 , 2)) = 0.5
		[Space(15)]_ParallaxL2("Height Scale", Range( -0.1 , 0.1)) = 0
		_AoIntensityL2("Ao Intensity", Range( 0 , 2)) = 0
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L2VisualizeHeightmap("Visualize Heightmap", Float) = 0
		_L2HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L2Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L2Displacement("Displacement", Float) = 0
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L2UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L2ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L2BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L2BlendAmount("Amount", Float) = 1
		_L2BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Wet Properties (A)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)][KeywordEnum(Color,Wetmap,BaseLayer,Layer1,Layer2)] _WetBaseColor("Base Color", Float) = 2
		[Space(10)]_ColorWet("Color", Color) = (0.5,0.5,0.5,1)
		_WetTex("Wet map  -->Ao(A)", 2D) = "gray" {}
		[Space(10)]_Metalness("Metalness", Range( 0 , 1)) = 0.2
		_SmoothnessWet("Smoothness", Range( 0 , 2)) = 1
		[Space(10)]_AoWet("Ao Intensity", Range( 0 , 1)) = 0
		[Space(15)][Header(Additional Reflection)][Space(10)]_ColorCubemap1("Color ", Color) = (1,1,1,1)
		[HDR]_Cubemap("Cubemap", CUBE) = "black" {}
		[Space(10)]_ReflectionIntensity("Intensity", Range( 0 , 10)) = 0.2
		_BlurReflection("Blur", Range( 0 , 7)) = 0.5
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
		#include "Tessellation.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER _WETBASECOLOR_LAYER1 _WETBASECOLOR_LAYER2
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
		uniform float _L2Displacement;
		uniform float _L2Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHSL2;
		uniform float4 _MetallicGlossMapMAHSL2_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXYL2;
		uniform float _L2HeightmapSpread;
		uniform float _L2BlendOpacity;
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
		uniform sampler2D _BumpMapL2;
		uniform float4 _BumpMapL2_ST;
		uniform float _ParallaxL2;
		uniform float _BumpScaleL2;
		uniform float _L2UseHeightmapDepth1;
		uniform float _L2ConstrainbyPaintedMask;
		uniform float _L2BlendAmount;
		uniform float _L2BlendContrast;
		uniform float _L3UseHeightmapDepth1;
		uniform float _L3ConstrainbyPaintedMask;
		uniform float _L3BlendAmount;
		uniform float _L3BlendContrast;
		uniform float _L3VisualizeHeightmap1;
		uniform float _L2VisualizeHeightmap;
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
		uniform float _BrightnessL2;
		uniform float4 _ColorL2;
		uniform sampler2D _BaseColorL2;
		uniform float4 _BaseColorL2_ST;
		uniform float _SaturationL2;
		uniform float4 _ColorWet;
		uniform sampler2D _WetTex;
		uniform float4 _WetTex_ST;
		uniform samplerCUBE _Cubemap;
		uniform float _BlurReflection;
		uniform float _ReflectionIntensity;
		uniform float4 _ColorCubemap1;
		uniform float _Metallic;
		uniform float _MetallicL1;
		uniform float _MetallicL2;
		uniform float _Metalness;
		uniform float _Glossiness;
		uniform float _GlossinessL1;
		uniform float _GlossinessL2;
		uniform float _SmoothnessWet;
		uniform float _AoIntensity;
		uniform float _AoIntensityL1;
		uniform float _AoIntensityL2;
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
			float4 temp_cast_13 = (0.5).xxxx;
			float clampResult9_g1285 = clamp( _Tessellation , 1.0 , 64.0 );
			return (( _EnableTessellation )?( UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _DistanceMin,_DistanceMax,clampResult9_g1285) ):( temp_cast_13 ));
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float3 ase_vertexNormal = v.normal.xyz;
			float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1050 = uv_MetallicGlossMapMAHS;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1050 = (float2(( break26_g1050.x * L0GlobalTilingX150 ) , ( break26_g1050.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1050 = (float2(( break26_g1050.x + L0GlobalOffsetX151 ) , ( break26_g1050.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1049 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1050 + appendResult13_g1050 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer0Heightmap336 = tex2DNode3_g1049.b;
			float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1281 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VertexOffset605 = ( float4( ( ase_vertexNormal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1281 );
			float2 uv_MetallicGlossMapMAHSL1 = v.texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1052 = uv_MetallicGlossMapMAHSL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1052 = (float2(( break26_g1052.x * L1GlobalTilingX234 ) , ( break26_g1052.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1052 = (float2(( break26_g1052.x + L1GlobalOffsetX236 ) , ( break26_g1052.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1051 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1052 + appendResult13_g1052 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer1Heightmap510 = tex2DNode3_g1051.b;
			float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
			float4 temp_output_8_0_g1280 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer1VertexOffset613 = ( float4( ( ase_vertexNormal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1280 );
			float4 break106 = v.color;
			float VertexG115 = break106.g;
			float L1Opacity950 = _L1BlendOpacity;
			float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
			float2 uv_MetallicGlossMapMAHSL2 = v.texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
			float2 break26_g1054 = uv_MetallicGlossMapMAHSL2;
			float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
			float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
			float2 appendResult14_g1054 = (float2(( break26_g1054.x * L2GlobalTilingX484 ) , ( break26_g1054.y * L2GlobalTilingY486 )));
			float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
			float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
			float2 appendResult13_g1054 = (float2(( break26_g1054.x + L2GlobalOffsetX483 ) , ( break26_g1054.y + L2GlobalOffsetY485 )));
			float4 tex2DNode3_g1053 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer2Heightmap511 = tex2DNode3_g1053.b;
			float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
			float4 temp_output_8_0_g1283 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer2VertexOffset637 = ( float4( ( ase_vertexNormal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1283 );
			float VertexB116 = break106.b;
			float L2Opacity948 = _L2BlendOpacity;
			float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity948 ));
			float4 temp_cast_11 = (1.0).xxxx;
			float4 temp_output_10_0_g1329 = ( temp_cast_11 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
			float4 Layer3VertexOffset869 = ( float4( ( ase_vertexNormal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1329 );
			float VertexA117 = break106.a;
			float WetOpacity768 = _L3BlendOpacity;
			float4 lerpResult905 = lerp( lerpResult642 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
			float4 VertexOffset621 = lerpResult905;
			v.vertex.xyz += VertexOffset621.xyz;
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 break26_g1263 = uv_BumpMap;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1263 = (float2(( break26_g1263.x * L0GlobalTilingX150 ) , ( break26_g1263.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1263 = (float2(( break26_g1263.x + L0GlobalOffsetX151 ) , ( break26_g1263.y + L0GlobalOffsetY148 )));
			float2 uv_MetallicGlossMapMAHS = i.uv_texcoord * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1050 = uv_MetallicGlossMapMAHS;
			float2 appendResult14_g1050 = (float2(( break26_g1050.x * L0GlobalTilingX150 ) , ( break26_g1050.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1050 = (float2(( break26_g1050.x + L0GlobalOffsetX151 ) , ( break26_g1050.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1049 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1050 + appendResult13_g1050 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1049 = ParallaxOffset( tex2DNode3_g1049.b , _Parallax , i.viewDir );
			float2 switchResult37_g1049 = (((i.ASEVFace>0)?(paralaxOffset38_g1049):(0.0)));
			float2 Layer0Parallax215 = switchResult37_g1049;
			float3 tex2DNode4_g1262 = UnpackScaleNormal( tex2D( _BumpMap, ( ( appendResult14_g1263 + appendResult13_g1263 ) + Layer0Parallax215 ) ), _BumpScale );
			float3 Layer0Normal193 = tex2DNode4_g1262;
			float2 uv_BumpMapL1 = i.uv_texcoord * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
			float2 break26_g1261 = uv_BumpMapL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1261 = (float2(( break26_g1261.x * L1GlobalTilingX234 ) , ( break26_g1261.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1261 = (float2(( break26_g1261.x + L1GlobalOffsetX236 ) , ( break26_g1261.y + L1GlobalOffsetY237 )));
			float2 uv_MetallicGlossMapMAHSL1 = i.uv_texcoord * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1052 = uv_MetallicGlossMapMAHSL1;
			float2 appendResult14_g1052 = (float2(( break26_g1052.x * L1GlobalTilingX234 ) , ( break26_g1052.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1052 = (float2(( break26_g1052.x + L1GlobalOffsetX236 ) , ( break26_g1052.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1051 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1052 + appendResult13_g1052 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1051 = ParallaxOffset( tex2DNode3_g1051.b , _ParallaxL1 , i.viewDir );
			float2 switchResult37_g1051 = (((i.ASEVFace>0)?(paralaxOffset38_g1051):(0.0)));
			float2 Layer1Parallax247 = switchResult37_g1051;
			float3 tex2DNode4_g1260 = UnpackScaleNormal( tex2D( _BumpMapL1, ( ( appendResult14_g1261 + appendResult13_g1261 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
			float3 Layer1Normal260 = tex2DNode4_g1260;
			float4 break106 = i.vertexColor;
			float VertexG115 = break106.g;
			float temp_output_21_0_g1264 = VertexG115;
			float Layer0Heightmap336 = tex2DNode3_g1049.b;
			float temp_output_10_0_g1264 = Layer0Heightmap336;
			float clampResult11_g1264 = clamp( ( _L1BlendAmount + (( 1.0 + _L1BlendContrast ) + (temp_output_10_0_g1264 - 0.0) * (-_L1BlendContrast - ( 1.0 + _L1BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1264 = clampResult11_g1264;
			float blendOpDest18_g1264 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1264 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1264 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1264 * blendOpDest18_g1264 ) )) ):( clampResult11_g1264 ));
			float blendOpDest31_g1264 = temp_output_21_0_g1264;
			float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1264 + blendOpDest31_g1264 ) )) ):( temp_output_21_0_g1264 )) * _L1BlendOpacity );
			float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
			float2 uv_BumpMapL2 = i.uv_texcoord * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
			float2 break26_g1279 = uv_BumpMapL2;
			float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
			float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
			float2 appendResult14_g1279 = (float2(( break26_g1279.x * L2GlobalTilingX484 ) , ( break26_g1279.y * L2GlobalTilingY486 )));
			float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
			float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
			float2 appendResult13_g1279 = (float2(( break26_g1279.x + L2GlobalOffsetX483 ) , ( break26_g1279.y + L2GlobalOffsetY485 )));
			float2 uv_MetallicGlossMapMAHSL2 = i.uv_texcoord * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
			float2 break26_g1054 = uv_MetallicGlossMapMAHSL2;
			float2 appendResult14_g1054 = (float2(( break26_g1054.x * L2GlobalTilingX484 ) , ( break26_g1054.y * L2GlobalTilingY486 )));
			float2 appendResult13_g1054 = (float2(( break26_g1054.x + L2GlobalOffsetX483 ) , ( break26_g1054.y + L2GlobalOffsetY485 )));
			float4 tex2DNode3_g1053 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1053 = ParallaxOffset( tex2DNode3_g1053.b , _ParallaxL2 , i.viewDir );
			float2 switchResult37_g1053 = (((i.ASEVFace>0)?(paralaxOffset38_g1053):(0.0)));
			float2 Layer2Parallax462 = switchResult37_g1053;
			float3 tex2DNode4_g1278 = UnpackScaleNormal( tex2D( _BumpMapL2, ( ( appendResult14_g1279 + appendResult13_g1279 ) + Layer2Parallax462 ) ), _BumpScaleL2 );
			float3 Layer2Normal477 = tex2DNode4_g1278;
			float VertexB116 = break106.b;
			float temp_output_21_0_g1277 = VertexB116;
			float lerpResult47_g1277 = lerp( _L2BlendAmount , ( _L2BlendAmount - _L2BlendAmount ) , VertexG115);
			float Layer1Heightmap510 = tex2DNode3_g1051.b;
			float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
			float clampResult11_g1277 = clamp( ( lerpResult47_g1277 + (( 1.0 + _L2BlendContrast ) + (lerpResult830 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1277 = clampResult11_g1277;
			float blendOpDest18_g1277 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1277 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1277 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1277 * blendOpDest18_g1277 ) )) ):( clampResult11_g1277 ));
			float blendOpDest31_g1277 = temp_output_21_0_g1277;
			float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1277 + blendOpDest31_g1277 ) )) ):( temp_output_21_0_g1277 )) * _L2BlendOpacity );
			float3 lerpResult127 = lerp( lerpResult133 , Layer2Normal477 , VertexBHeightmap652);
			float VertexA117 = break106.a;
			float temp_output_21_0_g1276 = VertexA117;
			float lerpResult50_g1276 = lerp( _L3BlendAmount , ( _L3BlendAmount - 2.0 ) , VertexG115);
			float lerpResult55_g1276 = lerp( lerpResult50_g1276 , -1.0 , VertexB116);
			float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
			float Layer2Heightmap511 = tex2DNode3_g1053.b;
			float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
			float clampResult11_g1276 = clamp( ( lerpResult55_g1276 + (( 1.0 + _L3BlendContrast ) + (lerpResult819 - 0.0) * (-_L3BlendContrast - ( 1.0 + _L3BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1276 = clampResult11_g1276;
			float blendOpDest18_g1276 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1276 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1276 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1276 * blendOpDest18_g1276 ) )) ):( clampResult11_g1276 ));
			float blendOpDest31_g1276 = temp_output_21_0_g1276;
			float temp_output_929_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1276 + blendOpDest31_g1276 ) )) ):( temp_output_21_0_g1276 ));
			float VertexAHeightmap799 = temp_output_929_0;
			float WetOpacity768 = _L3BlendOpacity;
			float3 lerpResult128 = lerp( lerpResult127 , float3(0,0,1) , ( VertexAHeightmap799 * WetOpacity768 ));
			float3 Normal129 = lerpResult128;
			o.Normal = Normal129;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 break26_g1273 = float4( uv_MainTex, 0.0 , 0.0 ).xy;
			float2 appendResult14_g1273 = (float2(( break26_g1273.x * L0GlobalTilingX150 ) , ( break26_g1273.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1273 = (float2(( break26_g1273.x + L0GlobalOffsetX151 ) , ( break26_g1273.y + L0GlobalOffsetY148 )));
			float4 tex2DNode7_g1272 = tex2D( _MainTex, ( ( appendResult14_g1273 + appendResult13_g1273 ) + Layer0Parallax215 ) );
			float clampResult27_g1272 = clamp( _Saturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1272 = ( _Color * tex2DNode7_g1272 ).rgb;
			float desaturateDot29_g1272 = dot( desaturateInitialColor29_g1272, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1272 = lerp( desaturateInitialColor29_g1272, desaturateDot29_g1272.xxx, -clampResult27_g1272 );
			float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1272 , 0.0 ));
			float2 uv_BaseColorL1 = i.uv_texcoord * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
			float2 break26_g1275 = uv_BaseColorL1;
			float2 appendResult14_g1275 = (float2(( break26_g1275.x * L1GlobalTilingX234 ) , ( break26_g1275.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1275 = (float2(( break26_g1275.x + L1GlobalOffsetX236 ) , ( break26_g1275.y + L1GlobalOffsetY237 )));
			float4 tex2DNode7_g1274 = tex2D( _BaseColorL1, ( ( appendResult14_g1275 + appendResult13_g1275 ) + Layer1Parallax247 ) );
			float clampResult27_g1274 = clamp( _SaturationL1 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1274 = ( _ColorL1 * tex2DNode7_g1274 ).rgb;
			float desaturateDot29_g1274 = dot( desaturateInitialColor29_g1274, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1274 = lerp( desaturateInitialColor29_g1274, desaturateDot29_g1274.xxx, -clampResult27_g1274 );
			float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1274 , 0.0 ));
			float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
			float2 uv_BaseColorL2 = i.uv_texcoord * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
			float2 break26_g1271 = uv_BaseColorL2;
			float2 appendResult14_g1271 = (float2(( break26_g1271.x * L2GlobalTilingX484 ) , ( break26_g1271.y * L2GlobalTilingY486 )));
			float2 appendResult13_g1271 = (float2(( break26_g1271.x + L2GlobalOffsetX483 ) , ( break26_g1271.y + L2GlobalOffsetY485 )));
			float4 tex2DNode7_g1270 = tex2D( _BaseColorL2, ( ( appendResult14_g1271 + appendResult13_g1271 ) + Layer2Parallax462 ) );
			float clampResult27_g1270 = clamp( _SaturationL2 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1270 = ( _ColorL2 * tex2DNode7_g1270 ).rgb;
			float desaturateDot29_g1270 = dot( desaturateInitialColor29_g1270, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1270 = lerp( desaturateInitialColor29_g1270, desaturateDot29_g1270.xxx, -clampResult27_g1270 );
			float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1270 , 0.0 ));
			float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
			float4 temp_cast_8 = (1.0).xxxx;
			float2 uv_WetTex = i.uv_texcoord * _WetTex_ST.xy + _WetTex_ST.zw;
			float4 tex2DNode727 = tex2D( _WetTex, uv_WetTex );
			#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_8;
			#elif defined(_WETBASECOLOR_WETMAP)
				float4 staticSwitch767 = tex2DNode727;
			#elif defined(_WETBASECOLOR_BASELAYER)
				float4 staticSwitch767 = Layer0BaseColor179;
			#elif defined(_WETBASECOLOR_LAYER1)
				float4 staticSwitch767 = Layer1BaseColor261;
			#elif defined(_WETBASECOLOR_LAYER2)
				float4 staticSwitch767 = Layer2BaseColor476;
			#else
				float4 staticSwitch767 = Layer0BaseColor179;
			#endif
			float4 Layer3BaseColor786 = ( _ColorWet * staticSwitch767 );
			float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
			float4 BaseColor121 = lerpResult101;
			float4 temp_cast_9 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1281 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VisHeightmap579 = temp_output_8_0_g1281;
			float VertexR114 = break106.r;
			float4 temp_cast_11 = (Layer1Heightmap510).xxxx;
			float4 temp_output_8_0_g1280 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_11 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer1VisHeightmap612 = temp_output_8_0_g1280;
			float4 temp_cast_13 = (Layer2Heightmap511).xxxx;
			float4 temp_output_8_0_g1283 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_13 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer2VisHeightmap638 = temp_output_8_0_g1283;
			float4 temp_cast_16 = (1.0).xxxx;
			float4 temp_output_10_0_g1329 = ( temp_cast_16 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
			float4 Layer3VisHeightmap868 = temp_output_10_0_g1329;
			o.Albedo = (( _L3VisualizeHeightmap1 )?( Layer3VisHeightmap868 ):( (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) )) )).xyz;
			float4 texCUBENode27_g1282 = texCUBElod( _Cubemap, float4( normalize( WorldReflectionVector( i , Normal129 ) ), _BlurReflection) );
			float clampResult39_g1282 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
			float4 temp_cast_18 = (1.0).xxxx;
			float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1282 * ( texCUBENode27_g1282.a * clampResult39_g1282 ) * _ColorCubemap1 ) * temp_cast_18 ) , VertexA117);
			float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
			o.Emission = Cubemap742.rgb;
			float Layer0Metallic211 = ( tex2DNode3_g1049.r * _Metallic );
			float Layer1Metallic263 = ( tex2DNode3_g1051.r * _MetallicL1 );
			float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
			float Layer2Metallic478 = ( tex2DNode3_g1053.r * _MetallicL2 );
			float lerpResult286 = lerp( lerpResult289 , Layer2Metallic478 , VertexBHeightmap652);
			float CubemapMetalness750 = _Metalness;
			float lerpResult293 = lerp( lerpResult286 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Metallic296 = lerpResult293;
			o.Metallic = Metallic296;
			float temp_output_1_0_g1049 = ( tex2DNode3_g1049.a * _Glossiness );
			float Layer0Smoothness210 = temp_output_1_0_g1049;
			float temp_output_1_0_g1051 = ( tex2DNode3_g1051.a * _GlossinessL1 );
			float Layer1Smoothness264 = temp_output_1_0_g1051;
			float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
			float temp_output_1_0_g1053 = ( tex2DNode3_g1053.a * _GlossinessL2 );
			float Layer2Smoothness480 = temp_output_1_0_g1053;
			float lerpResult299 = lerp( lerpResult301 , Layer2Smoothness480 , VertexBHeightmap652);
			float CubemapSkyIntensity741 = _SmoothnessWet;
			float lerpResult305 = lerp( lerpResult299 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Smoothness309 = lerpResult305;
			o.Smoothness = Smoothness309;
			float blendOpSrc34_g1049 = tex2DNode3_g1049.g;
			float blendOpDest34_g1049 = ( 1.0 - _AoIntensity );
			float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1049 ) * ( 1.0 - blendOpDest34_g1049 ) ) ));
			float blendOpSrc34_g1051 = tex2DNode3_g1051.g;
			float blendOpDest34_g1051 = ( 1.0 - _AoIntensityL1 );
			float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1051 ) * ( 1.0 - blendOpDest34_g1051 ) ) ));
			float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
			float blendOpSrc34_g1053 = tex2DNode3_g1053.g;
			float blendOpDest34_g1053 = ( 1.0 - _AoIntensityL2 );
			float Layer2Ao479 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1053 ) * ( 1.0 - blendOpDest34_g1053 ) ) ));
			float lerpResult311 = lerp( lerpResult312 , Layer2Ao479 , VertexBHeightmap652);
			float WetAo935 = tex2DNode727.a;
			#if defined(_WETBASECOLOR_COLOR)
				float staticSwitch931 = 1.0;
			#elif defined(_WETBASECOLOR_WETMAP)
				float staticSwitch931 = WetAo935;
			#elif defined(_WETBASECOLOR_BASELAYER)
				float staticSwitch931 = Layer0Ao214;
			#elif defined(_WETBASECOLOR_LAYER1)
				float staticSwitch931 = Layer1Ao262;
			#elif defined(_WETBASECOLOR_LAYER2)
				float staticSwitch931 = Layer2Ao479;
			#else
				float staticSwitch931 = Layer0Ao214;
			#endif
			float AoWet940 = _AoWet;
			float blendOpSrc944 = staticSwitch931;
			float blendOpDest944 = ( 1.0 - AoWet940 );
			float lerpResult316 = lerp( lerpResult311 , ( saturate( ( 1.0 - ( 1.0 - blendOpSrc944 ) * ( 1.0 - blendOpDest944 ) ) )) , ( VertexAHeightmap799 * WetOpacity768 ));
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