Shader "Ciconia Studio/CS_Polybrush/Builtin/Lite/Snow"
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
		[Space(35)][Header(Layer2 (B) Snow Properties_____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________ )][Space(15)]_GlobalXYTilingXYZWOffsetXYSnow("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_ColorL2("Color", Color) = (1,1,1,1)
		_BaseColorL2("Base Color", 2D) = "white" {}
		_SaturationL2("Saturation", Float) = 0
		_BrightnessL2("Brightness", Range( 1 , 8)) = 1
		[Space(35)]_BumpMapL2("Normal Map", 2D) = "bump" {}
		_BumpScaleL2("Normal Intensity", Float) = 0.3
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[Space(35)]_MetallicGlossMapMAHSL2("Mask Map  -->M(R) - Ao(G) - H(B) - S(A)", 2D) = "white" {}
		_MetallicL2("Metallic", Range( 0 , 2)) = 0
		_GlossinessL2("Smoothness", Range( 0 , 2)) = 0.5
		[Space(15)]_ParallaxL2("Height Scale", Range( -0.1 , 0.1)) = 0
		_AoIntensityL2("Ao Intensity", Range( 0 , 2)) = 0
		[Space(15)][Toggle(_USEEMISSIONFROMMAINPROPERTIESL2_ON)] _UseEmissionFromMainPropertiesL2("Use Emission From Main Properties", Float) = 0
		_EmissionIntensityL2("Intensity", Range( 0 , 2)) = 1
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L2UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L2ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L2BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L2BlendAmount("Amount", Float) = 0.2
		_L2BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L1VisualizeHeightmap1("Visualize Heightmap", Float) = 0
		_L2HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L2Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L2Displacement("Displacement", Float) = 0
		[Space(35)][Header(__________ Sparkles Properties __________)][Space(15)][KeywordEnum(None,SmoothnessSparkles,EmissiveSparkles)] _SparkleSource3("Source", Float) = 2
		[Toggle]_BlendingModeCrystals("Blending Mode Additive", Float) = 0
		[Space(15)][KeywordEnum(None,DotMask,SparkleMap)] _VisualizeSparkle("Visualize Maps", Float) = 0
		_SparkleMask("Sparkle Mask", 2D) = "white" {}
		[Space(30)][Header(Dot Mask)]_TilingDotMask("Tiling", Float) = 5
		_IntensityDotMask("Intensity", Float) = 1
		[Space(15)]_ContrastDotMask("Contrast", Float) = 0
		_SpreadDotMask("Spread", Range( 0 , 1)) = 0.5
		[Space(30)][Header(Sparkle Map)]_TilingCrystals("Tiling", Float) = 7
		_CrystalsIntensity("Intensity", Float) = 5
		[Space(15)]_ContrastSparkles("Contrast", Float) = 3.5
		_AmountSparkle("Amount", Range( 0 , 1)) = 1
		[Space(30)][Header(Custom Properties)]_TilingInstance("Tiling Instance", Float) = 1
		_SparklePower("Sparkle Power", Float) = 2
		_Desaturatecrystals("Desaturate", Range( 0 , 1)) = 0.5
		[Space(10)]_ShadowMask("Shadow Mask", Range( 0 , 1)) = 0
		[Toggle]_AoMask("Ao Mask", Float) = 0
		[Space(35)][Header(Tessellation Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Toggle]_EnableTessellation("Enable ", Float) = 0
		[Space(15)]_Tessellation("Tessellation", Float) = 8
		[Space(15)]_DistanceMin("Distance Min", Float) = 1
		_DistanceMax("Distance Max", Float) = 20
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityCG.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Tessellation.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		#pragma shader_feature_local _VISUALIZESPARKLE_NONE _VISUALIZESPARKLE_DOTMASK _VISUALIZESPARKLE_SPARKLEMAP
		#pragma shader_feature_local _SPARKLESOURCE3_NONE _SPARKLESOURCE3_SMOOTHNESSSPARKLES _SPARKLESOURCE3_EMISSIVESPARKLES
		#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL2_ON
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
			float3 worldNormal;
			INTERNAL_DATA
			float2 uv_texcoord;
			float3 viewDir;
			half ASEVFace : VFACE;
			float4 vertexColor : COLOR;
			float3 worldPos;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform float _L0Displacement;
		uniform float _L0Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHS;
		uniform float4 _MetallicGlossMapMAHS_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXY;
		uniform float _L0HeightmapSpread;
		uniform float _L2Displacement;
		uniform float _L2Heightmapcontrast;
		uniform sampler2D _MetallicGlossMapMAHSL2;
		uniform float4 _MetallicGlossMapMAHSL2_ST;
		uniform float4 _GlobalXYTilingXYZWOffsetXYSnow;
		uniform float _L2HeightmapSpread;
		uniform float _L2BlendOpacity;
		uniform float _L1VisualizeHeightmap1;
		uniform float _L0VisualizeHeightmap1;
		uniform float _Brightness;
		uniform float4 _Color;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float _Parallax;
		uniform float _Saturation;
		uniform float _BrightnessL2;
		uniform float4 _ColorL2;
		uniform sampler2D _BaseColorL2;
		uniform float4 _BaseColorL2_ST;
		uniform float _ParallaxL2;
		uniform float _SaturationL2;
		uniform float _L2UseHeightmapDepth1;
		uniform float _L2ConstrainbyPaintedMask;
		uniform float _L2BlendAmount;
		uniform float _L2BlendContrast;
		uniform sampler2D _SparkleMask;
		uniform float _TilingDotMask;
		uniform float _TilingInstance;
		uniform float _SpreadDotMask;
		uniform float _ContrastDotMask;
		uniform float _IntensityDotMask;
		uniform float _SparklePower;
		uniform float _ContrastSparkles;
		uniform float _TilingCrystals;
		uniform float _Desaturatecrystals;
		uniform float _AmountSparkle;
		uniform float _CrystalsIntensity;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _BumpMapL2;
		uniform float4 _BumpMapL2_ST;
		uniform float _BumpScaleL2;
		uniform float4 _EmissionColor;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float _EmissionIntensity;
		uniform float _AoMask;
		uniform float _AoIntensityL2;
		uniform float _ShadowMask;
		uniform float _EmissionIntensityL2;
		uniform float _Metallic;
		uniform float _MetallicL2;
		uniform float _Glossiness;
		uniform float _GlossinessL2;
		uniform float _BlendingModeCrystals;
		uniform float _AoIntensity;
		uniform float _EnableTessellation;
		uniform float _DistanceMin;
		uniform float _DistanceMax;
		uniform float _Tessellation;


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
		}

		inline float4 TriplanarSampling274_g1540( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
		{
			float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
			projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
			float3 nsign = sign( worldNormal );
			half4 xNorm; half4 yNorm; half4 zNorm;
			xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
			yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
			zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
			return xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
		}


		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			float4 temp_cast_7 = (0.5).xxxx;
			float clampResult9_g1530 = clamp( _Tessellation , 1.0 , 64.0 );
			return (( _EnableTessellation )?( UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _DistanceMin,_DistanceMax,clampResult9_g1530) ):( temp_cast_7 ));
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float3 ase_vertexNormal = v.normal.xyz;
			float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1502 = uv_MetallicGlossMapMAHS;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1502 = (float2(( break26_g1502.x * L0GlobalTilingX150 ) , ( break26_g1502.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1502 = (float2(( break26_g1502.x + L0GlobalOffsetX151 ) , ( break26_g1502.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1501 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1502 + appendResult13_g1502 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer0Heightmap336 = tex2DNode3_g1501.b;
			float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1522 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VertexOffset1124 = ( float4( ( ase_vertexNormal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1522 );
			float2 uv_MetallicGlossMapMAHSL2 = v.texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
			float2 break26_g1500 = uv_MetallicGlossMapMAHSL2;
			float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
			float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
			float2 appendResult14_g1500 = (float2(( break26_g1500.x * L2GlobalTilingX484 ) , ( break26_g1500.y * L2GlobalTilingY486 )));
			float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
			float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
			float2 appendResult13_g1500 = (float2(( break26_g1500.x + L2GlobalOffsetX483 ) , ( break26_g1500.y + L2GlobalOffsetY485 )));
			float4 tex2DNode3_g1499 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1500 + appendResult13_g1500 ) + float2( 0,0 ) ), 0, 0.0) );
			float Layer2Heightmap1053 = tex2DNode3_g1499.b;
			float4 temp_cast_4 = (Layer2Heightmap1053).xxxx;
			float4 temp_output_8_0_g1525 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer2VertexOffset1144 = ( float4( ( ase_vertexNormal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1525 );
			float4 break106 = v.color;
			float VertexB116 = break106.b;
			float L2Opacity1078 = _L2BlendOpacity;
			float4 lerpResult1132 = lerp( Layer0VertexOffset1124 , Layer2VertexOffset1144 , ( VertexB116 * L2Opacity1078 ));
			float4 VertexOffset1133 = lerpResult1132;
			v.vertex.xyz += VertexOffset1133.rgb;
			v.vertex.w = 1;
		}

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			SurfaceOutputStandard s996 = (SurfaceOutputStandard ) 0;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 break26_g1512 = float4( uv_MainTex, 0.0 , 0.0 ).xy;
			float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
			float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
			float2 appendResult14_g1512 = (float2(( break26_g1512.x * L0GlobalTilingX150 ) , ( break26_g1512.y * L0GlobalTilingY149 )));
			float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
			float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
			float2 appendResult13_g1512 = (float2(( break26_g1512.x + L0GlobalOffsetX151 ) , ( break26_g1512.y + L0GlobalOffsetY148 )));
			float2 uv_MetallicGlossMapMAHS = i.uv_texcoord * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
			float2 break26_g1502 = uv_MetallicGlossMapMAHS;
			float2 appendResult14_g1502 = (float2(( break26_g1502.x * L0GlobalTilingX150 ) , ( break26_g1502.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1502 = (float2(( break26_g1502.x + L0GlobalOffsetX151 ) , ( break26_g1502.y + L0GlobalOffsetY148 )));
			float4 tex2DNode3_g1501 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1502 + appendResult13_g1502 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1501 = ParallaxOffset( tex2DNode3_g1501.b , _Parallax , i.viewDir );
			float2 switchResult37_g1501 = (((i.ASEVFace>0)?(paralaxOffset38_g1501):(0.0)));
			float2 Layer0Parallax215 = switchResult37_g1501;
			float4 tex2DNode7_g1511 = tex2D( _MainTex, ( ( appendResult14_g1512 + appendResult13_g1512 ) + Layer0Parallax215 ) );
			float4 lerpResult56_g1511 = lerp( _Color , ( ( _Color * tex2DNode7_g1511 ) * _Color.a ) , _Color.a);
			float clampResult27_g1511 = clamp( _Saturation , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1511 = lerpResult56_g1511.rgb;
			float desaturateDot29_g1511 = dot( desaturateInitialColor29_g1511, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1511 = lerp( desaturateInitialColor29_g1511, desaturateDot29_g1511.xxx, -clampResult27_g1511 );
			float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1511 , 0.0 ));
			float2 uv_BaseColorL2 = i.uv_texcoord * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
			float2 break26_g1510 = uv_BaseColorL2;
			float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
			float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
			float2 appendResult14_g1510 = (float2(( break26_g1510.x * L2GlobalTilingX484 ) , ( break26_g1510.y * L2GlobalTilingY486 )));
			float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
			float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
			float2 appendResult13_g1510 = (float2(( break26_g1510.x + L2GlobalOffsetX483 ) , ( break26_g1510.y + L2GlobalOffsetY485 )));
			float2 uv_MetallicGlossMapMAHSL2 = i.uv_texcoord * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
			float2 break26_g1500 = uv_MetallicGlossMapMAHSL2;
			float2 appendResult14_g1500 = (float2(( break26_g1500.x * L2GlobalTilingX484 ) , ( break26_g1500.y * L2GlobalTilingY486 )));
			float2 appendResult13_g1500 = (float2(( break26_g1500.x + L2GlobalOffsetX483 ) , ( break26_g1500.y + L2GlobalOffsetY485 )));
			float4 tex2DNode3_g1499 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1500 + appendResult13_g1500 ) + float2( 0,0 ) ) );
			float2 paralaxOffset38_g1499 = ParallaxOffset( tex2DNode3_g1499.b , _ParallaxL2 , i.viewDir );
			float2 switchResult37_g1499 = (((i.ASEVFace>0)?(paralaxOffset38_g1499):(0.0)));
			float2 Layer2Parallax1055 = switchResult37_g1499;
			float4 tex2DNode7_g1509 = tex2D( _BaseColorL2, ( ( appendResult14_g1510 + appendResult13_g1510 ) + Layer2Parallax1055 ) );
			float clampResult27_g1509 = clamp( _SaturationL2 , -1.0 , 100.0 );
			float3 desaturateInitialColor29_g1509 = ( _ColorL2 * tex2DNode7_g1509 ).rgb;
			float desaturateDot29_g1509 = dot( desaturateInitialColor29_g1509, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar29_g1509 = lerp( desaturateInitialColor29_g1509, desaturateDot29_g1509.xxx, -clampResult27_g1509 );
			float4 Layer2BaseColor1070 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1509 , 0.0 ));
			float4 break106 = i.vertexColor;
			float VertexB116 = break106.b;
			float temp_output_21_0_g1532 = VertexB116;
			float Layer0Heightmap336 = tex2DNode3_g1501.b;
			float clampResult11_g1532 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			float blendOpSrc18_g1532 = clampResult11_g1532;
			float blendOpDest18_g1532 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1532 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
			float blendOpSrc31_g1532 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1532 * blendOpDest18_g1532 ) )) ):( clampResult11_g1532 ));
			float blendOpDest31_g1532 = temp_output_21_0_g1532;
			float VertexBHeightmap1077 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1532 + blendOpDest31_g1532 ) )) ):( temp_output_21_0_g1532 )) * _L2BlendOpacity );
			float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer2BaseColor1070 , VertexBHeightmap1077);
			float4 BaseColor121 = lerpResult99;
			float4 temp_cast_6 = (Layer0Heightmap336).xxxx;
			float4 temp_output_8_0_g1522 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_6 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer0VisHeightmap1125 = temp_output_8_0_g1522;
			float VertexR114 = break106.r;
			float Layer2Heightmap1053 = tex2DNode3_g1499.b;
			float4 temp_cast_8 = (Layer2Heightmap1053).xxxx;
			float4 temp_output_8_0_g1525 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_8 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
			float4 Layer2VisHeightmap1145 = temp_output_8_0_g1525;
			float VertexG115 = break106.g;
			float clampResult149_g1540 = clamp( _TilingInstance , 0.0 , 1000.0 );
			float2 temp_output_175_0_g1540 = Layer2Parallax1055;
			float temp_output_123_0_g1540 = ( tex2D( _SparkleMask, ( ( ( i.uv_texcoord * _TilingDotMask ) * clampResult149_g1540 ) + temp_output_175_0_g1540 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
			float saferPower230_g1540 = abs( temp_output_123_0_g1540 );
			float temp_output_121_0_g1540 = ( _ContrastDotMask + 1.0 );
			float clampResult118_g1540 = clamp( pow( saferPower230_g1540 , temp_output_121_0_g1540 ) , 0.0 , 1.0 );
			float clampResult240_g1540 = clamp( _SparklePower , 0.0 , 100000.0 );
			float temp_output_277_0_g1540 = ( ( clampResult118_g1540 * _IntensityDotMask ) * clampResult240_g1540 );
			float VisualizeDotMap1001 = temp_output_277_0_g1540;
			float4 temp_cast_10 = (VisualizeDotMap1001).xxxx;
			float temp_output_135_0_g1540 = ( _ContrastSparkles - -1.0 );
			float2 temp_cast_11 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1540 )).xx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 worldToObj273_g1540 = mul( unity_WorldToObject, float4( ase_worldPos, 1 ) ).xyz;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float4 triplanar274_g1540 = TriplanarSampling274_g1540( _SparkleMask, ( ( ( worldToObj273_g1540 / 4.0 ) - ase_worldViewDir ) + float3( temp_output_175_0_g1540 ,  0.0 ) ), ase_worldNormal, 1.0, temp_cast_11, 1.0, 0 );
			float clampResult49_g1540 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
			float3 desaturateInitialColor53_g1540 = triplanar274_g1540.xyz;
			float desaturateDot53_g1540 = dot( desaturateInitialColor53_g1540, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar53_g1540 = lerp( desaturateInitialColor53_g1540, desaturateDot53_g1540.xxx, clampResult49_g1540 );
			float lerpResult246_g1540 = lerp( 0.6 , 1.0 , _AmountSparkle);
			float4 clampResult74_g1540 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1540,float4( desaturateVar53_g1540 , 0.0 )) + (( -1.0 - temp_output_135_0_g1540 ) + (lerpResult246_g1540 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1540 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
			float4 VisualizeSparklesMap1002 = clampResult74_g1540;
			#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1013 = (( _L1VisualizeHeightmap1 )?( ( Layer2VisHeightmap1145 * VertexG115 ) ):( (( _L0VisualizeHeightmap1 )?( ( Layer0VisHeightmap1125 * VertexR114 ) ):( BaseColor121 )) ));
			#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1013 = temp_cast_10;
			#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1013 = VisualizeSparklesMap1002;
			#else
				float4 staticSwitch1013 = (( _L1VisualizeHeightmap1 )?( ( Layer2VisHeightmap1145 * VertexG115 ) ):( (( _L0VisualizeHeightmap1 )?( ( Layer0VisHeightmap1125 * VertexR114 ) ):( BaseColor121 )) ));
			#endif
			s996.Albedo = staticSwitch1013.rgb;
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 break26_g1529 = uv_BumpMap;
			float2 appendResult14_g1529 = (float2(( break26_g1529.x * L0GlobalTilingX150 ) , ( break26_g1529.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1529 = (float2(( break26_g1529.x + L0GlobalOffsetX151 ) , ( break26_g1529.y + L0GlobalOffsetY148 )));
			float3 tex2DNode4_g1528 = UnpackScaleNormal( tex2D( _BumpMap, ( ( appendResult14_g1529 + appendResult13_g1529 ) + Layer0Parallax215 ) ), _BumpScale );
			float3 Layer0Normal193 = tex2DNode4_g1528;
			float2 uv_BumpMapL2 = i.uv_texcoord * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
			float2 break26_g1527 = uv_BumpMapL2;
			float2 appendResult14_g1527 = (float2(( break26_g1527.x * L2GlobalTilingX484 ) , ( break26_g1527.y * L2GlobalTilingY486 )));
			float2 appendResult13_g1527 = (float2(( break26_g1527.x + L2GlobalOffsetX483 ) , ( break26_g1527.y + L2GlobalOffsetY485 )));
			float3 tex2DNode4_g1526 = UnpackScaleNormal( tex2D( _BumpMapL2, ( ( appendResult14_g1527 + appendResult13_g1527 ) + Layer2Parallax1055 ) ), _BumpScaleL2 );
			float3 Layer2Normal1062 = tex2DNode4_g1526;
			float3 lerpResult133 = lerp( Layer0Normal193 , Layer2Normal1062 , VertexBHeightmap1077);
			float3 Normal129 = lerpResult133;
			s996.Normal = WorldNormalVector( i , Normal129 );
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float2 break26_g1505 = uv_EmissionMap;
			float2 appendResult14_g1505 = (float2(( break26_g1505.x * L0GlobalTilingX150 ) , ( break26_g1505.y * L0GlobalTilingY149 )));
			float2 appendResult13_g1505 = (float2(( break26_g1505.x + L0GlobalOffsetX151 ) , ( break26_g1505.y + L0GlobalOffsetY148 )));
			float4 temp_output_5_0_g1504 = ( _EmissionColor * tex2D( _EmissionMap, ( ( appendResult14_g1505 + appendResult13_g1505 ) + Layer0Parallax215 ) ) );
			float4 Layer0Emission984 = ( temp_output_5_0_g1504 * _EmissionIntensity );
			float4 temp_cast_16 = (0.0).xxxx;
			float4 lerpResult1118 = lerp( Layer0Emission984 , temp_cast_16 , VertexBHeightmap1077);
			float4 temp_output_108_0_g1540 = ( clampResult74_g1540 * temp_output_277_0_g1540 );
			float blendOpSrc34_g1499 = tex2DNode3_g1499.g;
			float blendOpDest34_g1499 = ( 1.0 - _AoIntensityL2 );
			float Layer2Ao1071 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1499 ) * ( 1.0 - blendOpDest34_g1499 ) ) ));
			float4 temp_cast_17 = (Layer2Ao1071).xxxx;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult152_g1540 = dot( ase_worldNormal , ase_worldlightDir );
			float temp_output_153_0_g1540 = max( dotResult152_g1540 , 0.0 );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float lerpResult169_g1540 = lerp( ( temp_output_153_0_g1540 * ase_lightColor.a ) , ( temp_output_153_0_g1540 * ( ase_lightAtten * ase_lightColor.a ) ) , _ShadowMask);
			float4 temp_output_165_0_g1540 = ( (( _AoMask )?( ( temp_output_108_0_g1540 * temp_cast_17 ) ):( temp_output_108_0_g1540 )) * lerpResult169_g1540 );
			float4 temp_output_1160_0 = temp_output_165_0_g1540;
			float4 SparklesCrystals1000 = temp_output_1160_0;
			float saferPower1106 = abs( VertexBHeightmap1077 );
			float4 lerpResult1110 = lerp( float4( 0,0,0,0 ) , SparklesCrystals1000 , pow( saferPower1106 , 3.0 ));
			float4 blendOpSrc1112 = lerpResult1118;
			float4 blendOpDest1112 = lerpResult1110;
			float4 Layer0EmissionRGB1086 = temp_output_5_0_g1504;
			float4 lerpResult1107 = lerp( Layer0Emission984 , ( Layer0EmissionRGB1086 * _EmissionIntensityL2 ) , VertexBHeightmap1077);
			float4 blendOpSrc1113 = lerpResult1107;
			float4 blendOpDest1113 = lerpResult1110;
			#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch1114 = ( saturate( 	max( blendOpSrc1113, blendOpDest1113 ) ));
			#else
				float4 staticSwitch1114 = ( saturate( 	max( blendOpSrc1112, blendOpDest1112 ) ));
			#endif
			#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch1116 = lerpResult1107;
			#else
				float4 staticSwitch1116 = lerpResult1118;
			#endif
			#if defined(_SPARKLESOURCE3_NONE)
				float4 staticSwitch1115 = staticSwitch1116;
			#elif defined(_SPARKLESOURCE3_SMOOTHNESSSPARKLES)
				float4 staticSwitch1115 = staticSwitch1116;
			#elif defined(_SPARKLESOURCE3_EMISSIVESPARKLES)
				float4 staticSwitch1115 = staticSwitch1114;
			#else
				float4 staticSwitch1115 = staticSwitch1114;
			#endif
			float4 Emission993 = staticSwitch1115;
			s996.Emission = Emission993.rgb;
			float Layer0Metallic211 = ( tex2DNode3_g1501.r * _Metallic );
			float Layer2Metallic1072 = ( tex2DNode3_g1499.r * _MetallicL2 );
			float lerpResult289 = lerp( Layer0Metallic211 , Layer2Metallic1072 , VertexBHeightmap1077);
			float Metallic296 = lerpResult289;
			s996.Metallic = Metallic296;
			float temp_output_1_0_g1501 = ( tex2DNode3_g1501.a * _Glossiness );
			float Layer0Smoothness210 = temp_output_1_0_g1501;
			float4 temp_cast_20 = (Layer0Smoothness210).xxxx;
			float temp_output_1_0_g1499 = ( tex2DNode3_g1499.a * _GlossinessL2 );
			float temp_output_1052_7 = temp_output_1_0_g1499;
			float4 temp_cast_21 = (temp_output_1052_7).xxxx;
			float4 temp_cast_22 = (temp_output_1052_7).xxxx;
			float4 temp_cast_23 = (temp_output_1052_7).xxxx;
			float4 blendOpSrc1037 = temp_cast_23;
			float4 blendOpDest1037 = SparklesCrystals1000;
			float4 temp_cast_24 = (temp_output_1052_7).xxxx;
			float4 blendOpSrc1034 = ( temp_cast_24 - SparklesCrystals1000 );
			float4 blendOpDest1034 = SparklesCrystals1000;
			float4 temp_cast_25 = (temp_output_1052_7).xxxx;
			#if defined(_SPARKLESOURCE3_NONE)
				float4 staticSwitch1035 = temp_cast_22;
			#elif defined(_SPARKLESOURCE3_SMOOTHNESSSPARKLES)
				float4 staticSwitch1035 = (( _BlendingModeCrystals )?( ( saturate( ( 1.0 - ( 1.0 - blendOpSrc1034 ) * ( 1.0 - blendOpDest1034 ) ) )) ):( ( saturate( 	max( blendOpSrc1037, blendOpDest1037 ) )) ));
			#elif defined(_SPARKLESOURCE3_EMISSIVESPARKLES)
				float4 staticSwitch1035 = temp_cast_21;
			#else
				float4 staticSwitch1035 = temp_cast_21;
			#endif
			float4 Layer2Smoothness1073 = staticSwitch1035;
			float4 lerpResult301 = lerp( temp_cast_20 , Layer2Smoothness1073 , VertexBHeightmap1077);
			float4 Smoothness309 = lerpResult301;
			s996.Smoothness = Smoothness309.r;
			float blendOpSrc34_g1501 = tex2DNode3_g1501.g;
			float blendOpDest34_g1501 = ( 1.0 - _AoIntensity );
			float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1501 ) * ( 1.0 - blendOpDest34_g1501 ) ) ));
			float lerpResult312 = lerp( Layer0Ao214 , Layer2Ao1071 , VertexBHeightmap1077);
			float Ao321 = lerpResult312;
			s996.Occlusion = Ao321;

			data.light = gi.light;

			UnityGI gi996 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g996 = UnityGlossyEnvironmentSetup( s996.Smoothness, data.worldViewDir, s996.Normal, float3(0,0,0));
			gi996 = UnityGlobalIllumination( data, s996.Occlusion, s996.Normal, g996 );
			#endif

			float3 surfResult996 = LightingStandard ( s996, viewDir, gi996 ).rgb;
			surfResult996 += s996.Emission;

			#ifdef UNITY_PASS_FORWARDADD//996
			surfResult996 -= s996.Emission;
			#endif//996
			c.rgb = surfResult996;
			c.a = 1;
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows vertex:vertexDataFunc tessellate:tessFunction 

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
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.vertexColor = IN.color;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
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