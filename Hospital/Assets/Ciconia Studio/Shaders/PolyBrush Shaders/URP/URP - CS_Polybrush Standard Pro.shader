Shader "Ciconia Studio/CS_Polybrush/URP/Pro/Standard"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[Space(35)][Header(Base Layer (R)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXY("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_BaseColor("Color", Color) = (1,1,1,1)
		_BaseMap("Base Color", 2D) = "white" {}
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
		[Space(35)][Header(Tessellation Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)]
		[Space(15)]_TessValue("Tessellation", Range(1, 32)) = 8
		[Space(15)]_TessMin("Distance Min", Float) = 1
		_TessMax("Distance Max", Float) = 20
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" }
		Cull Back
		AlphaToMask Off
		HLSLINCLUDE
		#pragma target 2.0

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }
			
			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			#pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			
			#if ASE_SRP_VERSION <= 70108
			#define REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR
			#endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER _WETBASECOLOR_LAYER1 _WETBASECOLOR_LAYER2


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _BaseMap_ST;
			float4 _BaseColorL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BaseColor;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _ColorCubemap1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _BumpMapL1_ST;
			float4 _ColorL2;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _ColorL1;
			float _BumpScale;
			float _L3ConstrainbyPaintedMask;
			float _L3BlendAmount;
			float _L3UseHeightmapDepth1;
			float _L2BlendContrast;
			float _L2BlendAmount;
			float _L3BlendContrast;
			float _L0Displacement;
			float _BumpScaleL2;
			float _L2ConstrainbyPaintedMask;
			float _BlurReflection;
			float _ReflectionIntensity;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL1;
			float _L2UseHeightmapDepth1;
			float _L1BlendContrast;
			float _ParallaxL2;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement;
			float _L1Heightmapcontrast;
			float _L1HeightmapSpread;
			float _L1BlendOpacity;
			float _L2Displacement;
			float _L2Heightmapcontrast;
			float _L2HeightmapSpread;
			float _L2BlendOpacity;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L3VisualizeHeightmap1;
			float _L2VisualizeHeightmap;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _AoIntensityL2;
			float _BrightnessL2;
			float _SaturationL2;
			float _AoWet;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _BaseMap;
			sampler2D _BaseColorL1;
			sampler2D _BaseColorL2;
			sampler2D _WetTex;
			sampler2D _BumpMap;
			sampler2D _BumpMapL1;
			sampler2D _BumpMapL2;
			samplerCUBE _Cubemap;


			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}
			inline float2 ParallaxOffset( half h, half height, half3 viewDir )
			{
				h = h * height - height/2.0;
				float3 v = normalize( viewDir );
				v.z += 0.42;
				return h* (v.xy / v.z);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

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
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1300 );
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
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1301 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity979 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity979 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1302 );
				float VertexB116 = break106.b;
				float L2Opacity980 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity980 ));
				float4 temp_cast_11 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_11 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VertexOffset869 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1318 );
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult905 = lerp( lerpResult642 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult905;
				
				o.ase_texcoord7.xyz = v.texcoord.xyz;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN , half ase_vface : VFACE ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif
	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_BaseMap = IN.ase_texcoord7.xyz.xy * _BaseMap_ST.xy + _BaseMap_ST.zw;
				float2 break26_g1250 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1250 = (float2(( break26_g1250.x * L0GlobalTilingX150 ) , ( break26_g1250.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1250 = (float2(( break26_g1250.x + L0GlobalOffsetX151 ) , ( break26_g1250.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1054 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1054 = (float2(( break26_g1054.x * L0GlobalTilingX150 ) , ( break26_g1054.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1054 = (float2(( break26_g1054.x + L0GlobalOffsetX151 ) , ( break26_g1054.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1053 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ) );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1053 = ParallaxOffset( tex2DNode3_g1053.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1053 = (((ase_vface>0)?(paralaxOffset38_g1053):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1053;
				float4 tex2DNode7_g1249 = tex2D( _BaseMap, ( ( appendResult14_g1250 + appendResult13_g1250 ) + Layer0Parallax215 ) );
				float clampResult27_g1249 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1249 = ( _BaseColor * tex2DNode7_g1249 ).rgb;
				float desaturateDot29_g1249 = dot( desaturateInitialColor29_g1249, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1249 = lerp( desaturateInitialColor29_g1249, desaturateDot29_g1249.xxx, -clampResult27_g1249 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1249 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord7.xyz.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1248 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1248 = (float2(( break26_g1248.x * L1GlobalTilingX234 ) , ( break26_g1248.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1248 = (float2(( break26_g1248.x + L1GlobalOffsetX236 ) , ( break26_g1248.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1058 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1058 = (float2(( break26_g1058.x * L1GlobalTilingX234 ) , ( break26_g1058.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1058 = (float2(( break26_g1058.x + L1GlobalOffsetX236 ) , ( break26_g1058.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1057 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1058 + appendResult13_g1058 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1057 = ParallaxOffset( tex2DNode3_g1057.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1057 = (((ase_vface>0)?(paralaxOffset38_g1057):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1057;
				float4 tex2DNode7_g1247 = tex2D( _BaseColorL1, ( ( appendResult14_g1248 + appendResult13_g1248 ) + Layer1Parallax247 ) );
				float clampResult27_g1247 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1247 = ( _ColorL1 * tex2DNode7_g1247 ).rgb;
				float desaturateDot29_g1247 = dot( desaturateInitialColor29_g1247, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1247 = lerp( desaturateInitialColor29_g1247, desaturateDot29_g1247.xxx, -clampResult27_g1247 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1247 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1281 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1053.b;
				float temp_output_49_0_g1281 = ( _L1BlendContrast - 1.5 );
				float clampResult11_g1281 = clamp( ( ( _L1BlendAmount - 2.37 ) + (( 1.0 + temp_output_49_0_g1281 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_49_0_g1281 - ( 1.0 + temp_output_49_0_g1281 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1281 = clampResult11_g1281;
				float blendOpDest18_g1281 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1281 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1281 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1281 * blendOpDest18_g1281 ) )) ):( clampResult11_g1281 ));
				float blendOpDest31_g1281 = temp_output_21_0_g1281;
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1281 + blendOpDest31_g1281 ) )) ):( temp_output_21_0_g1281 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord7.xyz.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1252 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1252 = (float2(( break26_g1252.x * L2GlobalTilingX484 ) , ( break26_g1252.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1252 = (float2(( break26_g1252.x + L2GlobalOffsetX483 ) , ( break26_g1252.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1055 = ParallaxOffset( tex2DNode3_g1055.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1055 = (((ase_vface>0)?(paralaxOffset38_g1055):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1055;
				float4 tex2DNode7_g1251 = tex2D( _BaseColorL2, ( ( appendResult14_g1252 + appendResult13_g1252 ) + Layer2Parallax462 ) );
				float clampResult27_g1251 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1251 = ( _ColorL2 * tex2DNode7_g1251 ).rgb;
				float desaturateDot29_g1251 = dot( desaturateInitialColor29_g1251, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1251 = lerp( desaturateInitialColor29_g1251, desaturateDot29_g1251.xxx, -clampResult27_g1251 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1251 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1298 = VertexB116;
				float temp_output_55_0_g1298 = ( _L2BlendAmount - 2.37 );
				float lerpResult47_g1298 = lerp( temp_output_55_0_g1298 , ( temp_output_55_0_g1298 - temp_output_55_0_g1298 ) , VertexG115);
				float Layer1Heightmap510 = tex2DNode3_g1057.b;
				float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
				float temp_output_56_0_g1298 = ( _L2BlendContrast - 1.5 );
				float clampResult11_g1298 = clamp( ( lerpResult47_g1298 + (( 1.0 + temp_output_56_0_g1298 ) + (lerpResult830 - 0.0) * (-temp_output_56_0_g1298 - ( 1.0 + temp_output_56_0_g1298 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1298 = clampResult11_g1298;
				float blendOpDest18_g1298 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1298 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1298 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1298 * blendOpDest18_g1298 ) )) ):( clampResult11_g1298 ));
				float blendOpDest31_g1298 = temp_output_21_0_g1298;
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1298 + blendOpDest31_g1298 ) )) ):( temp_output_21_0_g1298 )) * _L2BlendOpacity );
				float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
				float4 temp_cast_6 = (1.0).xxxx;
				float2 uv_WetTex = IN.ase_texcoord7.xyz.xy * _WetTex_ST.xy + _WetTex_ST.zw;
				float4 tex2DNode727 = tex2D( _WetTex, uv_WetTex );
				#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_6;
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
				float VertexA117 = break106.a;
				float temp_output_21_0_g1297 = VertexA117;
				float temp_output_61_0_g1297 = ( _L3BlendAmount - 2.37 );
				float lerpResult50_g1297 = lerp( temp_output_61_0_g1297 , ( temp_output_61_0_g1297 - 2.0 ) , VertexG115);
				float lerpResult55_g1297 = lerp( lerpResult50_g1297 , -1.0 , VertexB116);
				float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
				float temp_output_63_0_g1297 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1297 = clamp( ( lerpResult55_g1297 + (( 1.0 + temp_output_63_0_g1297 ) + (lerpResult819 - 0.0) * (-temp_output_63_0_g1297 - ( 1.0 + temp_output_63_0_g1297 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1297 = clampResult11_g1297;
				float blendOpDest18_g1297 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1297 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1297 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1297 * blendOpDest18_g1297 ) )) ):( clampResult11_g1297 ));
				float blendOpDest31_g1297 = temp_output_21_0_g1297;
				float temp_output_971_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1297 + blendOpDest31_g1297 ) )) ):( temp_output_21_0_g1297 ));
				float VertexAHeightmap799 = temp_output_971_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				float4 temp_cast_7 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1300;
				float VertexR114 = break106.r;
				float4 temp_cast_9 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VisHeightmap612 = temp_output_8_0_g1301;
				float4 temp_cast_11 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_11 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VisHeightmap638 = temp_output_8_0_g1302;
				float4 temp_cast_14 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_14 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VisHeightmap868 = temp_output_10_0_g1318;
				
				float2 uv_BumpMap = IN.ase_texcoord7.xyz.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1315 = uv_BumpMap;
				float2 appendResult14_g1315 = (float2(( break26_g1315.x * L0GlobalTilingX150 ) , ( break26_g1315.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1315 = (float2(( break26_g1315.x + L0GlobalOffsetX151 ) , ( break26_g1315.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1314 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1315 + appendResult13_g1315 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1314.z = lerp( 1, unpack4_g1314.z, saturate(_BumpScale) );
				float3 Layer0Normal193 = unpack4_g1314;
				float2 uv_BumpMapL1 = IN.ase_texcoord7.xyz.xy * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
				float2 break26_g1311 = uv_BumpMapL1;
				float2 appendResult14_g1311 = (float2(( break26_g1311.x * L1GlobalTilingX234 ) , ( break26_g1311.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1311 = (float2(( break26_g1311.x + L1GlobalOffsetX236 ) , ( break26_g1311.y + L1GlobalOffsetY237 )));
				float3 unpack4_g1310 = UnpackNormalScale( tex2D( _BumpMapL1, ( ( appendResult14_g1311 + appendResult13_g1311 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
				unpack4_g1310.z = lerp( 1, unpack4_g1310.z, saturate(_BumpScaleL1) );
				float3 tex2DNode4_g1310 = unpack4_g1310;
				float3 Layer1Normal260 = tex2DNode4_g1310;
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
				float2 uv_BumpMapL2 = IN.ase_texcoord7.xyz.xy * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
				float2 break26_g1317 = uv_BumpMapL2;
				float2 appendResult14_g1317 = (float2(( break26_g1317.x * L2GlobalTilingX484 ) , ( break26_g1317.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1317 = (float2(( break26_g1317.x + L2GlobalOffsetX483 ) , ( break26_g1317.y + L2GlobalOffsetY485 )));
				float3 unpack4_g1316 = UnpackNormalScale( tex2D( _BumpMapL2, ( ( appendResult14_g1317 + appendResult13_g1317 ) + Layer2Parallax462 ) ), _BumpScaleL2 );
				unpack4_g1316.z = lerp( 1, unpack4_g1316.z, saturate(_BumpScaleL2) );
				float3 tex2DNode4_g1316 = unpack4_g1316;
				float3 Layer2Normal477 = tex2DNode4_g1316;
				float3 lerpResult127 = lerp( lerpResult133 , Layer2Normal477 , VertexBHeightmap652);
				float3 lerpResult128 = lerp( lerpResult127 , float3(0,0,1) , ( VertexAHeightmap799 * WetOpacity768 ));
				float3 Normal129 = lerpResult128;
				
				float3 worldRefl28_g1312 = normalize( reflect( -WorldViewDirection, float3( dot( tanToWorld0, Normal129 ), dot( tanToWorld1, Normal129 ), dot( tanToWorld2, Normal129 ) ) ) );
				float4 texCUBENode27_g1312 = texCUBElod( _Cubemap, float4( worldRefl28_g1312, _BlurReflection) );
				float clampResult39_g1312 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
				float4 temp_cast_16 = (1.0).xxxx;
				float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1312 * ( texCUBENode27_g1312.a * clampResult39_g1312 ) * _ColorCubemap1 ) * temp_cast_16 ) , VertexA117);
				float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
				
				float Layer0Metallic211 = ( tex2DNode3_g1053.r * _Metallic );
				float Layer1Metallic263 = ( tex2DNode3_g1057.r * _MetallicL1 );
				float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
				float Layer2Metallic478 = ( tex2DNode3_g1055.r * _MetallicL2 );
				float lerpResult286 = lerp( lerpResult289 , Layer2Metallic478 , VertexBHeightmap652);
				float CubemapMetalness750 = _Metalness;
				float lerpResult293 = lerp( lerpResult286 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
				float Metallic296 = lerpResult293;
				
				float temp_output_1_0_g1053 = ( tex2DNode3_g1053.a * _Glossiness );
				float Layer0Smoothness210 = temp_output_1_0_g1053;
				float temp_output_1_0_g1057 = ( tex2DNode3_g1057.a * _GlossinessL1 );
				float Layer1Smoothness264 = temp_output_1_0_g1057;
				float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
				float temp_output_1_0_g1055 = ( tex2DNode3_g1055.a * _GlossinessL2 );
				float Layer2Smoothness480 = temp_output_1_0_g1055;
				float lerpResult299 = lerp( lerpResult301 , Layer2Smoothness480 , VertexBHeightmap652);
				float CubemapSkyIntensity741 = _SmoothnessWet;
				float lerpResult305 = lerp( lerpResult299 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
				float Smoothness309 = lerpResult305;
				
				float blendOpSrc34_g1053 = tex2DNode3_g1053.g;
				float blendOpDest34_g1053 = ( 1.0 - _AoIntensity );
				float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1053 ) * ( 1.0 - blendOpDest34_g1053 ) ) ));
				float blendOpSrc34_g1057 = tex2DNode3_g1057.g;
				float blendOpDest34_g1057 = ( 1.0 - _AoIntensityL1 );
				float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1057 ) * ( 1.0 - blendOpDest34_g1057 ) ) ));
				float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
				float blendOpSrc34_g1055 = tex2DNode3_g1055.g;
				float blendOpDest34_g1055 = ( 1.0 - _AoIntensityL2 );
				float Layer2Ao479 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1055 ) * ( 1.0 - blendOpDest34_g1055 ) ) ));
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
				
				float3 Albedo = (( _L3VisualizeHeightmap1 )?( Layer3VisHeightmap868 ):( (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) )) )).xyz;
				float3 Normal = Normal129;
				float3 Emission = Cubemap742.rgb;
				float3 Specular = 0.5;
				float Metallic = Metallic296;
				float Smoothness = Smoothness309;
				float Occlusion = Ao321;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif
				half4 color = UniversalFragmentPBR(
					inputData, 
					Albedo, 
					Metallic, 
					Specular, 
					Smoothness, 
					Occlusion, 
					Emission, 
					Alpha);

				#ifdef _TRANSMISSION_ASE
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += Albedo * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += Albedo * transmission;
						}
					#endif
				}
				#endif

				#ifdef _TRANSLUCENCY_ASE
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += Albedo * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += Albedo * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef _REFRACTION_ASE
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif
				
				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _BaseMap_ST;
			float4 _BaseColorL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BaseColor;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _ColorCubemap1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _BumpMapL1_ST;
			float4 _ColorL2;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _ColorL1;
			float _BumpScale;
			float _L3ConstrainbyPaintedMask;
			float _L3BlendAmount;
			float _L3UseHeightmapDepth1;
			float _L2BlendContrast;
			float _L2BlendAmount;
			float _L3BlendContrast;
			float _L0Displacement;
			float _BumpScaleL2;
			float _L2ConstrainbyPaintedMask;
			float _BlurReflection;
			float _ReflectionIntensity;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL1;
			float _L2UseHeightmapDepth1;
			float _L1BlendContrast;
			float _ParallaxL2;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement;
			float _L1Heightmapcontrast;
			float _L1HeightmapSpread;
			float _L1BlendOpacity;
			float _L2Displacement;
			float _L2Heightmapcontrast;
			float _L2HeightmapSpread;
			float _L2BlendOpacity;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L3VisualizeHeightmap1;
			float _L2VisualizeHeightmap;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _AoIntensityL2;
			float _BrightnessL2;
			float _SaturationL2;
			float _AoWet;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _MetallicGlossMapMAHSL2;


			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}

			float3 _LightDirection;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 uv_MetallicGlossMapMAHS = v.ase_texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
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
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1300 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
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
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1301 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity979 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity979 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1302 );
				float VertexB116 = break106.b;
				float L2Opacity980 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity980 ));
				float4 temp_cast_11 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_11 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VertexOffset869 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1318 );
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult905 = lerp( lerpResult642 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult905;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				float3 normalWS = TransformObjectToWorldDir(v.ase_normal);

				float4 clipPos = TransformWorldToHClip( ApplyShadowBias( positionWS, normalWS, _LightDirection ) );

				#if UNITY_REVERSED_Z
					clipPos.z = min(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#else
					clipPos.z = max(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = clipPos;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );
				
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				return 0;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _BaseMap_ST;
			float4 _BaseColorL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BaseColor;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _ColorCubemap1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _BumpMapL1_ST;
			float4 _ColorL2;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _ColorL1;
			float _BumpScale;
			float _L3ConstrainbyPaintedMask;
			float _L3BlendAmount;
			float _L3UseHeightmapDepth1;
			float _L2BlendContrast;
			float _L2BlendAmount;
			float _L3BlendContrast;
			float _L0Displacement;
			float _BumpScaleL2;
			float _L2ConstrainbyPaintedMask;
			float _BlurReflection;
			float _ReflectionIntensity;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL1;
			float _L2UseHeightmapDepth1;
			float _L1BlendContrast;
			float _ParallaxL2;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement;
			float _L1Heightmapcontrast;
			float _L1HeightmapSpread;
			float _L1BlendOpacity;
			float _L2Displacement;
			float _L2Heightmapcontrast;
			float _L2HeightmapSpread;
			float _L2BlendOpacity;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L3VisualizeHeightmap1;
			float _L2VisualizeHeightmap;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _AoIntensityL2;
			float _BrightnessL2;
			float _SaturationL2;
			float _AoWet;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _MetallicGlossMapMAHSL2;


			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 uv_MetallicGlossMapMAHS = v.ase_texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
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
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1300 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
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
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1301 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity979 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity979 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1302 );
				float VertexB116 = break106.b;
				float L2Opacity980 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity980 ));
				float4 temp_cast_11 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_11 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VertexOffset869 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1318 );
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult905 = lerp( lerpResult642 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult905;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER _WETBASECOLOR_LAYER1 _WETBASECOLOR_LAYER2


			#pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _BaseMap_ST;
			float4 _BaseColorL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BaseColor;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _ColorCubemap1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _BumpMapL1_ST;
			float4 _ColorL2;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _ColorL1;
			float _BumpScale;
			float _L3ConstrainbyPaintedMask;
			float _L3BlendAmount;
			float _L3UseHeightmapDepth1;
			float _L2BlendContrast;
			float _L2BlendAmount;
			float _L3BlendContrast;
			float _L0Displacement;
			float _BumpScaleL2;
			float _L2ConstrainbyPaintedMask;
			float _BlurReflection;
			float _ReflectionIntensity;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL1;
			float _L2UseHeightmapDepth1;
			float _L1BlendContrast;
			float _ParallaxL2;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement;
			float _L1Heightmapcontrast;
			float _L1HeightmapSpread;
			float _L1BlendOpacity;
			float _L2Displacement;
			float _L2Heightmapcontrast;
			float _L2HeightmapSpread;
			float _L2BlendOpacity;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L3VisualizeHeightmap1;
			float _L2VisualizeHeightmap;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _AoIntensityL2;
			float _BrightnessL2;
			float _SaturationL2;
			float _AoWet;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _BaseMap;
			sampler2D _BaseColorL1;
			sampler2D _BaseColorL2;
			sampler2D _WetTex;
			samplerCUBE _Cubemap;
			sampler2D _BumpMap;
			sampler2D _BumpMapL1;
			sampler2D _BumpMapL2;


			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}
			inline float2 ParallaxOffset( half h, half height, half3 viewDir )
			{
				h = h * height - height/2.0;
				float3 v = normalize( viewDir );
				v.z += 0.42;
				return h* (v.xy / v.z);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 uv_MetallicGlossMapMAHS = v.ase_texcoord.xyz * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
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
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1300 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
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
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1301 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity979 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity979 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1302 );
				float VertexB116 = break106.b;
				float L2Opacity980 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity980 ));
				float4 temp_cast_11 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_11 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VertexOffset869 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1318 );
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult905 = lerp( lerpResult642 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult905;
				
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				
				o.ase_texcoord2.xyz = v.ase_texcoord.xyz;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.clipPos = MetaVertexPosition( v.vertex, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN , half ase_vface : VFACE ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_BaseMap = IN.ase_texcoord2.xyz.xy * _BaseMap_ST.xy + _BaseMap_ST.zw;
				float2 break26_g1250 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1250 = (float2(( break26_g1250.x * L0GlobalTilingX150 ) , ( break26_g1250.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1250 = (float2(( break26_g1250.x + L0GlobalOffsetX151 ) , ( break26_g1250.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xyz.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1054 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1054 = (float2(( break26_g1054.x * L0GlobalTilingX150 ) , ( break26_g1054.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1054 = (float2(( break26_g1054.x + L0GlobalOffsetX151 ) , ( break26_g1054.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1053 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ) );
				float3 ase_worldTangent = IN.ase_texcoord3.xyz;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1053 = ParallaxOffset( tex2DNode3_g1053.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1053 = (((ase_vface>0)?(paralaxOffset38_g1053):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1053;
				float4 tex2DNode7_g1249 = tex2D( _BaseMap, ( ( appendResult14_g1250 + appendResult13_g1250 ) + Layer0Parallax215 ) );
				float clampResult27_g1249 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1249 = ( _BaseColor * tex2DNode7_g1249 ).rgb;
				float desaturateDot29_g1249 = dot( desaturateInitialColor29_g1249, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1249 = lerp( desaturateInitialColor29_g1249, desaturateDot29_g1249.xxx, -clampResult27_g1249 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1249 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord2.xyz.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1248 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1248 = (float2(( break26_g1248.x * L1GlobalTilingX234 ) , ( break26_g1248.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1248 = (float2(( break26_g1248.x + L1GlobalOffsetX236 ) , ( break26_g1248.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord2.xyz.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1058 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1058 = (float2(( break26_g1058.x * L1GlobalTilingX234 ) , ( break26_g1058.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1058 = (float2(( break26_g1058.x + L1GlobalOffsetX236 ) , ( break26_g1058.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1057 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1058 + appendResult13_g1058 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1057 = ParallaxOffset( tex2DNode3_g1057.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1057 = (((ase_vface>0)?(paralaxOffset38_g1057):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1057;
				float4 tex2DNode7_g1247 = tex2D( _BaseColorL1, ( ( appendResult14_g1248 + appendResult13_g1248 ) + Layer1Parallax247 ) );
				float clampResult27_g1247 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1247 = ( _ColorL1 * tex2DNode7_g1247 ).rgb;
				float desaturateDot29_g1247 = dot( desaturateInitialColor29_g1247, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1247 = lerp( desaturateInitialColor29_g1247, desaturateDot29_g1247.xxx, -clampResult27_g1247 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1247 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1281 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1053.b;
				float temp_output_49_0_g1281 = ( _L1BlendContrast - 1.5 );
				float clampResult11_g1281 = clamp( ( ( _L1BlendAmount - 2.37 ) + (( 1.0 + temp_output_49_0_g1281 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_49_0_g1281 - ( 1.0 + temp_output_49_0_g1281 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1281 = clampResult11_g1281;
				float blendOpDest18_g1281 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1281 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1281 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1281 * blendOpDest18_g1281 ) )) ):( clampResult11_g1281 ));
				float blendOpDest31_g1281 = temp_output_21_0_g1281;
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1281 + blendOpDest31_g1281 ) )) ):( temp_output_21_0_g1281 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xyz.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1252 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1252 = (float2(( break26_g1252.x * L2GlobalTilingX484 ) , ( break26_g1252.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1252 = (float2(( break26_g1252.x + L2GlobalOffsetX483 ) , ( break26_g1252.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xyz.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1055 = ParallaxOffset( tex2DNode3_g1055.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1055 = (((ase_vface>0)?(paralaxOffset38_g1055):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1055;
				float4 tex2DNode7_g1251 = tex2D( _BaseColorL2, ( ( appendResult14_g1252 + appendResult13_g1252 ) + Layer2Parallax462 ) );
				float clampResult27_g1251 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1251 = ( _ColorL2 * tex2DNode7_g1251 ).rgb;
				float desaturateDot29_g1251 = dot( desaturateInitialColor29_g1251, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1251 = lerp( desaturateInitialColor29_g1251, desaturateDot29_g1251.xxx, -clampResult27_g1251 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1251 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1298 = VertexB116;
				float temp_output_55_0_g1298 = ( _L2BlendAmount - 2.37 );
				float lerpResult47_g1298 = lerp( temp_output_55_0_g1298 , ( temp_output_55_0_g1298 - temp_output_55_0_g1298 ) , VertexG115);
				float Layer1Heightmap510 = tex2DNode3_g1057.b;
				float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
				float temp_output_56_0_g1298 = ( _L2BlendContrast - 1.5 );
				float clampResult11_g1298 = clamp( ( lerpResult47_g1298 + (( 1.0 + temp_output_56_0_g1298 ) + (lerpResult830 - 0.0) * (-temp_output_56_0_g1298 - ( 1.0 + temp_output_56_0_g1298 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1298 = clampResult11_g1298;
				float blendOpDest18_g1298 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1298 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1298 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1298 * blendOpDest18_g1298 ) )) ):( clampResult11_g1298 ));
				float blendOpDest31_g1298 = temp_output_21_0_g1298;
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1298 + blendOpDest31_g1298 ) )) ):( temp_output_21_0_g1298 )) * _L2BlendOpacity );
				float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
				float4 temp_cast_6 = (1.0).xxxx;
				float2 uv_WetTex = IN.ase_texcoord2.xyz.xy * _WetTex_ST.xy + _WetTex_ST.zw;
				float4 tex2DNode727 = tex2D( _WetTex, uv_WetTex );
				#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_6;
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
				float VertexA117 = break106.a;
				float temp_output_21_0_g1297 = VertexA117;
				float temp_output_61_0_g1297 = ( _L3BlendAmount - 2.37 );
				float lerpResult50_g1297 = lerp( temp_output_61_0_g1297 , ( temp_output_61_0_g1297 - 2.0 ) , VertexG115);
				float lerpResult55_g1297 = lerp( lerpResult50_g1297 , -1.0 , VertexB116);
				float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
				float temp_output_63_0_g1297 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1297 = clamp( ( lerpResult55_g1297 + (( 1.0 + temp_output_63_0_g1297 ) + (lerpResult819 - 0.0) * (-temp_output_63_0_g1297 - ( 1.0 + temp_output_63_0_g1297 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1297 = clampResult11_g1297;
				float blendOpDest18_g1297 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1297 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1297 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1297 * blendOpDest18_g1297 ) )) ):( clampResult11_g1297 ));
				float blendOpDest31_g1297 = temp_output_21_0_g1297;
				float temp_output_971_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1297 + blendOpDest31_g1297 ) )) ):( temp_output_21_0_g1297 ));
				float VertexAHeightmap799 = temp_output_971_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				float4 temp_cast_7 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1300;
				float VertexR114 = break106.r;
				float4 temp_cast_9 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VisHeightmap612 = temp_output_8_0_g1301;
				float4 temp_cast_11 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_11 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VisHeightmap638 = temp_output_8_0_g1302;
				float4 temp_cast_14 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_14 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VisHeightmap868 = temp_output_10_0_g1318;
				
				float2 uv_BumpMap = IN.ase_texcoord2.xyz.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1315 = uv_BumpMap;
				float2 appendResult14_g1315 = (float2(( break26_g1315.x * L0GlobalTilingX150 ) , ( break26_g1315.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1315 = (float2(( break26_g1315.x + L0GlobalOffsetX151 ) , ( break26_g1315.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1314 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1315 + appendResult13_g1315 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1314.z = lerp( 1, unpack4_g1314.z, saturate(_BumpScale) );
				float3 Layer0Normal193 = unpack4_g1314;
				float2 uv_BumpMapL1 = IN.ase_texcoord2.xyz.xy * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
				float2 break26_g1311 = uv_BumpMapL1;
				float2 appendResult14_g1311 = (float2(( break26_g1311.x * L1GlobalTilingX234 ) , ( break26_g1311.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1311 = (float2(( break26_g1311.x + L1GlobalOffsetX236 ) , ( break26_g1311.y + L1GlobalOffsetY237 )));
				float3 unpack4_g1310 = UnpackNormalScale( tex2D( _BumpMapL1, ( ( appendResult14_g1311 + appendResult13_g1311 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
				unpack4_g1310.z = lerp( 1, unpack4_g1310.z, saturate(_BumpScaleL1) );
				float3 tex2DNode4_g1310 = unpack4_g1310;
				float3 Layer1Normal260 = tex2DNode4_g1310;
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
				float2 uv_BumpMapL2 = IN.ase_texcoord2.xyz.xy * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
				float2 break26_g1317 = uv_BumpMapL2;
				float2 appendResult14_g1317 = (float2(( break26_g1317.x * L2GlobalTilingX484 ) , ( break26_g1317.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1317 = (float2(( break26_g1317.x + L2GlobalOffsetX483 ) , ( break26_g1317.y + L2GlobalOffsetY485 )));
				float3 unpack4_g1316 = UnpackNormalScale( tex2D( _BumpMapL2, ( ( appendResult14_g1317 + appendResult13_g1317 ) + Layer2Parallax462 ) ), _BumpScaleL2 );
				unpack4_g1316.z = lerp( 1, unpack4_g1316.z, saturate(_BumpScaleL2) );
				float3 tex2DNode4_g1316 = unpack4_g1316;
				float3 Layer2Normal477 = tex2DNode4_g1316;
				float3 lerpResult127 = lerp( lerpResult133 , Layer2Normal477 , VertexBHeightmap652);
				float3 lerpResult128 = lerp( lerpResult127 , float3(0,0,1) , ( VertexAHeightmap799 * WetOpacity768 ));
				float3 Normal129 = lerpResult128;
				float3 worldRefl28_g1312 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, Normal129 ), dot( tanToWorld1, Normal129 ), dot( tanToWorld2, Normal129 ) ) ) );
				float4 texCUBENode27_g1312 = texCUBElod( _Cubemap, float4( worldRefl28_g1312, _BlurReflection) );
				float clampResult39_g1312 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
				float4 temp_cast_16 = (1.0).xxxx;
				float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1312 * ( texCUBENode27_g1312.a * clampResult39_g1312 ) * _ColorCubemap1 ) * temp_cast_16 ) , VertexA117);
				float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
				
				
				float3 Albedo = (( _L3VisualizeHeightmap1 )?( Layer3VisHeightmap868 ):( (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) )) )).xyz;
				float3 Emission = Cubemap742.rgb;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = Albedo;
				metaInput.Emission = Emission;
				
				return MetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			#pragma enable_d3d11_debug_symbols
			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER _WETBASECOLOR_LAYER1 _WETBASECOLOR_LAYER2


			#pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _BaseMap_ST;
			float4 _BaseColorL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BaseColor;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _ColorCubemap1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _BumpMapL1_ST;
			float4 _ColorL2;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _ColorL1;
			float _BumpScale;
			float _L3ConstrainbyPaintedMask;
			float _L3BlendAmount;
			float _L3UseHeightmapDepth1;
			float _L2BlendContrast;
			float _L2BlendAmount;
			float _L3BlendContrast;
			float _L0Displacement;
			float _BumpScaleL2;
			float _L2ConstrainbyPaintedMask;
			float _BlurReflection;
			float _ReflectionIntensity;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL1;
			float _L2UseHeightmapDepth1;
			float _L1BlendContrast;
			float _ParallaxL2;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement;
			float _L1Heightmapcontrast;
			float _L1HeightmapSpread;
			float _L1BlendOpacity;
			float _L2Displacement;
			float _L2Heightmapcontrast;
			float _L2HeightmapSpread;
			float _L2BlendOpacity;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L3VisualizeHeightmap1;
			float _L2VisualizeHeightmap;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _AoIntensityL2;
			float _BrightnessL2;
			float _SaturationL2;
			float _AoWet;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _BaseMap;
			sampler2D _BaseColorL1;
			sampler2D _BaseColorL2;
			sampler2D _WetTex;


			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}
			inline float2 ParallaxOffset( half h, half height, half3 viewDir )
			{
				h = h * height - height/2.0;
				float3 v = normalize( viewDir );
				v.z += 0.42;
				return h* (v.xy / v.z);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 uv_MetallicGlossMapMAHS = v.ase_texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
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
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1300 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
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
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1301 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity979 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity979 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1302 );
				float VertexB116 = break106.b;
				float L2Opacity980 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity980 ));
				float4 temp_cast_11 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_11 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VertexOffset869 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1318 );
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult905 = lerp( lerpResult642 , Layer3VertexOffset869 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult905;
				
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN , half ase_vface : VFACE ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_BaseMap = IN.ase_texcoord2.xy * _BaseMap_ST.xy + _BaseMap_ST.zw;
				float2 break26_g1250 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1250 = (float2(( break26_g1250.x * L0GlobalTilingX150 ) , ( break26_g1250.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1250 = (float2(( break26_g1250.x + L0GlobalOffsetX151 ) , ( break26_g1250.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1054 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1054 = (float2(( break26_g1054.x * L0GlobalTilingX150 ) , ( break26_g1054.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1054 = (float2(( break26_g1054.x + L0GlobalOffsetX151 ) , ( break26_g1054.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1053 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1054 + appendResult13_g1054 ) + float2( 0,0 ) ) );
				float3 ase_worldTangent = IN.ase_texcoord3.xyz;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1053 = ParallaxOffset( tex2DNode3_g1053.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1053 = (((ase_vface>0)?(paralaxOffset38_g1053):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1053;
				float4 tex2DNode7_g1249 = tex2D( _BaseMap, ( ( appendResult14_g1250 + appendResult13_g1250 ) + Layer0Parallax215 ) );
				float clampResult27_g1249 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1249 = ( _BaseColor * tex2DNode7_g1249 ).rgb;
				float desaturateDot29_g1249 = dot( desaturateInitialColor29_g1249, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1249 = lerp( desaturateInitialColor29_g1249, desaturateDot29_g1249.xxx, -clampResult27_g1249 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1249 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord2.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1248 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1248 = (float2(( break26_g1248.x * L1GlobalTilingX234 ) , ( break26_g1248.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1248 = (float2(( break26_g1248.x + L1GlobalOffsetX236 ) , ( break26_g1248.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1058 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1058 = (float2(( break26_g1058.x * L1GlobalTilingX234 ) , ( break26_g1058.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1058 = (float2(( break26_g1058.x + L1GlobalOffsetX236 ) , ( break26_g1058.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1057 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1058 + appendResult13_g1058 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1057 = ParallaxOffset( tex2DNode3_g1057.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1057 = (((ase_vface>0)?(paralaxOffset38_g1057):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1057;
				float4 tex2DNode7_g1247 = tex2D( _BaseColorL1, ( ( appendResult14_g1248 + appendResult13_g1248 ) + Layer1Parallax247 ) );
				float clampResult27_g1247 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1247 = ( _ColorL1 * tex2DNode7_g1247 ).rgb;
				float desaturateDot29_g1247 = dot( desaturateInitialColor29_g1247, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1247 = lerp( desaturateInitialColor29_g1247, desaturateDot29_g1247.xxx, -clampResult27_g1247 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1247 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1281 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1053.b;
				float temp_output_49_0_g1281 = ( _L1BlendContrast - 1.5 );
				float clampResult11_g1281 = clamp( ( ( _L1BlendAmount - 2.37 ) + (( 1.0 + temp_output_49_0_g1281 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_49_0_g1281 - ( 1.0 + temp_output_49_0_g1281 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1281 = clampResult11_g1281;
				float blendOpDest18_g1281 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1281 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1281 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1281 * blendOpDest18_g1281 ) )) ):( clampResult11_g1281 ));
				float blendOpDest31_g1281 = temp_output_21_0_g1281;
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1281 + blendOpDest31_g1281 ) )) ):( temp_output_21_0_g1281 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1252 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1252 = (float2(( break26_g1252.x * L2GlobalTilingX484 ) , ( break26_g1252.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1252 = (float2(( break26_g1252.x + L2GlobalOffsetX483 ) , ( break26_g1252.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1056 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1056 = (float2(( break26_g1056.x * L2GlobalTilingX484 ) , ( break26_g1056.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1056 = (float2(( break26_g1056.x + L2GlobalOffsetX483 ) , ( break26_g1056.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1055 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1056 + appendResult13_g1056 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1055 = ParallaxOffset( tex2DNode3_g1055.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1055 = (((ase_vface>0)?(paralaxOffset38_g1055):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1055;
				float4 tex2DNode7_g1251 = tex2D( _BaseColorL2, ( ( appendResult14_g1252 + appendResult13_g1252 ) + Layer2Parallax462 ) );
				float clampResult27_g1251 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1251 = ( _ColorL2 * tex2DNode7_g1251 ).rgb;
				float desaturateDot29_g1251 = dot( desaturateInitialColor29_g1251, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1251 = lerp( desaturateInitialColor29_g1251, desaturateDot29_g1251.xxx, -clampResult27_g1251 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1251 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1298 = VertexB116;
				float temp_output_55_0_g1298 = ( _L2BlendAmount - 2.37 );
				float lerpResult47_g1298 = lerp( temp_output_55_0_g1298 , ( temp_output_55_0_g1298 - temp_output_55_0_g1298 ) , VertexG115);
				float Layer1Heightmap510 = tex2DNode3_g1057.b;
				float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
				float temp_output_56_0_g1298 = ( _L2BlendContrast - 1.5 );
				float clampResult11_g1298 = clamp( ( lerpResult47_g1298 + (( 1.0 + temp_output_56_0_g1298 ) + (lerpResult830 - 0.0) * (-temp_output_56_0_g1298 - ( 1.0 + temp_output_56_0_g1298 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1298 = clampResult11_g1298;
				float blendOpDest18_g1298 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1298 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1298 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1298 * blendOpDest18_g1298 ) )) ):( clampResult11_g1298 ));
				float blendOpDest31_g1298 = temp_output_21_0_g1298;
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1298 + blendOpDest31_g1298 ) )) ):( temp_output_21_0_g1298 )) * _L2BlendOpacity );
				float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
				float4 temp_cast_6 = (1.0).xxxx;
				float2 uv_WetTex = IN.ase_texcoord2.xy * _WetTex_ST.xy + _WetTex_ST.zw;
				float4 tex2DNode727 = tex2D( _WetTex, uv_WetTex );
				#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_6;
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
				float VertexA117 = break106.a;
				float temp_output_21_0_g1297 = VertexA117;
				float temp_output_61_0_g1297 = ( _L3BlendAmount - 2.37 );
				float lerpResult50_g1297 = lerp( temp_output_61_0_g1297 , ( temp_output_61_0_g1297 - 2.0 ) , VertexG115);
				float lerpResult55_g1297 = lerp( lerpResult50_g1297 , -1.0 , VertexB116);
				float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
				float Layer2Heightmap511 = tex2DNode3_g1055.b;
				float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
				float temp_output_63_0_g1297 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1297 = clamp( ( lerpResult55_g1297 + (( 1.0 + temp_output_63_0_g1297 ) + (lerpResult819 - 0.0) * (-temp_output_63_0_g1297 - ( 1.0 + temp_output_63_0_g1297 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1297 = clampResult11_g1297;
				float blendOpDest18_g1297 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1297 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1297 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1297 * blendOpDest18_g1297 ) )) ):( clampResult11_g1297 ));
				float blendOpDest31_g1297 = temp_output_21_0_g1297;
				float temp_output_971_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1297 + blendOpDest31_g1297 ) )) ):( temp_output_21_0_g1297 ));
				float VertexAHeightmap799 = temp_output_971_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				float4 temp_cast_7 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1300 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1300;
				float VertexR114 = break106.r;
				float4 temp_cast_9 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1301 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VisHeightmap612 = temp_output_8_0_g1301;
				float4 temp_cast_11 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1302 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_11 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VisHeightmap638 = temp_output_8_0_g1302;
				float4 temp_cast_14 = (1.0).xxxx;
				float4 temp_output_10_0_g1318 = ( temp_cast_14 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer3VisHeightmap868 = temp_output_10_0_g1318;
				
				
				float3 Albedo = (( _L3VisualizeHeightmap1 )?( Layer3VisHeightmap868 ):( (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) )) )).xyz;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4( Albedo, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}
		
	}
	CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
	Fallback "Hidden/InternalErrorShader"
	
}