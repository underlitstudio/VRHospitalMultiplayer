Shader "Ciconia Studio/CS_Polybrush/URP/Pro/Snow"
{
	Properties
	{
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[Space(35)][Header(Base Layer (R)________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GlobalXYTilingXYZWOffsetXY("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
		_BaseColor("Color -->BaseColor Intensity(A)", Color) = (1,1,1,1)
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
		[HDR][Space(45)]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		_EmissionIntensity("Intensity", Range( 0 , 2)) = 1
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
		[Space(15)][Toggle(_USEEMISSIONFROMMAINPROPERTIESL1_ON)] _UseEmissionFromMainPropertiesL1("Use Emission From Main Properties", Float) = 0
		_EmissionIntensityL1("Intensity", Range( 0 , 2)) = 1
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L1VisualizeHeightmap("Visualize Heightmap", Float) = 0
		_L1HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L1Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L1Displacement("Displacement", Float) = 0
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L1UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L1ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L1BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L1BlendAmount("Amount", Float) = 0.5
		_L1BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Layer2 (B) Snow Properties_____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________ )][Space(15)]_GlobalXYTilingXYZWOffsetXYSnow("Global --> XY(TilingXY) - ZW(OffsetXY)", Vector) = (1,1,0,0)
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
		[Space(15)][Toggle(_USEEMISSIONFROMMAINPROPERTIESL2_ON)] _UseEmissionFromMainPropertiesL2("Use Emission From Main Properties", Float) = 0
		_EmissionIntensityL2("Intensity", Range( 0 , 2)) = 1
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L2VisualizeHeightmap("Visualize Heightmap", Float) = 0
		_L2HeightmapSpread("Heightmap Spread", Float) = 0.5
		_L2Heightmapcontrast("Heightmap contrast", Float) = 1
		[Space(15)]_L2Displacement("Displacement", Float) = 0
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L2UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L2ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L2BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L2BlendAmount("Amount", Float) = 0.5
		_L2BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(__________ Sparkles Properties __________)][Space(15)][KeywordEnum(None,SmoothnessSparkles,EmissiveSparkles)] _SparkleSource("Source", Float) = 2
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
		[Space(35)][Header(Tessellation Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)]
		[Space(15)]_TessValue("Tessellation", Range(1, 32)) = 8
		[Space(15)]_TessMin("Distance Min", Float) = 1
		_TessMax("Distance Max", Float) = 20

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

		#pragma prefer_hlslcc gles
		#pragma exclude_renderers d3d11_9x 


		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
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
		#endif //ASE_TESS_FUNCS
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
			#define ASE_SRP_VERSION 70403

			
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
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma shader_feature_local _VISUALIZESPARKLE_NONE _VISUALIZESPARKLE_DOTMASK _VISUALIZESPARKLE_SPARKLEMAP
			#pragma shader_feature_local _SPARKLESOURCE_NONE _SPARKLESOURCE_SMOOTHNESSSPARKLES _SPARKLESOURCE_EMISSIVESPARKLES
			#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL2_ON
			#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL1_ON


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
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float4 _EmissionColor;
			float4 _BaseMap_ST;
			float4 _EmissionMap_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _BumpMapL2_ST;
			float4 _ColorL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float _TilingCrystals;
			float _Desaturatecrystals;
			float _AmountSparkle;
			float _CrystalsIntensity;
			float _ContrastSparkles;
			float _BumpScale;
			float _SparklePower;
			float _IntensityDotMask;
			float _BumpScaleL1;
			float _ContrastDotMask;
			float _L0Displacement;
			float _SpreadDotMask;
			float _EmissionIntensity;
			float _EmissionIntensityL1;
			float _AoMask;
			float _AoIntensityL2;
			float _ShadowMask;
			float _EmissionIntensityL2;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _BlendingModeCrystals;
			float _BumpScaleL2;
			float _TilingInstance;
			float _SaturationL2;
			float _L2BlendContrast;
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
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _AoIntensity;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _L2BlendAmount;
			float _TilingDotMask;
			float _AoIntensityL1;
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
			sampler2D _SparkleMask;
			sampler2D _BumpMap;
			sampler2D _BumpMapL1;
			sampler2D _BumpMapL2;
			sampler2D _EmissionMap;


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
			
			inline float4 TriplanarSampling274_g1575( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
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
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1567 );
				float2 uv_MetallicGlossMapMAHSL1 = v.texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1571 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity950 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1574 );
				float VertexB116 = break106.b;
				float L2Opacity948 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity948 ));
				float4 VertexOffset621 = lerpResult642;
				
				o.ase_texcoord7.xy = v.texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.rgb;
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

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag ( VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						, FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC ) : SV_Target
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

				float2 uv_BaseMap = IN.ase_texcoord7.xy * _BaseMap_ST.xy + _BaseMap_ST.zw;
				float2 break26_g1561 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1561 = (float2(( break26_g1561.x * L0GlobalTilingX150 ) , ( break26_g1561.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1561 = (float2(( break26_g1561.x + L0GlobalOffsetX151 ) , ( break26_g1561.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord7.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ) );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1491 = ParallaxOffset( tex2DNode3_g1491.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1491 = (((ase_vface>0)?(paralaxOffset38_g1491):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1491;
				float4 tex2DNode7_g1560 = tex2D( _BaseMap, ( ( appendResult14_g1561 + appendResult13_g1561 ) + Layer0Parallax215 ) );
				float4 lerpResult53_g1560 = lerp( _BaseColor , ( ( _BaseColor * tex2DNode7_g1560 ) * _BaseColor.a ) , _BaseColor.a);
				float clampResult27_g1560 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1560 = lerpResult53_g1560.rgb;
				float desaturateDot29_g1560 = dot( desaturateInitialColor29_g1560, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1560 = lerp( desaturateInitialColor29_g1560, desaturateDot29_g1560.xxx, -clampResult27_g1560 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1560 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord7.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1563 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1563 = (float2(( break26_g1563.x * L1GlobalTilingX234 ) , ( break26_g1563.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1563 = (float2(( break26_g1563.x + L1GlobalOffsetX236 ) , ( break26_g1563.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord7.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1552 = ParallaxOffset( tex2DNode3_g1552.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1552 = (((ase_vface>0)?(paralaxOffset38_g1552):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1552;
				float4 tex2DNode7_g1562 = tex2D( _BaseColorL1, ( ( appendResult14_g1563 + appendResult13_g1563 ) + Layer1Parallax247 ) );
				float clampResult27_g1562 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1562 = ( _ColorL1 * tex2DNode7_g1562 ).rgb;
				float desaturateDot29_g1562 = dot( desaturateInitialColor29_g1562, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1562 = lerp( desaturateInitialColor29_g1562, desaturateDot29_g1562.xxx, -clampResult27_g1562 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1562 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1554 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float clampResult11_g1554 = clamp( ( (-4.0 + (_L1BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L1BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L1BlendContrast - ( 1.0 + _L1BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float temp_output_32_0_g1554 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1554 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc18_g1554 = clampResult11_g1554;
				float blendOpDest18_g1554 = temp_output_32_0_g1554;
				float blendOpSrc31_g1554 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1554 * blendOpDest18_g1554 ) )) ):( clampResult11_g1554 ));
				float blendOpDest31_g1554 = temp_output_21_0_g1554;
				float temp_output_31_0_g1554 = ( saturate( ( blendOpSrc31_g1554 + blendOpDest31_g1554 ) ));
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( temp_output_31_0_g1554 ):( temp_output_21_0_g1554 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord7.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1565 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1565 = (float2(( break26_g1565.x * L2GlobalTilingX484 ) , ( break26_g1565.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1565 = (float2(( break26_g1565.x + L2GlobalOffsetX483 ) , ( break26_g1565.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord7.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1555 = ParallaxOffset( tex2DNode3_g1555.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1555 = (((ase_vface>0)?(paralaxOffset38_g1555):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1555;
				float4 tex2DNode7_g1564 = tex2D( _BaseColorL2, ( ( appendResult14_g1565 + appendResult13_g1565 ) + Layer2Parallax462 ) );
				float clampResult27_g1564 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1564 = ( _ColorL2 * tex2DNode7_g1564 ).rgb;
				float desaturateDot29_g1564 = dot( desaturateInitialColor29_g1564, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1564 = lerp( desaturateInitialColor29_g1564, desaturateDot29_g1564.xxx, -clampResult27_g1564 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1564 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1566 = VertexB116;
				float L1_HeightmapL0_Mask1069 = clampResult11_g1554;
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float clampResult11_g1566 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer1Heightmap510 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float L1_VertexG_Mask1070 = temp_output_32_0_g1554;
				float lerpResult63_g1566 = lerp( L1_HeightmapL0_Mask1069 , clampResult11_g1566 , L1_VertexG_Mask1070);
				float temp_output_32_0_g1566 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1566 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc18_g1566 = lerpResult63_g1566;
				float blendOpDest18_g1566 = temp_output_32_0_g1566;
				float blendOpSrc31_g1566 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1566 * blendOpDest18_g1566 ) )) ):( lerpResult63_g1566 ));
				float blendOpDest31_g1566 = temp_output_21_0_g1566;
				float saferPower66_g1566 = abs( ( saturate( ( blendOpSrc31_g1566 + blendOpDest31_g1566 ) )) );
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( pow( saferPower66_g1566 , 2.0 ) ):( temp_output_21_0_g1566 )) * _L2BlendOpacity );
				float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
				float4 BaseColor121 = lerpResult100;
				float4 temp_cast_6 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_6 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1567;
				float VertexR114 = break106.r;
				float4 temp_cast_8 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_8 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VisHeightmap612 = temp_output_8_0_g1571;
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_10 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_10 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VisHeightmap638 = temp_output_8_0_g1574;
				float2 texCoord106_g1575 = IN.ase_texcoord7.xy * float2( 1,1 ) + float2( 0,0 );
				float clampResult149_g1575 = clamp( _TilingInstance , 0.0 , 1000.0 );
				float2 temp_output_175_0_g1575 = Layer2Parallax462;
				float temp_output_123_0_g1575 = ( tex2D( _SparkleMask, ( ( ( texCoord106_g1575 * _TilingDotMask ) * clampResult149_g1575 ) + temp_output_175_0_g1575 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
				float saferPower230_g1575 = abs( temp_output_123_0_g1575 );
				float temp_output_121_0_g1575 = ( _ContrastDotMask + 1.0 );
				float clampResult118_g1575 = clamp( pow( saferPower230_g1575 , temp_output_121_0_g1575 ) , 0.0 , 1.0 );
				float clampResult240_g1575 = clamp( _SparklePower , 0.0 , 100000.0 );
				float temp_output_277_0_g1575 = ( ( clampResult118_g1575 * _IntensityDotMask ) * clampResult240_g1575 );
				float VisualizeDotMap980 = temp_output_277_0_g1575;
				float4 temp_cast_12 = (VisualizeDotMap980).xxxx;
				float temp_output_135_0_g1575 = ( _ContrastSparkles - -1.0 );
				float2 temp_cast_13 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1575 )).xx;
				float3 worldToObj273_g1575 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float4 triplanar274_g1575 = TriplanarSampling274_g1575( _SparkleMask, ( ( ( worldToObj273_g1575 / 4.0 ) - WorldViewDirection ) + float3( temp_output_175_0_g1575 ,  0.0 ) ), WorldNormal, 1.0, temp_cast_13, 1.0, 0 );
				float clampResult49_g1575 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
				float3 desaturateInitialColor53_g1575 = triplanar274_g1575.xyz;
				float desaturateDot53_g1575 = dot( desaturateInitialColor53_g1575, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar53_g1575 = lerp( desaturateInitialColor53_g1575, desaturateDot53_g1575.xxx, clampResult49_g1575 );
				float lerpResult246_g1575 = lerp( 0.6 , 1.0 , _AmountSparkle);
				float4 clampResult74_g1575 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1575,float4( desaturateVar53_g1575 , 0.0 )) + (( -1.0 - temp_output_135_0_g1575 ) + (lerpResult246_g1575 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1575 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
				float4 VisualizeSparklesMap979 = clampResult74_g1575;
				#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1001 = (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) ));
				#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1001 = temp_cast_12;
				#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1001 = VisualizeSparklesMap979;
				#else
				float4 staticSwitch1001 = (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) ));
				#endif
				
				float2 uv_BumpMap = IN.ase_texcoord7.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1585 = uv_BumpMap;
				float2 appendResult14_g1585 = (float2(( break26_g1585.x * L0GlobalTilingX150 ) , ( break26_g1585.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1585 = (float2(( break26_g1585.x + L0GlobalOffsetX151 ) , ( break26_g1585.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1584 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1585 + appendResult13_g1585 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1584.z = lerp( 1, unpack4_g1584.z, saturate(_BumpScale) );
				float3 tex2DNode4_g1584 = unpack4_g1584;
				float3 Layer0Normal193 = tex2DNode4_g1584;
				float2 uv_BumpMapL1 = IN.ase_texcoord7.xy * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
				float2 break26_g1583 = uv_BumpMapL1;
				float2 appendResult14_g1583 = (float2(( break26_g1583.x * L1GlobalTilingX234 ) , ( break26_g1583.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1583 = (float2(( break26_g1583.x + L1GlobalOffsetX236 ) , ( break26_g1583.y + L1GlobalOffsetY237 )));
				float3 unpack4_g1582 = UnpackNormalScale( tex2D( _BumpMapL1, ( ( appendResult14_g1583 + appendResult13_g1583 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
				unpack4_g1582.z = lerp( 1, unpack4_g1582.z, saturate(_BumpScaleL1) );
				float3 tex2DNode4_g1582 = unpack4_g1582;
				float3 Layer1Normal260 = tex2DNode4_g1582;
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
				float2 uv_BumpMapL2 = IN.ase_texcoord7.xy * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
				float2 break26_g1587 = uv_BumpMapL2;
				float2 appendResult14_g1587 = (float2(( break26_g1587.x * L2GlobalTilingX484 ) , ( break26_g1587.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1587 = (float2(( break26_g1587.x + L2GlobalOffsetX483 ) , ( break26_g1587.y + L2GlobalOffsetY485 )));
				float3 unpack4_g1586 = UnpackNormalScale( tex2D( _BumpMapL2, ( ( appendResult14_g1587 + appendResult13_g1587 ) + Layer2Parallax462 ) ), _BumpScaleL2 );
				unpack4_g1586.z = lerp( 1, unpack4_g1586.z, saturate(_BumpScaleL2) );
				float3 tex2DNode4_g1586 = unpack4_g1586;
				float3 Layer2Normal477 = tex2DNode4_g1586;
				float3 lerpResult127 = lerp( lerpResult133 , Layer2Normal477 , VertexBHeightmap652);
				float3 Normal129 = lerpResult127;
				
				float2 uv_EmissionMap = IN.ase_texcoord7.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float2 break26_g1581 = uv_EmissionMap;
				float2 appendResult14_g1581 = (float2(( break26_g1581.x * L0GlobalTilingX150 ) , ( break26_g1581.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1581 = (float2(( break26_g1581.x + L0GlobalOffsetX151 ) , ( break26_g1581.y + L0GlobalOffsetY148 )));
				float4 temp_output_5_0_g1580 = ( _EmissionColor * tex2D( _EmissionMap, ( ( appendResult14_g1581 + appendResult13_g1581 ) + float2( 0,0 ) ) ) );
				float4 Layer0Emission972 = ( temp_output_5_0_g1580 * _EmissionIntensity );
				float blendOpSrc1115 = VertexGHeightmap352;
				float blendOpDest1115 = VertexBHeightmap652;
				float4 temp_output_1108_0 = ( Layer0Emission972 * ( 1.0 - ( saturate( max( blendOpSrc1115, blendOpDest1115 ) )) ) );
				float4 Layer0EmissionRGB1109 = temp_output_5_0_g1580;
				float4 lerpResult1095 = lerp( temp_output_1108_0 , ( Layer0EmissionRGB1109 * _EmissionIntensityL1 ) , ( VertexGHeightmap352 * ( 1.0 - VertexBHeightmap652 ) ));
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL1_ON
				float4 staticSwitch1085 = lerpResult1095;
				#else
				float4 staticSwitch1085 = temp_output_1108_0;
				#endif
				float4 temp_output_108_0_g1575 = ( clampResult74_g1575 * temp_output_277_0_g1575 );
				float blendOpSrc34_g1555 = tex2DNode3_g1555.g;
				float blendOpDest34_g1555 = ( 1.0 - _AoIntensityL2 );
				float Layer2Ao479 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1555 ) * ( 1.0 - blendOpDest34_g1555 ) ) ));
				float4 temp_cast_18 = (Layer2Ao479).xxxx;
				float dotResult152_g1575 = dot( WorldNormal , SafeNormalize(_MainLightPosition.xyz) );
				float temp_output_153_0_g1575 = max( dotResult152_g1575 , 0.0 );
				float ase_lightAtten = 0;
				Light ase_mainLight = GetMainLight( ShadowCoords );
				ase_lightAtten = ase_mainLight.distanceAttenuation * ase_mainLight.shadowAttenuation;
				float lerpResult169_g1575 = lerp( ( temp_output_153_0_g1575 * _MainLightColor.a ) , ( temp_output_153_0_g1575 * ( ase_lightAtten * _MainLightColor.a ) ) , _ShadowMask);
				float4 temp_output_165_0_g1575 = ( (( _AoMask )?( ( temp_output_108_0_g1575 * temp_cast_18 ) ):( temp_output_108_0_g1575 )) * lerpResult169_g1575 );
				float4 temp_output_1082_0 = temp_output_165_0_g1575;
				float4 SparklesCrystals977 = temp_output_1082_0;
				float saferPower1140 = abs( VertexBHeightmap652 );
				float4 lerpResult1141 = lerp( float4( 0,0,0,0 ) , SparklesCrystals977 , pow( saferPower1140 , 3.0 ));
				float4 blendOpSrc1154 = staticSwitch1085;
				float4 blendOpDest1154 = lerpResult1141;
				float4 lerpResult1130 = lerp( staticSwitch1085 , ( Layer0EmissionRGB1109 * _EmissionIntensityL2 ) , VertexBHeightmap652);
				float4 blendOpSrc1132 = lerpResult1130;
				float4 blendOpDest1132 = lerpResult1141;
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch994 = ( saturate( max( blendOpSrc1132, blendOpDest1132 ) ));
				#else
				float4 staticSwitch994 = ( saturate( max( blendOpSrc1154, blendOpDest1154 ) ));
				#endif
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch996 = lerpResult1130;
				#else
				float4 staticSwitch996 = staticSwitch1085;
				#endif
				#if defined(_SPARKLESOURCE_NONE)
				float4 staticSwitch997 = staticSwitch996;
				#elif defined(_SPARKLESOURCE_SMOOTHNESSSPARKLES)
				float4 staticSwitch997 = staticSwitch996;
				#elif defined(_SPARKLESOURCE_EMISSIVESPARKLES)
				float4 staticSwitch997 = staticSwitch994;
				#else
				float4 staticSwitch997 = staticSwitch994;
				#endif
				float4 Emission998 = staticSwitch997;
				
				float Layer0Metallic211 = ( tex2DNode3_g1491.r * _Metallic );
				float Layer1Metallic263 = ( tex2DNode3_g1552.r * _MetallicL1 );
				float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
				float Layer2Metallic478 = ( tex2DNode3_g1555.r * _MetallicL2 );
				float lerpResult286 = lerp( lerpResult289 , Layer2Metallic478 , VertexBHeightmap652);
				float Metallic296 = lerpResult286;
				
				float temp_output_1_0_g1491 = ( tex2DNode3_g1491.a * _Glossiness );
				float Layer0Smoothness210 = temp_output_1_0_g1491;
				float temp_output_1_0_g1552 = ( tex2DNode3_g1552.a * _GlossinessL1 );
				float Layer1Smoothness264 = temp_output_1_0_g1552;
				float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
				float4 temp_cast_21 = (lerpResult301).xxxx;
				float temp_output_1_0_g1555 = ( tex2DNode3_g1555.a * _GlossinessL2 );
				float temp_output_646_7 = temp_output_1_0_g1555;
				float4 temp_cast_22 = (temp_output_646_7).xxxx;
				float4 temp_cast_23 = (temp_output_646_7).xxxx;
				float4 temp_cast_24 = (temp_output_646_7).xxxx;
				float4 blendOpSrc1011 = temp_cast_24;
				float4 blendOpDest1011 = SparklesCrystals977;
				float4 temp_cast_25 = (temp_output_646_7).xxxx;
				float4 blendOpSrc1010 = ( temp_cast_25 - SparklesCrystals977 );
				float4 blendOpDest1010 = SparklesCrystals977;
				float4 temp_cast_26 = (temp_output_646_7).xxxx;
				#if defined(_SPARKLESOURCE_NONE)
				float4 staticSwitch1013 = temp_cast_23;
				#elif defined(_SPARKLESOURCE_SMOOTHNESSSPARKLES)
				float4 staticSwitch1013 = (( _BlendingModeCrystals )?( ( saturate( ( 1.0 - ( 1.0 - blendOpSrc1010 ) * ( 1.0 - blendOpDest1010 ) ) )) ):( ( saturate( max( blendOpSrc1011, blendOpDest1011 ) )) ));
				#elif defined(_SPARKLESOURCE_EMISSIVESPARKLES)
				float4 staticSwitch1013 = temp_cast_22;
				#else
				float4 staticSwitch1013 = temp_cast_22;
				#endif
				float4 Layer2Smoothness480 = staticSwitch1013;
				float4 lerpResult299 = lerp( temp_cast_21 , Layer2Smoothness480 , VertexBHeightmap652);
				float4 Smoothness309 = lerpResult299;
				
				float blendOpSrc34_g1491 = tex2DNode3_g1491.g;
				float blendOpDest34_g1491 = ( 1.0 - _AoIntensity );
				float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1491 ) * ( 1.0 - blendOpDest34_g1491 ) ) ));
				float blendOpSrc34_g1552 = tex2DNode3_g1552.g;
				float blendOpDest34_g1552 = ( 1.0 - _AoIntensityL1 );
				float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1552 ) * ( 1.0 - blendOpDest34_g1552 ) ) ));
				float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
				float lerpResult311 = lerp( lerpResult312 , Layer2Ao479 , VertexBHeightmap652);
				float Ao321 = lerpResult311;
				
				float3 Albedo = staticSwitch1001.rgb;
				float3 Normal = Normal129;
				float3 Emission = Emission998.rgb;
				float3 Specular = 0.5;
				float Metallic = Metallic296;
				float Smoothness = Smoothness309.r;
				float Occlusion = Ao321;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

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
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal, 0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
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
				
				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
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
			#define ASE_SRP_VERSION 70403

			
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
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float4 _EmissionColor;
			float4 _BaseMap_ST;
			float4 _EmissionMap_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _BumpMapL2_ST;
			float4 _ColorL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float _TilingCrystals;
			float _Desaturatecrystals;
			float _AmountSparkle;
			float _CrystalsIntensity;
			float _ContrastSparkles;
			float _BumpScale;
			float _SparklePower;
			float _IntensityDotMask;
			float _BumpScaleL1;
			float _ContrastDotMask;
			float _L0Displacement;
			float _SpreadDotMask;
			float _EmissionIntensity;
			float _EmissionIntensityL1;
			float _AoMask;
			float _AoIntensityL2;
			float _ShadowMask;
			float _EmissionIntensityL2;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _BlendingModeCrystals;
			float _BumpScaleL2;
			float _TilingInstance;
			float _SaturationL2;
			float _L2BlendContrast;
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
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _AoIntensity;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _L2BlendAmount;
			float _TilingDotMask;
			float _AoIntensityL1;
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
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1567 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1571 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity950 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1574 );
				float VertexB116 = break106.b;
				float L2Opacity948 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity948 ));
				float4 VertexOffset621 = lerpResult642;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.rgb;
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

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
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
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

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
				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
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
			#define ASE_SRP_VERSION 70403

			
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
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float4 _EmissionColor;
			float4 _BaseMap_ST;
			float4 _EmissionMap_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _BumpMapL2_ST;
			float4 _ColorL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float _TilingCrystals;
			float _Desaturatecrystals;
			float _AmountSparkle;
			float _CrystalsIntensity;
			float _ContrastSparkles;
			float _BumpScale;
			float _SparklePower;
			float _IntensityDotMask;
			float _BumpScaleL1;
			float _ContrastDotMask;
			float _L0Displacement;
			float _SpreadDotMask;
			float _EmissionIntensity;
			float _EmissionIntensityL1;
			float _AoMask;
			float _AoIntensityL2;
			float _ShadowMask;
			float _EmissionIntensityL2;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _BlendingModeCrystals;
			float _BumpScaleL2;
			float _TilingInstance;
			float _SaturationL2;
			float _L2BlendContrast;
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
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _AoIntensity;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _L2BlendAmount;
			float _TilingDotMask;
			float _AoIntensityL1;
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
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1567 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1571 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity950 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1574 );
				float VertexB116 = break106.b;
				float L2Opacity948 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity948 ));
				float4 VertexOffset621 = lerpResult642;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffset621.rgb;
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

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
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
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
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
			#define ASE_SRP_VERSION 70403

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma shader_feature_local _VISUALIZESPARKLE_NONE _VISUALIZESPARKLE_DOTMASK _VISUALIZESPARKLE_SPARKLEMAP
			#pragma shader_feature_local _SPARKLESOURCE_NONE _SPARKLESOURCE_SMOOTHNESSSPARKLES _SPARKLESOURCE_EMISSIVESPARKLES
			#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL2_ON
			#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL1_ON
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
			#pragma multi_compile _ _SHADOWS_SOFT


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
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float4 _EmissionColor;
			float4 _BaseMap_ST;
			float4 _EmissionMap_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _BumpMapL2_ST;
			float4 _ColorL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float _TilingCrystals;
			float _Desaturatecrystals;
			float _AmountSparkle;
			float _CrystalsIntensity;
			float _ContrastSparkles;
			float _BumpScale;
			float _SparklePower;
			float _IntensityDotMask;
			float _BumpScaleL1;
			float _ContrastDotMask;
			float _L0Displacement;
			float _SpreadDotMask;
			float _EmissionIntensity;
			float _EmissionIntensityL1;
			float _AoMask;
			float _AoIntensityL2;
			float _ShadowMask;
			float _EmissionIntensityL2;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _BlendingModeCrystals;
			float _BumpScaleL2;
			float _TilingInstance;
			float _SaturationL2;
			float _L2BlendContrast;
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
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _AoIntensity;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _L2BlendAmount;
			float _TilingDotMask;
			float _AoIntensityL1;
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
			sampler2D _SparkleMask;
			sampler2D _EmissionMap;


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
			
			inline float4 TriplanarSampling274_g1575( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
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
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 uv_MetallicGlossMapMAHS = v.ase_texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1567 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1571 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity950 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1574 );
				float VertexB116 = break106.b;
				float L2Opacity948 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity948 ));
				float4 VertexOffset621 = lerpResult642;
				
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
				float3 vertexValue = VertexOffset621.rgb;
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

			half4 frag(VertexOutput IN , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC ) : SV_TARGET
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

				float2 uv_BaseMap = IN.ase_texcoord2.xy * _BaseMap_ST.xy + _BaseMap_ST.zw;
				float2 break26_g1561 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1561 = (float2(( break26_g1561.x * L0GlobalTilingX150 ) , ( break26_g1561.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1561 = (float2(( break26_g1561.x + L0GlobalOffsetX151 ) , ( break26_g1561.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1491 = ParallaxOffset( tex2DNode3_g1491.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1491 = (((ase_vface>0)?(paralaxOffset38_g1491):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1491;
				float4 tex2DNode7_g1560 = tex2D( _BaseMap, ( ( appendResult14_g1561 + appendResult13_g1561 ) + Layer0Parallax215 ) );
				float4 lerpResult53_g1560 = lerp( _BaseColor , ( ( _BaseColor * tex2DNode7_g1560 ) * _BaseColor.a ) , _BaseColor.a);
				float clampResult27_g1560 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1560 = lerpResult53_g1560.rgb;
				float desaturateDot29_g1560 = dot( desaturateInitialColor29_g1560, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1560 = lerp( desaturateInitialColor29_g1560, desaturateDot29_g1560.xxx, -clampResult27_g1560 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1560 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord2.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1563 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1563 = (float2(( break26_g1563.x * L1GlobalTilingX234 ) , ( break26_g1563.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1563 = (float2(( break26_g1563.x + L1GlobalOffsetX236 ) , ( break26_g1563.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1552 = ParallaxOffset( tex2DNode3_g1552.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1552 = (((ase_vface>0)?(paralaxOffset38_g1552):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1552;
				float4 tex2DNode7_g1562 = tex2D( _BaseColorL1, ( ( appendResult14_g1563 + appendResult13_g1563 ) + Layer1Parallax247 ) );
				float clampResult27_g1562 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1562 = ( _ColorL1 * tex2DNode7_g1562 ).rgb;
				float desaturateDot29_g1562 = dot( desaturateInitialColor29_g1562, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1562 = lerp( desaturateInitialColor29_g1562, desaturateDot29_g1562.xxx, -clampResult27_g1562 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1562 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1554 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float clampResult11_g1554 = clamp( ( (-4.0 + (_L1BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L1BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L1BlendContrast - ( 1.0 + _L1BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float temp_output_32_0_g1554 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1554 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc18_g1554 = clampResult11_g1554;
				float blendOpDest18_g1554 = temp_output_32_0_g1554;
				float blendOpSrc31_g1554 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1554 * blendOpDest18_g1554 ) )) ):( clampResult11_g1554 ));
				float blendOpDest31_g1554 = temp_output_21_0_g1554;
				float temp_output_31_0_g1554 = ( saturate( ( blendOpSrc31_g1554 + blendOpDest31_g1554 ) ));
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( temp_output_31_0_g1554 ):( temp_output_21_0_g1554 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1565 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1565 = (float2(( break26_g1565.x * L2GlobalTilingX484 ) , ( break26_g1565.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1565 = (float2(( break26_g1565.x + L2GlobalOffsetX483 ) , ( break26_g1565.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1555 = ParallaxOffset( tex2DNode3_g1555.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1555 = (((ase_vface>0)?(paralaxOffset38_g1555):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1555;
				float4 tex2DNode7_g1564 = tex2D( _BaseColorL2, ( ( appendResult14_g1565 + appendResult13_g1565 ) + Layer2Parallax462 ) );
				float clampResult27_g1564 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1564 = ( _ColorL2 * tex2DNode7_g1564 ).rgb;
				float desaturateDot29_g1564 = dot( desaturateInitialColor29_g1564, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1564 = lerp( desaturateInitialColor29_g1564, desaturateDot29_g1564.xxx, -clampResult27_g1564 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1564 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1566 = VertexB116;
				float L1_HeightmapL0_Mask1069 = clampResult11_g1554;
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float clampResult11_g1566 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer1Heightmap510 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float L1_VertexG_Mask1070 = temp_output_32_0_g1554;
				float lerpResult63_g1566 = lerp( L1_HeightmapL0_Mask1069 , clampResult11_g1566 , L1_VertexG_Mask1070);
				float temp_output_32_0_g1566 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1566 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc18_g1566 = lerpResult63_g1566;
				float blendOpDest18_g1566 = temp_output_32_0_g1566;
				float blendOpSrc31_g1566 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1566 * blendOpDest18_g1566 ) )) ):( lerpResult63_g1566 ));
				float blendOpDest31_g1566 = temp_output_21_0_g1566;
				float saferPower66_g1566 = abs( ( saturate( ( blendOpSrc31_g1566 + blendOpDest31_g1566 ) )) );
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( pow( saferPower66_g1566 , 2.0 ) ):( temp_output_21_0_g1566 )) * _L2BlendOpacity );
				float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
				float4 BaseColor121 = lerpResult100;
				float4 temp_cast_6 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_6 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1567;
				float VertexR114 = break106.r;
				float4 temp_cast_8 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_8 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VisHeightmap612 = temp_output_8_0_g1571;
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_10 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_10 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VisHeightmap638 = temp_output_8_0_g1574;
				float2 texCoord106_g1575 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float clampResult149_g1575 = clamp( _TilingInstance , 0.0 , 1000.0 );
				float2 temp_output_175_0_g1575 = Layer2Parallax462;
				float temp_output_123_0_g1575 = ( tex2D( _SparkleMask, ( ( ( texCoord106_g1575 * _TilingDotMask ) * clampResult149_g1575 ) + temp_output_175_0_g1575 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
				float saferPower230_g1575 = abs( temp_output_123_0_g1575 );
				float temp_output_121_0_g1575 = ( _ContrastDotMask + 1.0 );
				float clampResult118_g1575 = clamp( pow( saferPower230_g1575 , temp_output_121_0_g1575 ) , 0.0 , 1.0 );
				float clampResult240_g1575 = clamp( _SparklePower , 0.0 , 100000.0 );
				float temp_output_277_0_g1575 = ( ( clampResult118_g1575 * _IntensityDotMask ) * clampResult240_g1575 );
				float VisualizeDotMap980 = temp_output_277_0_g1575;
				float4 temp_cast_12 = (VisualizeDotMap980).xxxx;
				float temp_output_135_0_g1575 = ( _ContrastSparkles - -1.0 );
				float2 temp_cast_13 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1575 )).xx;
				float3 worldToObj273_g1575 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float4 triplanar274_g1575 = TriplanarSampling274_g1575( _SparkleMask, ( ( ( worldToObj273_g1575 / 4.0 ) - ase_worldViewDir ) + float3( temp_output_175_0_g1575 ,  0.0 ) ), ase_worldNormal, 1.0, temp_cast_13, 1.0, 0 );
				float clampResult49_g1575 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
				float3 desaturateInitialColor53_g1575 = triplanar274_g1575.xyz;
				float desaturateDot53_g1575 = dot( desaturateInitialColor53_g1575, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar53_g1575 = lerp( desaturateInitialColor53_g1575, desaturateDot53_g1575.xxx, clampResult49_g1575 );
				float lerpResult246_g1575 = lerp( 0.6 , 1.0 , _AmountSparkle);
				float4 clampResult74_g1575 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1575,float4( desaturateVar53_g1575 , 0.0 )) + (( -1.0 - temp_output_135_0_g1575 ) + (lerpResult246_g1575 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1575 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
				float4 VisualizeSparklesMap979 = clampResult74_g1575;
				#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1001 = (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) ));
				#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1001 = temp_cast_12;
				#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1001 = VisualizeSparklesMap979;
				#else
				float4 staticSwitch1001 = (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) ));
				#endif
				
				float2 uv_EmissionMap = IN.ase_texcoord2.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float2 break26_g1581 = uv_EmissionMap;
				float2 appendResult14_g1581 = (float2(( break26_g1581.x * L0GlobalTilingX150 ) , ( break26_g1581.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1581 = (float2(( break26_g1581.x + L0GlobalOffsetX151 ) , ( break26_g1581.y + L0GlobalOffsetY148 )));
				float4 temp_output_5_0_g1580 = ( _EmissionColor * tex2D( _EmissionMap, ( ( appendResult14_g1581 + appendResult13_g1581 ) + float2( 0,0 ) ) ) );
				float4 Layer0Emission972 = ( temp_output_5_0_g1580 * _EmissionIntensity );
				float blendOpSrc1115 = VertexGHeightmap352;
				float blendOpDest1115 = VertexBHeightmap652;
				float4 temp_output_1108_0 = ( Layer0Emission972 * ( 1.0 - ( saturate( max( blendOpSrc1115, blendOpDest1115 ) )) ) );
				float4 Layer0EmissionRGB1109 = temp_output_5_0_g1580;
				float4 lerpResult1095 = lerp( temp_output_1108_0 , ( Layer0EmissionRGB1109 * _EmissionIntensityL1 ) , ( VertexGHeightmap352 * ( 1.0 - VertexBHeightmap652 ) ));
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL1_ON
				float4 staticSwitch1085 = lerpResult1095;
				#else
				float4 staticSwitch1085 = temp_output_1108_0;
				#endif
				float4 temp_output_108_0_g1575 = ( clampResult74_g1575 * temp_output_277_0_g1575 );
				float blendOpSrc34_g1555 = tex2DNode3_g1555.g;
				float blendOpDest34_g1555 = ( 1.0 - _AoIntensityL2 );
				float Layer2Ao479 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1555 ) * ( 1.0 - blendOpDest34_g1555 ) ) ));
				float4 temp_cast_18 = (Layer2Ao479).xxxx;
				float dotResult152_g1575 = dot( ase_worldNormal , SafeNormalize(_MainLightPosition.xyz) );
				float temp_output_153_0_g1575 = max( dotResult152_g1575 , 0.0 );
				float ase_lightAtten = 0;
				Light ase_mainLight = GetMainLight( ShadowCoords );
				ase_lightAtten = ase_mainLight.distanceAttenuation * ase_mainLight.shadowAttenuation;
				float lerpResult169_g1575 = lerp( ( temp_output_153_0_g1575 * _MainLightColor.a ) , ( temp_output_153_0_g1575 * ( ase_lightAtten * _MainLightColor.a ) ) , _ShadowMask);
				float4 temp_output_165_0_g1575 = ( (( _AoMask )?( ( temp_output_108_0_g1575 * temp_cast_18 ) ):( temp_output_108_0_g1575 )) * lerpResult169_g1575 );
				float4 temp_output_1082_0 = temp_output_165_0_g1575;
				float4 SparklesCrystals977 = temp_output_1082_0;
				float saferPower1140 = abs( VertexBHeightmap652 );
				float4 lerpResult1141 = lerp( float4( 0,0,0,0 ) , SparklesCrystals977 , pow( saferPower1140 , 3.0 ));
				float4 blendOpSrc1154 = staticSwitch1085;
				float4 blendOpDest1154 = lerpResult1141;
				float4 lerpResult1130 = lerp( staticSwitch1085 , ( Layer0EmissionRGB1109 * _EmissionIntensityL2 ) , VertexBHeightmap652);
				float4 blendOpSrc1132 = lerpResult1130;
				float4 blendOpDest1132 = lerpResult1141;
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch994 = ( saturate( max( blendOpSrc1132, blendOpDest1132 ) ));
				#else
				float4 staticSwitch994 = ( saturate( max( blendOpSrc1154, blendOpDest1154 ) ));
				#endif
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch996 = lerpResult1130;
				#else
				float4 staticSwitch996 = staticSwitch1085;
				#endif
				#if defined(_SPARKLESOURCE_NONE)
				float4 staticSwitch997 = staticSwitch996;
				#elif defined(_SPARKLESOURCE_SMOOTHNESSSPARKLES)
				float4 staticSwitch997 = staticSwitch996;
				#elif defined(_SPARKLESOURCE_EMISSIVESPARKLES)
				float4 staticSwitch997 = staticSwitch994;
				#else
				float4 staticSwitch997 = staticSwitch994;
				#endif
				float4 Emission998 = staticSwitch997;
				
				
				float3 Albedo = staticSwitch1001.rgb;
				float3 Emission = Emission998.rgb;
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
			#define ASE_SRP_VERSION 70403

			
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
			#pragma shader_feature_local _VISUALIZESPARKLE_NONE _VISUALIZESPARKLE_DOTMASK _VISUALIZESPARKLE_SPARKLEMAP


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
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float4 _EmissionColor;
			float4 _BaseMap_ST;
			float4 _EmissionMap_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _BumpMapL2_ST;
			float4 _ColorL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float _TilingCrystals;
			float _Desaturatecrystals;
			float _AmountSparkle;
			float _CrystalsIntensity;
			float _ContrastSparkles;
			float _BumpScale;
			float _SparklePower;
			float _IntensityDotMask;
			float _BumpScaleL1;
			float _ContrastDotMask;
			float _L0Displacement;
			float _SpreadDotMask;
			float _EmissionIntensity;
			float _EmissionIntensityL1;
			float _AoMask;
			float _AoIntensityL2;
			float _ShadowMask;
			float _EmissionIntensityL2;
			float _Metallic;
			float _MetallicL1;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _BlendingModeCrystals;
			float _BumpScaleL2;
			float _TilingInstance;
			float _SaturationL2;
			float _L2BlendContrast;
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
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _AoIntensity;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _L2BlendAmount;
			float _TilingDotMask;
			float _AoIntensityL1;
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
			sampler2D _SparkleMask;


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
			
			inline float4 TriplanarSampling274_g1575( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
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
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 uv_MetallicGlossMapMAHS = v.ase_texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1567 );
				float2 uv_MetallicGlossMapMAHSL1 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2Dlod( _MetallicGlossMapMAHSL1, float4( ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float4 temp_cast_4 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_4 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1571 );
				float4 break106 = v.ase_color;
				float VertexG115 = break106.g;
				float L1Opacity950 = _L1BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexG115 * L1Opacity950 ));
				float2 uv_MetallicGlossMapMAHSL2 = v.ase_texcoord.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2Dlod( _MetallicGlossMapMAHSL2, float4( ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_7 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_7 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VertexOffset637 = ( float4( ( v.ase_normal * ( _L2Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1574 );
				float VertexB116 = break106.b;
				float L2Opacity948 = _L2BlendOpacity;
				float4 lerpResult642 = lerp( lerpResult619 , Layer2VertexOffset637 , ( VertexB116 * L2Opacity948 ));
				float4 VertexOffset621 = lerpResult642;
				
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
				float3 vertexValue = VertexOffset621.rgb;
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

			half4 frag(VertexOutput IN , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC ) : SV_TARGET
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
				float2 break26_g1561 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1561 = (float2(( break26_g1561.x * L0GlobalTilingX150 ) , ( break26_g1561.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1561 = (float2(( break26_g1561.x + L0GlobalOffsetX151 ) , ( break26_g1561.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1492 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1492 = (float2(( break26_g1492.x * L0GlobalTilingX150 ) , ( break26_g1492.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1492 = (float2(( break26_g1492.x + L0GlobalOffsetX151 ) , ( break26_g1492.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1491 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1492 + appendResult13_g1492 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1491 = ParallaxOffset( tex2DNode3_g1491.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1491 = (((ase_vface>0)?(paralaxOffset38_g1491):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1491;
				float4 tex2DNode7_g1560 = tex2D( _BaseMap, ( ( appendResult14_g1561 + appendResult13_g1561 ) + Layer0Parallax215 ) );
				float4 lerpResult53_g1560 = lerp( _BaseColor , ( ( _BaseColor * tex2DNode7_g1560 ) * _BaseColor.a ) , _BaseColor.a);
				float clampResult27_g1560 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1560 = lerpResult53_g1560.rgb;
				float desaturateDot29_g1560 = dot( desaturateInitialColor29_g1560, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1560 = lerp( desaturateInitialColor29_g1560, desaturateDot29_g1560.xxx, -clampResult27_g1560 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1560 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord2.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1563 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1563 = (float2(( break26_g1563.x * L1GlobalTilingX234 ) , ( break26_g1563.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1563 = (float2(( break26_g1563.x + L1GlobalOffsetX236 ) , ( break26_g1563.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1553 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1553 = (float2(( break26_g1553.x * L1GlobalTilingX234 ) , ( break26_g1553.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1553 = (float2(( break26_g1553.x + L1GlobalOffsetX236 ) , ( break26_g1553.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1552 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1553 + appendResult13_g1553 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1552 = ParallaxOffset( tex2DNode3_g1552.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1552 = (((ase_vface>0)?(paralaxOffset38_g1552):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1552;
				float4 tex2DNode7_g1562 = tex2D( _BaseColorL1, ( ( appendResult14_g1563 + appendResult13_g1563 ) + Layer1Parallax247 ) );
				float clampResult27_g1562 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1562 = ( _ColorL1 * tex2DNode7_g1562 ).rgb;
				float desaturateDot29_g1562 = dot( desaturateInitialColor29_g1562, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1562 = lerp( desaturateInitialColor29_g1562, desaturateDot29_g1562.xxx, -clampResult27_g1562 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1562 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1554 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1491.b;
				float clampResult11_g1554 = clamp( ( (-4.0 + (_L1BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L1BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L1BlendContrast - ( 1.0 + _L1BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float temp_output_32_0_g1554 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1554 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc18_g1554 = clampResult11_g1554;
				float blendOpDest18_g1554 = temp_output_32_0_g1554;
				float blendOpSrc31_g1554 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1554 * blendOpDest18_g1554 ) )) ):( clampResult11_g1554 ));
				float blendOpDest31_g1554 = temp_output_21_0_g1554;
				float temp_output_31_0_g1554 = ( saturate( ( blendOpSrc31_g1554 + blendOpDest31_g1554 ) ));
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( temp_output_31_0_g1554 ):( temp_output_21_0_g1554 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1565 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1565 = (float2(( break26_g1565.x * L2GlobalTilingX484 ) , ( break26_g1565.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1565 = (float2(( break26_g1565.x + L2GlobalOffsetX483 ) , ( break26_g1565.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1556 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1556 = (float2(( break26_g1556.x * L2GlobalTilingX484 ) , ( break26_g1556.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1556 = (float2(( break26_g1556.x + L2GlobalOffsetX483 ) , ( break26_g1556.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1555 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1556 + appendResult13_g1556 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1555 = ParallaxOffset( tex2DNode3_g1555.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1555 = (((ase_vface>0)?(paralaxOffset38_g1555):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1555;
				float4 tex2DNode7_g1564 = tex2D( _BaseColorL2, ( ( appendResult14_g1565 + appendResult13_g1565 ) + Layer2Parallax462 ) );
				float clampResult27_g1564 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1564 = ( _ColorL2 * tex2DNode7_g1564 ).rgb;
				float desaturateDot29_g1564 = dot( desaturateInitialColor29_g1564, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1564 = lerp( desaturateInitialColor29_g1564, desaturateDot29_g1564.xxx, -clampResult27_g1564 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1564 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1566 = VertexB116;
				float L1_HeightmapL0_Mask1069 = clampResult11_g1554;
				float Layer1Heightmap510 = tex2DNode3_g1552.b;
				float clampResult11_g1566 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer1Heightmap510 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float L1_VertexG_Mask1070 = temp_output_32_0_g1554;
				float lerpResult63_g1566 = lerp( L1_HeightmapL0_Mask1069 , clampResult11_g1566 , L1_VertexG_Mask1070);
				float temp_output_32_0_g1566 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1566 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc18_g1566 = lerpResult63_g1566;
				float blendOpDest18_g1566 = temp_output_32_0_g1566;
				float blendOpSrc31_g1566 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1566 * blendOpDest18_g1566 ) )) ):( lerpResult63_g1566 ));
				float blendOpDest31_g1566 = temp_output_21_0_g1566;
				float saferPower66_g1566 = abs( ( saturate( ( blendOpSrc31_g1566 + blendOpDest31_g1566 ) )) );
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( pow( saferPower66_g1566 , 2.0 ) ):( temp_output_21_0_g1566 )) * _L2BlendOpacity );
				float4 lerpResult100 = lerp( lerpResult99 , Layer2BaseColor476 , VertexBHeightmap652);
				float4 BaseColor121 = lerpResult100;
				float4 temp_cast_6 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1567 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_6 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1567;
				float VertexR114 = break106.r;
				float4 temp_cast_8 = (Layer1Heightmap510).xxxx;
				float4 temp_output_8_0_g1571 = CalculateContrast(_L1Heightmapcontrast,( temp_cast_8 + (-0.5 + (_L1HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer1VisHeightmap612 = temp_output_8_0_g1571;
				float Layer2Heightmap511 = tex2DNode3_g1555.b;
				float4 temp_cast_10 = (Layer2Heightmap511).xxxx;
				float4 temp_output_8_0_g1574 = CalculateContrast(_L2Heightmapcontrast,( temp_cast_10 + (-0.5 + (_L2HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer2VisHeightmap638 = temp_output_8_0_g1574;
				float2 texCoord106_g1575 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float clampResult149_g1575 = clamp( _TilingInstance , 0.0 , 1000.0 );
				float2 temp_output_175_0_g1575 = Layer2Parallax462;
				float temp_output_123_0_g1575 = ( tex2D( _SparkleMask, ( ( ( texCoord106_g1575 * _TilingDotMask ) * clampResult149_g1575 ) + temp_output_175_0_g1575 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
				float saferPower230_g1575 = abs( temp_output_123_0_g1575 );
				float temp_output_121_0_g1575 = ( _ContrastDotMask + 1.0 );
				float clampResult118_g1575 = clamp( pow( saferPower230_g1575 , temp_output_121_0_g1575 ) , 0.0 , 1.0 );
				float clampResult240_g1575 = clamp( _SparklePower , 0.0 , 100000.0 );
				float temp_output_277_0_g1575 = ( ( clampResult118_g1575 * _IntensityDotMask ) * clampResult240_g1575 );
				float VisualizeDotMap980 = temp_output_277_0_g1575;
				float4 temp_cast_12 = (VisualizeDotMap980).xxxx;
				float temp_output_135_0_g1575 = ( _ContrastSparkles - -1.0 );
				float2 temp_cast_13 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1575 )).xx;
				float3 worldToObj273_g1575 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float4 triplanar274_g1575 = TriplanarSampling274_g1575( _SparkleMask, ( ( ( worldToObj273_g1575 / 4.0 ) - ase_worldViewDir ) + float3( temp_output_175_0_g1575 ,  0.0 ) ), ase_worldNormal, 1.0, temp_cast_13, 1.0, 0 );
				float clampResult49_g1575 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
				float3 desaturateInitialColor53_g1575 = triplanar274_g1575.xyz;
				float desaturateDot53_g1575 = dot( desaturateInitialColor53_g1575, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar53_g1575 = lerp( desaturateInitialColor53_g1575, desaturateDot53_g1575.xxx, clampResult49_g1575 );
				float lerpResult246_g1575 = lerp( 0.6 , 1.0 , _AmountSparkle);
				float4 clampResult74_g1575 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1575,float4( desaturateVar53_g1575 , 0.0 )) + (( -1.0 - temp_output_135_0_g1575 ) + (lerpResult246_g1575 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1575 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
				float4 VisualizeSparklesMap979 = clampResult74_g1575;
				#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1001 = (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) ));
				#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1001 = temp_cast_12;
				#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1001 = VisualizeSparklesMap979;
				#else
				float4 staticSwitch1001 = (( _L2VisualizeHeightmap )?( Layer2VisHeightmap638 ):( (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexG115 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )) ));
				#endif
				
				
				float3 Albedo = staticSwitch1001.rgb;
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