Shader "Ciconia Studio/CS_Polybrush/Builtin/Pro/Basic"
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
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
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L3UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L3ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L3BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L3BlendAmount("Amount", Float) = 1
		_L3BlendContrast("Contrast", Float) = 3.5
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGINCLUDE
		#include "UnityCG.cginc"
		#include "UnityStandardUtils.cginc"
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
		};

		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXY;
		uniform sampler2D _MetallicGlossMapMAHS;
		uniform float4 _MetallicGlossMapMAHS_ST;
		uniform float _Parallax;
		uniform float _BumpScale;
		uniform sampler2D _BumpMapL1;
		uniform float4 _BumpMapL1_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXYL1;
		uniform sampler2D _MetallicGlossMapMAHSL1;
		uniform float4 _MetallicGlossMapMAHSL1_ST;
		uniform float _ParallaxL1;
		uniform float _BumpScaleL1;
		uniform float _L1UseHeightmapDepth1;
		uniform float _L1ConstrainbyPaintedMask;
		uniform float _L1BlendAmount;
		uniform float _L1BlendContrast;
		uniform float _L1BlendOpacity;
		uniform sampler2D _BumpMapL2;
		uniform float4 _BumpMapL2_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXYL2;
		uniform sampler2D _MetallicGlossMapMAHSL2;
		uniform float4 _MetallicGlossMapMAHSL2_ST;
		uniform float _ParallaxL2;
		uniform float _BumpScaleL2;
		uniform float _L2UseHeightmapDepth1;
		uniform float _L2ConstrainbyPaintedMask;
		uniform float _L2BlendAmount;
		uniform float _L2BlendContrast;
		uniform float _L2BlendOpacity;
		uniform float _L3UseHeightmapDepth1;
		uniform float _L3ConstrainbyPaintedMask;
		uniform float _L3BlendAmount;
		uniform float _L3BlendContrast;
		uniform float _L3BlendOpacity;
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


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 break26_g1266 = uv_BumpMap;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1266 = (float2(( break26_g1266.x * L0GlobalTilingX150 ) , ( break26_g1266.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1266 = (float2(( break26_g1266.x + L0GlobalOffsetX151 ) , ( break26_g1266.y + L0GlobalOffsetY148 )));
			float2 uv_MetallicGlossMapMAHS = i.uv_texcoord * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1050 = uv_MetallicGlossMapMAHS;
			float2 appendResult14_g1050 = (float2(( break26_g1050.x * L0GlobalTilingX150 ) , ( break26_g1050.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1050 = (float2(( break26_g1050.x + L0GlobalOffsetX151 ) , ( break26_g1050.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1049 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1050 + appendResult13_g1050 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1049 = ParallaxOffset( tex2DNode3_g1049.b , _Parallax , i.viewDir );
			float2 switchResult37_g1049 = (((i.ASEVFace>0)?(paralaxOffset38_g1049):(0.0)));
			float2 Layer0Parallax215 = switchResult37_g1049;
			float3 tex2DNode4_g1265 = UnpackScaleNormal( tex2D( _BumpMap, ( ( appendResult14_g1266 + appendResult13_g1266 ) + Layer0Parallax215 ) ), _BumpScale );
			float3 Layer0Normal193 = tex2DNode4_g1265;
			float2 uv_BumpMapL1 = i.uv_texcoord * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
			float2 break26_g1268 = uv_BumpMapL1;
			float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
			float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
			float2 appendResult14_g1268 = (float2(( break26_g1268.x * L1GlobalTilingX234 ) , ( break26_g1268.y * L1GlobalTilingY235 )));
			float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
			float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
			float2 appendResult13_g1268 = (float2(( break26_g1268.x + L1GlobalOffsetX236 ) , ( break26_g1268.y + L1GlobalOffsetY237 )));
			float2 uv_MetallicGlossMapMAHSL1 = i.uv_texcoord * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
			float2 break26_g1053 = uv_MetallicGlossMapMAHSL1;
			float2 appendResult14_g1053 = (float2(( break26_g1053.x * L1GlobalTilingX234 ) , ( break26_g1053.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1053 = (float2(( break26_g1053.x + L1GlobalOffsetX236 ) , ( break26_g1053.y + L1GlobalOffsetY237 )));
			float4 tex2DNode3_g1052 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1053 + appendResult13_g1053 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1052 = ParallaxOffset( tex2DNode3_g1052.b , _ParallaxL1 , i.viewDir );
			float2 switchResult37_g1052 = (((i.ASEVFace>0)?(paralaxOffset38_g1052):(0.0)));
			float2 Layer1Parallax247 = switchResult37_g1052;
			float3 tex2DNode4_g1267 = UnpackScaleNormal( tex2D( _BumpMapL1, ( ( appendResult14_g1268 + appendResult13_g1268 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
			float3 Layer1Normal260 = tex2DNode4_g1267;
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
			float2 break26_g1055 = uv_MetallicGlossMapMAHSL2;
			float2 appendResult14_g1055 = (float2(( break26_g1055.x * L2GlobalTilingX484 ) , ( break26_g1055.y * L2GlobalTilingY486 )));
			float2 appendResult13_g1055 = (float2(( break26_g1055.x + L2GlobalOffsetX483 ) , ( break26_g1055.y + L2GlobalOffsetY485 )));
			float4 tex2DNode3_g1054 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1055 + appendResult13_g1055 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1054 = ParallaxOffset( tex2DNode3_g1054.b , _ParallaxL2 , i.viewDir );
			float2 switchResult37_g1054 = (((i.ASEVFace>0)?(paralaxOffset38_g1054):(0.0)));
			float2 Layer2Parallax462 = switchResult37_g1054;
			float3 tex2DNode4_g1278 = UnpackScaleNormal( tex2D( _BumpMapL2, ( ( appendResult14_g1279 + appendResult13_g1279 ) + Layer2Parallax462 ) ), _BumpScaleL2 );
			float3 Layer2Normal477 = tex2DNode4_g1278;
			float VertexB116 = break106.b;
			float temp_output_21_0_g1280 = VertexB116;
			float lerpResult47_g1280 = lerp( _L2BlendAmount , ( _L2BlendAmount - _L2BlendAmount ) , VertexG115);
			float Layer1Heightmap510 = tex2DNode3_g1052.b;
			float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
			float clampResult11_g1280 = clamp( ( lerpResult47_g1280 + (( 1.0 + _L2BlendContrast ) + (lerpResult830 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1280 = clampResult11_g1280;
			float blendOpDest18_g1280 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1280 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1280 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1280 * blendOpDest18_g1280 ) )) ):( clampResult11_g1280 ));
			float blendOpDest31_g1280 = temp_output_21_0_g1280;
			float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1280 + blendOpDest31_g1280 ) )) ):( temp_output_21_0_g1280 )) * _L2BlendOpacity );
			float3 lerpResult127 = lerp( lerpResult133 , Layer2Normal477 , VertexBHeightmap652);
			float VertexA117 = break106.a;
			float temp_output_21_0_g1281 = VertexA117;
			float lerpResult50_g1281 = lerp( _L3BlendAmount , ( _L3BlendAmount - 2.0 ) , VertexG115);
			float lerpResult55_g1281 = lerp( lerpResult50_g1281 , -1.0 , VertexB116);
			float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
			float Layer2Heightmap511 = tex2DNode3_g1054.b;
			float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
			float clampResult11_g1281 = clamp( ( lerpResult55_g1281 + (( 1.0 + _L3BlendContrast ) + (lerpResult819 - 0.0) * (-_L3BlendContrast - ( 1.0 + _L3BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1281 = clampResult11_g1281;
			float blendOpDest18_g1281 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1281 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1281 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1281 * blendOpDest18_g1281 ) )) ):( clampResult11_g1281 ));
			float blendOpDest31_g1281 = temp_output_21_0_g1281;
			float temp_output_929_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1281 + blendOpDest31_g1281 ) )) ):( temp_output_21_0_g1281 ));
			float VertexAHeightmap799 = temp_output_929_0;
			float WetOpacity768 = _L3BlendOpacity;
			float3 lerpResult128 = lerp( lerpResult127 , float3(0,0,1) , ( VertexAHeightmap799 * WetOpacity768 ));
			float3 Normal129 = lerpResult128;
			o.Normal = Normal129;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 break26_g1285 = float4( uv_MainTex, 0.0 , 0.0 ).xy;
			float2 appendResult14_g1285 = (float2(( break26_g1285.x * L0GlobalTilingX150 ) , ( break26_g1285.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1285 = (float2(( break26_g1285.x + L0GlobalOffsetX151 ) , ( break26_g1285.y + L0GlobalOffsetY148 )));
			float4 tex2DNode7_g1284 = tex2D( _MainTex, ( ( appendResult14_g1285 + appendResult13_g1285 ) + Layer0Parallax215 ) );
			float clampResult27_g1284 = clamp( _Saturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1284 = ( _Color * tex2DNode7_g1284 ).rgb;
			float desaturateDot29_g1284 = dot( desaturateInitialColor29_g1284, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1284 = lerp( desaturateInitialColor29_g1284, desaturateDot29_g1284.xxx, -clampResult27_g1284 );
			float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1284 , 0.0 ));
			float2 uv_BaseColorL1 = i.uv_texcoord * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
			float2 break26_g1283 = uv_BaseColorL1;
			float2 appendResult14_g1283 = (float2(( break26_g1283.x * L1GlobalTilingX234 ) , ( break26_g1283.y * L1GlobalTilingY235 )));
			float2 appendResult13_g1283 = (float2(( break26_g1283.x + L1GlobalOffsetX236 ) , ( break26_g1283.y + L1GlobalOffsetY237 )));
			float4 tex2DNode7_g1282 = tex2D( _BaseColorL1, ( ( appendResult14_g1283 + appendResult13_g1283 ) + Layer1Parallax247 ) );
			float clampResult27_g1282 = clamp( _SaturationL1 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1282 = ( _ColorL1 * tex2DNode7_g1282 ).rgb;
			float desaturateDot29_g1282 = dot( desaturateInitialColor29_g1282, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1282 = lerp( desaturateInitialColor29_g1282, desaturateDot29_g1282.xxx, -clampResult27_g1282 );
			float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1282 , 0.0 ));
			float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
			float2 uv_BaseColorL2 = i.uv_texcoord * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
			float2 break26_g1287 = uv_BaseColorL2;
			float2 appendResult14_g1287 = (float2(( break26_g1287.x * L2GlobalTilingX484 ) , ( break26_g1287.y * L2GlobalTilingY486 )));
			float2 appendResult13_g1287 = (float2(( break26_g1287.x + L2GlobalOffsetX483 ) , ( break26_g1287.y + L2GlobalOffsetY485 )));
			float4 tex2DNode7_g1286 = tex2D( _BaseColorL2, ( ( appendResult14_g1287 + appendResult13_g1287 ) + Layer2Parallax462 ) );
			float clampResult27_g1286 = clamp( _SaturationL2 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1286 = ( _ColorL2 * tex2DNode7_g1286 ).rgb;
			float desaturateDot29_g1286 = dot( desaturateInitialColor29_g1286, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1286 = lerp( desaturateInitialColor29_g1286, desaturateDot29_g1286.xxx, -clampResult27_g1286 );
			float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1286 , 0.0 ));
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
			float4 temp_output_122_0 = BaseColor121;
			o.Albedo = temp_output_122_0.rgb;
			float Layer0Metallic211 = ( tex2DNode3_g1049.r * _Metallic );
			float Layer1Metallic263 = ( tex2DNode3_g1052.r * _MetallicL1 );
			float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
			float Layer2Metallic478 = ( tex2DNode3_g1054.r * _MetallicL2 );
			float lerpResult286 = lerp( lerpResult289 , Layer2Metallic478 , VertexBHeightmap652);
			float CubemapMetalness750 = _Metalness;
			float lerpResult293 = lerp( lerpResult286 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Metallic296 = lerpResult293;
			o.Metallic = Metallic296;
			float temp_output_1_0_g1049 = ( tex2DNode3_g1049.a * _Glossiness );
			float Layer0Smoothness210 = temp_output_1_0_g1049;
			float temp_output_1_0_g1052 = ( tex2DNode3_g1052.a * _GlossinessL1 );
			float Layer1Smoothness264 = temp_output_1_0_g1052;
			float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
			float temp_output_1_0_g1054 = ( tex2DNode3_g1054.a * _GlossinessL2 );
			float Layer2Smoothness480 = temp_output_1_0_g1054;
			float lerpResult299 = lerp( lerpResult301 , Layer2Smoothness480 , VertexBHeightmap652);
			float CubemapSkyIntensity741 = _SmoothnessWet;
			float lerpResult305 = lerp( lerpResult299 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
			float Smoothness309 = lerpResult305;
			o.Smoothness = Smoothness309;
			float blendOpSrc34_g1049 = tex2DNode3_g1049.g;
			float blendOpDest34_g1049 = ( 1.0 - _AoIntensity );
			float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1049 ) * ( 1.0 - blendOpDest34_g1049 ) ) ));
			float blendOpSrc34_g1052 = tex2DNode3_g1052.g;
			float blendOpDest34_g1052 = ( 1.0 - _AoIntensityL1 );
			float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1052 ) * ( 1.0 - blendOpDest34_g1052 ) ) ));
			float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
			float blendOpSrc34_g1054 = tex2DNode3_g1054.g;
			float blendOpDest34_g1054 = ( 1.0 - _AoIntensityL2 );
			float Layer2Ao479 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1054 ) * ( 1.0 - blendOpDest34_g1054 ) ) ));
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
		#pragma surface surf Standard keepalpha fullforwardshadows 

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