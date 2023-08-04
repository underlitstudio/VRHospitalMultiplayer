Shader "Ciconia Studio/CS_Polybrush/URP/Basic/Snow"
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
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L2UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L2ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L2BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L2BlendAmount("Amount", Float) = 0.5
		_L2BlendContrast("Contrast", Float) = 3.5
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

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
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

			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma shader_feature_local _VISUALIZESPARKLE_NONE _VISUALIZESPARKLE_DOTMASK _VISUALIZESPARKLE_SPARKLEMAP
			#pragma shader_feature_local _SPARKLESOURCE3_NONE _SPARKLESOURCE3_SMOOTHNESSSPARKLES _SPARKLESOURCE3_EMISSIVESPARKLES
			#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL2_ON


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
			float4 _ColorL2;
			float4 _BaseColor;
			float4 _BaseMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _EmissionColor;
			float4 _BumpMap_ST;
			float4 _EmissionMap_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float _BumpScaleL2;
			float _Brightness;
			float _CrystalsIntensity;
			float _BumpScale;
			float _EmissionIntensity;
			float _EmissionIntensityL2;
			float _AoIntensityL2;
			float _ShadowMask;
			float _AmountSparkle;
			float _Metallic;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL2;
			float _AoMask;
			float _Desaturatecrystals;
			float _IntensityDotMask;
			float _ContrastSparkles;
			float _Parallax;
			float _Saturation;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _TilingCrystals;
			float _L2BlendAmount;
			float _L2BlendOpacity;
			float _TilingDotMask;
			float _TilingInstance;
			float _SpreadDotMask;
			float _ContrastDotMask;
			float _BlendingModeCrystals;
			float _SparklePower;
			float _L2BlendContrast;
			float _AoIntensity;
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
			sampler2D _BaseMap;
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _BaseColorL2;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _SparkleMask;
			sampler2D _BumpMap;
			sampler2D _BumpMapL2;
			sampler2D _EmissionMap;


			inline float2 ParallaxOffset( half h, half height, half3 viewDir )
			{
				h = h * height - height/2.0;
				float3 v = normalize( viewDir );
				v.z += 0.42;
				return h* (v.xy / v.z);
			}
			
			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}
			inline float4 TriplanarSampling274_g1537( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
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

				o.ase_texcoord7.xy = v.texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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
				float2 break26_g1533 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1533 = (float2(( break26_g1533.x * L0GlobalTilingX150 ) , ( break26_g1533.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1533 = (float2(( break26_g1533.x + L0GlobalOffsetX151 ) , ( break26_g1533.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord7.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1502 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1502 = (float2(( break26_g1502.x * L0GlobalTilingX150 ) , ( break26_g1502.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1502 = (float2(( break26_g1502.x + L0GlobalOffsetX151 ) , ( break26_g1502.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1501 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1502 + appendResult13_g1502 ) + float2( 0,0 ) ) );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1501 = ParallaxOffset( tex2DNode3_g1501.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1501 = (((ase_vface>0)?(paralaxOffset38_g1501):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1501;
				float4 tex2DNode7_g1532 = tex2D( _BaseMap, ( ( appendResult14_g1533 + appendResult13_g1533 ) + Layer0Parallax215 ) );
				float4 lerpResult53_g1532 = lerp( _BaseColor , ( ( _BaseColor * tex2DNode7_g1532 ) * _BaseColor.a ) , _BaseColor.a);
				float clampResult27_g1532 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1532 = lerpResult53_g1532.rgb;
				float desaturateDot29_g1532 = dot( desaturateInitialColor29_g1532, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1532 = lerp( desaturateInitialColor29_g1532, desaturateDot29_g1532.xxx, -clampResult27_g1532 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1532 , 0.0 ));
				float2 uv_BaseColorL2 = IN.ase_texcoord7.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1536 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1536 = (float2(( break26_g1536.x * L2GlobalTilingX484 ) , ( break26_g1536.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1536 = (float2(( break26_g1536.x + L2GlobalOffsetX483 ) , ( break26_g1536.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord7.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1504 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1504 = (float2(( break26_g1504.x * L2GlobalTilingX484 ) , ( break26_g1504.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1504 = (float2(( break26_g1504.x + L2GlobalOffsetX483 ) , ( break26_g1504.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1503 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1504 + appendResult13_g1504 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1503 = ParallaxOffset( tex2DNode3_g1503.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1503 = (((ase_vface>0)?(paralaxOffset38_g1503):(0.0)));
				float2 Layer2Parallax1055 = switchResult37_g1503;
				float4 tex2DNode7_g1535 = tex2D( _BaseColorL2, ( ( appendResult14_g1536 + appendResult13_g1536 ) + Layer2Parallax1055 ) );
				float clampResult27_g1535 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1535 = ( _ColorL2 * tex2DNode7_g1535 ).rgb;
				float desaturateDot29_g1535 = dot( desaturateInitialColor29_g1535, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1535 = lerp( desaturateInitialColor29_g1535, desaturateDot29_g1535.xxx, -clampResult27_g1535 );
				float4 Layer2BaseColor1070 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1535 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexB116 = break106.b;
				float temp_output_21_0_g1534 = VertexB116;
				float Layer0Heightmap336 = tex2DNode3_g1501.b;
				float clampResult11_g1534 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1534 = clampResult11_g1534;
				float blendOpDest18_g1534 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1534 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1534 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1534 * blendOpDest18_g1534 ) )) ):( clampResult11_g1534 ));
				float blendOpDest31_g1534 = temp_output_21_0_g1534;
				float VertexBHeightmap1077 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1534 + blendOpDest31_g1534 ) )) ):( temp_output_21_0_g1534 )) * _L2BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer2BaseColor1070 , VertexBHeightmap1077);
				float4 BaseColor121 = lerpResult99;
				float2 texCoord106_g1537 = IN.ase_texcoord7.xy * float2( 1,1 ) + float2( 0,0 );
				float clampResult149_g1537 = clamp( _TilingInstance , 0.0 , 1000.0 );
				float2 temp_output_175_0_g1537 = Layer2Parallax1055;
				float temp_output_123_0_g1537 = ( tex2D( _SparkleMask, ( ( ( texCoord106_g1537 * _TilingDotMask ) * clampResult149_g1537 ) + temp_output_175_0_g1537 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
				float saferPower230_g1537 = abs( temp_output_123_0_g1537 );
				float temp_output_121_0_g1537 = ( _ContrastDotMask + 1.0 );
				float clampResult118_g1537 = clamp( pow( saferPower230_g1537 , temp_output_121_0_g1537 ) , 0.0 , 1.0 );
				float clampResult240_g1537 = clamp( _SparklePower , 0.0 , 100000.0 );
				float temp_output_277_0_g1537 = ( ( clampResult118_g1537 * _IntensityDotMask ) * clampResult240_g1537 );
				float VisualizeDotMap1001 = temp_output_277_0_g1537;
				float4 temp_cast_4 = (VisualizeDotMap1001).xxxx;
				float temp_output_135_0_g1537 = ( _ContrastSparkles - -1.0 );
				float2 temp_cast_5 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1537 )).xx;
				float3 worldToObj273_g1537 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float4 triplanar274_g1537 = TriplanarSampling274_g1537( _SparkleMask, ( ( ( worldToObj273_g1537 / 4.0 ) - WorldViewDirection ) + float3( temp_output_175_0_g1537 ,  0.0 ) ), WorldNormal, 1.0, temp_cast_5, 1.0, 0 );
				float clampResult49_g1537 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
				float3 desaturateInitialColor53_g1537 = triplanar274_g1537.xyz;
				float desaturateDot53_g1537 = dot( desaturateInitialColor53_g1537, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar53_g1537 = lerp( desaturateInitialColor53_g1537, desaturateDot53_g1537.xxx, clampResult49_g1537 );
				float lerpResult246_g1537 = lerp( 0.6 , 1.0 , _AmountSparkle);
				float4 clampResult74_g1537 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1537,float4( desaturateVar53_g1537 , 0.0 )) + (( -1.0 - temp_output_135_0_g1537 ) + (lerpResult246_g1537 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1537 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
				float4 VisualizeSparklesMap1002 = clampResult74_g1537;
				#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1013 = BaseColor121;
				#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1013 = temp_cast_4;
				#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1013 = VisualizeSparklesMap1002;
				#else
				float4 staticSwitch1013 = BaseColor121;
				#endif
				
				float2 uv_BumpMap = IN.ase_texcoord7.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1550 = uv_BumpMap;
				float2 appendResult14_g1550 = (float2(( break26_g1550.x * L0GlobalTilingX150 ) , ( break26_g1550.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1550 = (float2(( break26_g1550.x + L0GlobalOffsetX151 ) , ( break26_g1550.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1549 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1550 + appendResult13_g1550 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1549.z = lerp( 1, unpack4_g1549.z, saturate(_BumpScale) );
				float3 tex2DNode4_g1549 = unpack4_g1549;
				float3 Layer0Normal193 = tex2DNode4_g1549;
				float2 uv_BumpMapL2 = IN.ase_texcoord7.xy * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
				float2 break26_g1548 = uv_BumpMapL2;
				float2 appendResult14_g1548 = (float2(( break26_g1548.x * L2GlobalTilingX484 ) , ( break26_g1548.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1548 = (float2(( break26_g1548.x + L2GlobalOffsetX483 ) , ( break26_g1548.y + L2GlobalOffsetY485 )));
				float3 unpack4_g1547 = UnpackNormalScale( tex2D( _BumpMapL2, ( ( appendResult14_g1548 + appendResult13_g1548 ) + Layer2Parallax1055 ) ), _BumpScaleL2 );
				unpack4_g1547.z = lerp( 1, unpack4_g1547.z, saturate(_BumpScaleL2) );
				float3 tex2DNode4_g1547 = unpack4_g1547;
				float3 Layer2Normal1062 = tex2DNode4_g1547;
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer2Normal1062 , VertexBHeightmap1077);
				float3 Normal129 = lerpResult133;
				
				float2 uv_EmissionMap = IN.ase_texcoord7.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float2 break26_g1552 = uv_EmissionMap;
				float2 appendResult14_g1552 = (float2(( break26_g1552.x * L0GlobalTilingX150 ) , ( break26_g1552.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1552 = (float2(( break26_g1552.x + L0GlobalOffsetX151 ) , ( break26_g1552.y + L0GlobalOffsetY148 )));
				float4 temp_output_5_0_g1551 = ( _EmissionColor * tex2D( _EmissionMap, ( ( appendResult14_g1552 + appendResult13_g1552 ) + Layer0Parallax215 ) ) );
				float4 Layer0Emission984 = ( temp_output_5_0_g1551 * _EmissionIntensity );
				float4 temp_cast_10 = (0.0).xxxx;
				float4 lerpResult1118 = lerp( Layer0Emission984 , temp_cast_10 , VertexBHeightmap1077);
				float4 temp_output_108_0_g1537 = ( clampResult74_g1537 * temp_output_277_0_g1537 );
				float blendOpSrc34_g1503 = tex2DNode3_g1503.g;
				float blendOpDest34_g1503 = ( 1.0 - _AoIntensityL2 );
				float Layer2Ao1071 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1503 ) * ( 1.0 - blendOpDest34_g1503 ) ) ));
				float4 temp_cast_11 = (Layer2Ao1071).xxxx;
				float dotResult152_g1537 = dot( WorldNormal , SafeNormalize(_MainLightPosition.xyz) );
				float temp_output_153_0_g1537 = max( dotResult152_g1537 , 0.0 );
				float ase_lightAtten = 0;
				Light ase_mainLight = GetMainLight( ShadowCoords );
				ase_lightAtten = ase_mainLight.distanceAttenuation * ase_mainLight.shadowAttenuation;
				float lerpResult169_g1537 = lerp( ( temp_output_153_0_g1537 * _MainLightColor.a ) , ( temp_output_153_0_g1537 * ( ase_lightAtten * _MainLightColor.a ) ) , _ShadowMask);
				float4 temp_output_165_0_g1537 = ( (( _AoMask )?( ( temp_output_108_0_g1537 * temp_cast_11 ) ):( temp_output_108_0_g1537 )) * lerpResult169_g1537 );
				float4 temp_output_1085_0 = temp_output_165_0_g1537;
				float4 SparklesCrystals1000 = temp_output_1085_0;
				float saferPower1106 = abs( VertexBHeightmap1077 );
				float4 lerpResult1110 = lerp( float4( 0,0,0,0 ) , SparklesCrystals1000 , pow( saferPower1106 , 3.0 ));
				float4 blendOpSrc1112 = lerpResult1118;
				float4 blendOpDest1112 = lerpResult1110;
				float4 Layer0EmissionRGB1086 = temp_output_5_0_g1551;
				float4 lerpResult1107 = lerp( Layer0Emission984 , ( Layer0EmissionRGB1086 * _EmissionIntensityL2 ) , VertexBHeightmap1077);
				float4 blendOpSrc1113 = lerpResult1107;
				float4 blendOpDest1113 = lerpResult1110;
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch1114 = ( saturate( max( blendOpSrc1113, blendOpDest1113 ) ));
				#else
				float4 staticSwitch1114 = ( saturate( max( blendOpSrc1112, blendOpDest1112 ) ));
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
				
				float Layer0Metallic211 = ( tex2DNode3_g1501.r * _Metallic );
				float Layer2Metallic1072 = ( tex2DNode3_g1503.r * _MetallicL2 );
				float lerpResult289 = lerp( Layer0Metallic211 , Layer2Metallic1072 , VertexBHeightmap1077);
				float Metallic296 = lerpResult289;
				
				float temp_output_1_0_g1501 = ( tex2DNode3_g1501.a * _Glossiness );
				float Layer0Smoothness210 = temp_output_1_0_g1501;
				float4 temp_cast_14 = (Layer0Smoothness210).xxxx;
				float temp_output_1_0_g1503 = ( tex2DNode3_g1503.a * _GlossinessL2 );
				float temp_output_1052_7 = temp_output_1_0_g1503;
				float4 temp_cast_15 = (temp_output_1052_7).xxxx;
				float4 temp_cast_16 = (temp_output_1052_7).xxxx;
				float4 temp_cast_17 = (temp_output_1052_7).xxxx;
				float4 blendOpSrc1037 = temp_cast_17;
				float4 blendOpDest1037 = SparklesCrystals1000;
				float4 temp_cast_18 = (temp_output_1052_7).xxxx;
				float4 blendOpSrc1034 = ( temp_cast_18 - SparklesCrystals1000 );
				float4 blendOpDest1034 = SparklesCrystals1000;
				float4 temp_cast_19 = (temp_output_1052_7).xxxx;
				#if defined(_SPARKLESOURCE3_NONE)
				float4 staticSwitch1035 = temp_cast_16;
				#elif defined(_SPARKLESOURCE3_SMOOTHNESSSPARKLES)
				float4 staticSwitch1035 = (( _BlendingModeCrystals )?( ( saturate( ( 1.0 - ( 1.0 - blendOpSrc1034 ) * ( 1.0 - blendOpDest1034 ) ) )) ):( ( saturate( max( blendOpSrc1037, blendOpDest1037 ) )) ));
				#elif defined(_SPARKLESOURCE3_EMISSIVESPARKLES)
				float4 staticSwitch1035 = temp_cast_15;
				#else
				float4 staticSwitch1035 = temp_cast_15;
				#endif
				float4 Layer2Smoothness1073 = staticSwitch1035;
				float4 lerpResult301 = lerp( temp_cast_14 , Layer2Smoothness1073 , VertexBHeightmap1077);
				float4 Smoothness309 = lerpResult301;
				
				float blendOpSrc34_g1501 = tex2DNode3_g1501.g;
				float blendOpDest34_g1501 = ( 1.0 - _AoIntensity );
				float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1501 ) * ( 1.0 - blendOpDest34_g1501 ) ) ));
				float lerpResult312 = lerp( Layer0Ao214 , Layer2Ao1071 , VertexBHeightmap1077);
				float Ao321 = lerpResult312;
				
				float3 Albedo = staticSwitch1013.rgb;
				float3 Normal = Normal129;
				float3 Emission = Emission993.rgb;
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

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
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
			float4 _ColorL2;
			float4 _BaseColor;
			float4 _BaseMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _EmissionColor;
			float4 _BumpMap_ST;
			float4 _EmissionMap_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float _BumpScaleL2;
			float _Brightness;
			float _CrystalsIntensity;
			float _BumpScale;
			float _EmissionIntensity;
			float _EmissionIntensityL2;
			float _AoIntensityL2;
			float _ShadowMask;
			float _AmountSparkle;
			float _Metallic;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL2;
			float _AoMask;
			float _Desaturatecrystals;
			float _IntensityDotMask;
			float _ContrastSparkles;
			float _Parallax;
			float _Saturation;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _TilingCrystals;
			float _L2BlendAmount;
			float _L2BlendOpacity;
			float _TilingDotMask;
			float _TilingInstance;
			float _SpreadDotMask;
			float _ContrastDotMask;
			float _BlendingModeCrystals;
			float _SparklePower;
			float _L2BlendContrast;
			float _AoIntensity;
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
			

			
			float3 _LightDirection;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
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
			float4 _ColorL2;
			float4 _BaseColor;
			float4 _BaseMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _EmissionColor;
			float4 _BumpMap_ST;
			float4 _EmissionMap_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float _BumpScaleL2;
			float _Brightness;
			float _CrystalsIntensity;
			float _BumpScale;
			float _EmissionIntensity;
			float _EmissionIntensityL2;
			float _AoIntensityL2;
			float _ShadowMask;
			float _AmountSparkle;
			float _Metallic;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL2;
			float _AoMask;
			float _Desaturatecrystals;
			float _IntensityDotMask;
			float _ContrastSparkles;
			float _Parallax;
			float _Saturation;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _TilingCrystals;
			float _L2BlendAmount;
			float _L2BlendOpacity;
			float _TilingDotMask;
			float _TilingInstance;
			float _SpreadDotMask;
			float _ContrastDotMask;
			float _BlendingModeCrystals;
			float _SparklePower;
			float _L2BlendContrast;
			float _AoIntensity;
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
			

			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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
			#pragma shader_feature_local _SPARKLESOURCE3_NONE _SPARKLESOURCE3_SMOOTHNESSSPARKLES _SPARKLESOURCE3_EMISSIVESPARKLES
			#pragma shader_feature_local _USEEMISSIONFROMMAINPROPERTIESL2_ON
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
				float4 ase_tangent : TANGENT;
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
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _ColorL2;
			float4 _BaseColor;
			float4 _BaseMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _EmissionColor;
			float4 _BumpMap_ST;
			float4 _EmissionMap_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float _BumpScaleL2;
			float _Brightness;
			float _CrystalsIntensity;
			float _BumpScale;
			float _EmissionIntensity;
			float _EmissionIntensityL2;
			float _AoIntensityL2;
			float _ShadowMask;
			float _AmountSparkle;
			float _Metallic;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL2;
			float _AoMask;
			float _Desaturatecrystals;
			float _IntensityDotMask;
			float _ContrastSparkles;
			float _Parallax;
			float _Saturation;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _TilingCrystals;
			float _L2BlendAmount;
			float _L2BlendOpacity;
			float _TilingDotMask;
			float _TilingInstance;
			float _SpreadDotMask;
			float _ContrastDotMask;
			float _BlendingModeCrystals;
			float _SparklePower;
			float _L2BlendContrast;
			float _AoIntensity;
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
			sampler2D _BaseMap;
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _BaseColorL2;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _SparkleMask;
			sampler2D _EmissionMap;


			inline float2 ParallaxOffset( half h, half height, half3 viewDir )
			{
				h = h * height - height/2.0;
				float3 v = normalize( viewDir );
				v.z += 0.42;
				return h* (v.xy / v.z);
			}
			
			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}
			inline float4 TriplanarSampling274_g1537( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
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
				float3 vertexValue = defaultVertexValue;
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
				float4 ase_tangent : TANGENT;
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
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
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
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
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
				float2 break26_g1533 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1533 = (float2(( break26_g1533.x * L0GlobalTilingX150 ) , ( break26_g1533.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1533 = (float2(( break26_g1533.x + L0GlobalOffsetX151 ) , ( break26_g1533.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1502 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1502 = (float2(( break26_g1502.x * L0GlobalTilingX150 ) , ( break26_g1502.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1502 = (float2(( break26_g1502.x + L0GlobalOffsetX151 ) , ( break26_g1502.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1501 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1502 + appendResult13_g1502 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1501 = ParallaxOffset( tex2DNode3_g1501.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1501 = (((ase_vface>0)?(paralaxOffset38_g1501):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1501;
				float4 tex2DNode7_g1532 = tex2D( _BaseMap, ( ( appendResult14_g1533 + appendResult13_g1533 ) + Layer0Parallax215 ) );
				float4 lerpResult53_g1532 = lerp( _BaseColor , ( ( _BaseColor * tex2DNode7_g1532 ) * _BaseColor.a ) , _BaseColor.a);
				float clampResult27_g1532 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1532 = lerpResult53_g1532.rgb;
				float desaturateDot29_g1532 = dot( desaturateInitialColor29_g1532, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1532 = lerp( desaturateInitialColor29_g1532, desaturateDot29_g1532.xxx, -clampResult27_g1532 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1532 , 0.0 ));
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1536 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1536 = (float2(( break26_g1536.x * L2GlobalTilingX484 ) , ( break26_g1536.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1536 = (float2(( break26_g1536.x + L2GlobalOffsetX483 ) , ( break26_g1536.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1504 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1504 = (float2(( break26_g1504.x * L2GlobalTilingX484 ) , ( break26_g1504.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1504 = (float2(( break26_g1504.x + L2GlobalOffsetX483 ) , ( break26_g1504.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1503 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1504 + appendResult13_g1504 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1503 = ParallaxOffset( tex2DNode3_g1503.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1503 = (((ase_vface>0)?(paralaxOffset38_g1503):(0.0)));
				float2 Layer2Parallax1055 = switchResult37_g1503;
				float4 tex2DNode7_g1535 = tex2D( _BaseColorL2, ( ( appendResult14_g1536 + appendResult13_g1536 ) + Layer2Parallax1055 ) );
				float clampResult27_g1535 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1535 = ( _ColorL2 * tex2DNode7_g1535 ).rgb;
				float desaturateDot29_g1535 = dot( desaturateInitialColor29_g1535, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1535 = lerp( desaturateInitialColor29_g1535, desaturateDot29_g1535.xxx, -clampResult27_g1535 );
				float4 Layer2BaseColor1070 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1535 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexB116 = break106.b;
				float temp_output_21_0_g1534 = VertexB116;
				float Layer0Heightmap336 = tex2DNode3_g1501.b;
				float clampResult11_g1534 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1534 = clampResult11_g1534;
				float blendOpDest18_g1534 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1534 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1534 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1534 * blendOpDest18_g1534 ) )) ):( clampResult11_g1534 ));
				float blendOpDest31_g1534 = temp_output_21_0_g1534;
				float VertexBHeightmap1077 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1534 + blendOpDest31_g1534 ) )) ):( temp_output_21_0_g1534 )) * _L2BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer2BaseColor1070 , VertexBHeightmap1077);
				float4 BaseColor121 = lerpResult99;
				float2 texCoord106_g1537 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float clampResult149_g1537 = clamp( _TilingInstance , 0.0 , 1000.0 );
				float2 temp_output_175_0_g1537 = Layer2Parallax1055;
				float temp_output_123_0_g1537 = ( tex2D( _SparkleMask, ( ( ( texCoord106_g1537 * _TilingDotMask ) * clampResult149_g1537 ) + temp_output_175_0_g1537 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
				float saferPower230_g1537 = abs( temp_output_123_0_g1537 );
				float temp_output_121_0_g1537 = ( _ContrastDotMask + 1.0 );
				float clampResult118_g1537 = clamp( pow( saferPower230_g1537 , temp_output_121_0_g1537 ) , 0.0 , 1.0 );
				float clampResult240_g1537 = clamp( _SparklePower , 0.0 , 100000.0 );
				float temp_output_277_0_g1537 = ( ( clampResult118_g1537 * _IntensityDotMask ) * clampResult240_g1537 );
				float VisualizeDotMap1001 = temp_output_277_0_g1537;
				float4 temp_cast_4 = (VisualizeDotMap1001).xxxx;
				float temp_output_135_0_g1537 = ( _ContrastSparkles - -1.0 );
				float2 temp_cast_5 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1537 )).xx;
				float3 worldToObj273_g1537 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float4 triplanar274_g1537 = TriplanarSampling274_g1537( _SparkleMask, ( ( ( worldToObj273_g1537 / 4.0 ) - ase_worldViewDir ) + float3( temp_output_175_0_g1537 ,  0.0 ) ), ase_worldNormal, 1.0, temp_cast_5, 1.0, 0 );
				float clampResult49_g1537 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
				float3 desaturateInitialColor53_g1537 = triplanar274_g1537.xyz;
				float desaturateDot53_g1537 = dot( desaturateInitialColor53_g1537, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar53_g1537 = lerp( desaturateInitialColor53_g1537, desaturateDot53_g1537.xxx, clampResult49_g1537 );
				float lerpResult246_g1537 = lerp( 0.6 , 1.0 , _AmountSparkle);
				float4 clampResult74_g1537 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1537,float4( desaturateVar53_g1537 , 0.0 )) + (( -1.0 - temp_output_135_0_g1537 ) + (lerpResult246_g1537 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1537 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
				float4 VisualizeSparklesMap1002 = clampResult74_g1537;
				#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1013 = BaseColor121;
				#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1013 = temp_cast_4;
				#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1013 = VisualizeSparklesMap1002;
				#else
				float4 staticSwitch1013 = BaseColor121;
				#endif
				
				float2 uv_EmissionMap = IN.ase_texcoord2.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float2 break26_g1552 = uv_EmissionMap;
				float2 appendResult14_g1552 = (float2(( break26_g1552.x * L0GlobalTilingX150 ) , ( break26_g1552.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1552 = (float2(( break26_g1552.x + L0GlobalOffsetX151 ) , ( break26_g1552.y + L0GlobalOffsetY148 )));
				float4 temp_output_5_0_g1551 = ( _EmissionColor * tex2D( _EmissionMap, ( ( appendResult14_g1552 + appendResult13_g1552 ) + Layer0Parallax215 ) ) );
				float4 Layer0Emission984 = ( temp_output_5_0_g1551 * _EmissionIntensity );
				float4 temp_cast_10 = (0.0).xxxx;
				float4 lerpResult1118 = lerp( Layer0Emission984 , temp_cast_10 , VertexBHeightmap1077);
				float4 temp_output_108_0_g1537 = ( clampResult74_g1537 * temp_output_277_0_g1537 );
				float blendOpSrc34_g1503 = tex2DNode3_g1503.g;
				float blendOpDest34_g1503 = ( 1.0 - _AoIntensityL2 );
				float Layer2Ao1071 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1503 ) * ( 1.0 - blendOpDest34_g1503 ) ) ));
				float4 temp_cast_11 = (Layer2Ao1071).xxxx;
				float dotResult152_g1537 = dot( ase_worldNormal , SafeNormalize(_MainLightPosition.xyz) );
				float temp_output_153_0_g1537 = max( dotResult152_g1537 , 0.0 );
				float ase_lightAtten = 0;
				Light ase_mainLight = GetMainLight( ShadowCoords );
				ase_lightAtten = ase_mainLight.distanceAttenuation * ase_mainLight.shadowAttenuation;
				float lerpResult169_g1537 = lerp( ( temp_output_153_0_g1537 * _MainLightColor.a ) , ( temp_output_153_0_g1537 * ( ase_lightAtten * _MainLightColor.a ) ) , _ShadowMask);
				float4 temp_output_165_0_g1537 = ( (( _AoMask )?( ( temp_output_108_0_g1537 * temp_cast_11 ) ):( temp_output_108_0_g1537 )) * lerpResult169_g1537 );
				float4 temp_output_1085_0 = temp_output_165_0_g1537;
				float4 SparklesCrystals1000 = temp_output_1085_0;
				float saferPower1106 = abs( VertexBHeightmap1077 );
				float4 lerpResult1110 = lerp( float4( 0,0,0,0 ) , SparklesCrystals1000 , pow( saferPower1106 , 3.0 ));
				float4 blendOpSrc1112 = lerpResult1118;
				float4 blendOpDest1112 = lerpResult1110;
				float4 Layer0EmissionRGB1086 = temp_output_5_0_g1551;
				float4 lerpResult1107 = lerp( Layer0Emission984 , ( Layer0EmissionRGB1086 * _EmissionIntensityL2 ) , VertexBHeightmap1077);
				float4 blendOpSrc1113 = lerpResult1107;
				float4 blendOpDest1113 = lerpResult1110;
				#ifdef _USEEMISSIONFROMMAINPROPERTIESL2_ON
				float4 staticSwitch1114 = ( saturate( max( blendOpSrc1113, blendOpDest1113 ) ));
				#else
				float4 staticSwitch1114 = ( saturate( max( blendOpSrc1112, blendOpDest1112 ) ));
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
				
				
				float3 Albedo = staticSwitch1013.rgb;
				float3 Emission = Emission993.rgb;
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
				float4 ase_tangent : TANGENT;
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
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _ColorL2;
			float4 _BaseColor;
			float4 _BaseMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _EmissionColor;
			float4 _BumpMap_ST;
			float4 _EmissionMap_ST;
			float4 _BaseColorL2_ST;
			float4 _GlobalXYTilingXYZWOffsetXYSnow;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float _BumpScaleL2;
			float _Brightness;
			float _CrystalsIntensity;
			float _BumpScale;
			float _EmissionIntensity;
			float _EmissionIntensityL2;
			float _AoIntensityL2;
			float _ShadowMask;
			float _AmountSparkle;
			float _Metallic;
			float _MetallicL2;
			float _Glossiness;
			float _GlossinessL2;
			float _AoMask;
			float _Desaturatecrystals;
			float _IntensityDotMask;
			float _ContrastSparkles;
			float _Parallax;
			float _Saturation;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _L2ConstrainbyPaintedMask;
			float _TilingCrystals;
			float _L2BlendAmount;
			float _L2BlendOpacity;
			float _TilingDotMask;
			float _TilingInstance;
			float _SpreadDotMask;
			float _ContrastDotMask;
			float _BlendingModeCrystals;
			float _SparklePower;
			float _L2BlendContrast;
			float _AoIntensity;
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
			sampler2D _BaseMap;
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _BaseColorL2;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _SparkleMask;


			inline float2 ParallaxOffset( half h, half height, half3 viewDir )
			{
				h = h * height - height/2.0;
				float3 v = normalize( viewDir );
				v.z += 0.42;
				return h* (v.xy / v.z);
			}
			
			float4 CalculateContrast( float contrastValue, float4 colorTarget )
			{
				float t = 0.5 * ( 1.0 - contrastValue );
				return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
			}
			inline float4 TriplanarSampling274_g1537( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
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
				float3 vertexValue = defaultVertexValue;
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
				float4 ase_tangent : TANGENT;
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
				o.ase_tangent = v.ase_tangent;
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
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
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
				float2 break26_g1533 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1533 = (float2(( break26_g1533.x * L0GlobalTilingX150 ) , ( break26_g1533.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1533 = (float2(( break26_g1533.x + L0GlobalOffsetX151 ) , ( break26_g1533.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1502 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1502 = (float2(( break26_g1502.x * L0GlobalTilingX150 ) , ( break26_g1502.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1502 = (float2(( break26_g1502.x + L0GlobalOffsetX151 ) , ( break26_g1502.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1501 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1502 + appendResult13_g1502 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1501 = ParallaxOffset( tex2DNode3_g1501.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1501 = (((ase_vface>0)?(paralaxOffset38_g1501):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1501;
				float4 tex2DNode7_g1532 = tex2D( _BaseMap, ( ( appendResult14_g1533 + appendResult13_g1533 ) + Layer0Parallax215 ) );
				float4 lerpResult53_g1532 = lerp( _BaseColor , ( ( _BaseColor * tex2DNode7_g1532 ) * _BaseColor.a ) , _BaseColor.a);
				float clampResult27_g1532 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1532 = lerpResult53_g1532.rgb;
				float desaturateDot29_g1532 = dot( desaturateInitialColor29_g1532, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1532 = lerp( desaturateInitialColor29_g1532, desaturateDot29_g1532.xxx, -clampResult27_g1532 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1532 , 0.0 ));
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1536 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYSnow.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYSnow.y - 1.0 );
				float2 appendResult14_g1536 = (float2(( break26_g1536.x * L2GlobalTilingX484 ) , ( break26_g1536.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYSnow.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYSnow.w;
				float2 appendResult13_g1536 = (float2(( break26_g1536.x + L2GlobalOffsetX483 ) , ( break26_g1536.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1504 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1504 = (float2(( break26_g1504.x * L2GlobalTilingX484 ) , ( break26_g1504.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1504 = (float2(( break26_g1504.x + L2GlobalOffsetX483 ) , ( break26_g1504.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1503 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1504 + appendResult13_g1504 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1503 = ParallaxOffset( tex2DNode3_g1503.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1503 = (((ase_vface>0)?(paralaxOffset38_g1503):(0.0)));
				float2 Layer2Parallax1055 = switchResult37_g1503;
				float4 tex2DNode7_g1535 = tex2D( _BaseColorL2, ( ( appendResult14_g1536 + appendResult13_g1536 ) + Layer2Parallax1055 ) );
				float clampResult27_g1535 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1535 = ( _ColorL2 * tex2DNode7_g1535 ).rgb;
				float desaturateDot29_g1535 = dot( desaturateInitialColor29_g1535, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1535 = lerp( desaturateInitialColor29_g1535, desaturateDot29_g1535.xxx, -clampResult27_g1535 );
				float4 Layer2BaseColor1070 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1535 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexB116 = break106.b;
				float temp_output_21_0_g1534 = VertexB116;
				float Layer0Heightmap336 = tex2DNode3_g1501.b;
				float clampResult11_g1534 = clamp( ( (-4.0 + (_L2BlendAmount - 0.0) * (1.0 - -4.0) / (1.0 - 0.0)) + (( 1.0 + _L2BlendContrast ) + (Layer0Heightmap336 - 0.0) * (-_L2BlendContrast - ( 1.0 + _L2BlendContrast )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1534 = clampResult11_g1534;
				float blendOpDest18_g1534 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1534 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1534 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1534 * blendOpDest18_g1534 ) )) ):( clampResult11_g1534 ));
				float blendOpDest31_g1534 = temp_output_21_0_g1534;
				float VertexBHeightmap1077 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1534 + blendOpDest31_g1534 ) )) ):( temp_output_21_0_g1534 )) * _L2BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer2BaseColor1070 , VertexBHeightmap1077);
				float4 BaseColor121 = lerpResult99;
				float2 texCoord106_g1537 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float clampResult149_g1537 = clamp( _TilingInstance , 0.0 , 1000.0 );
				float2 temp_output_175_0_g1537 = Layer2Parallax1055;
				float temp_output_123_0_g1537 = ( tex2D( _SparkleMask, ( ( ( texCoord106_g1537 * _TilingDotMask ) * clampResult149_g1537 ) + temp_output_175_0_g1537 ) ).a + (-1.2 + (_SpreadDotMask - 0.0) * (0.7 - -1.2) / (1.0 - 0.0)) );
				float saferPower230_g1537 = abs( temp_output_123_0_g1537 );
				float temp_output_121_0_g1537 = ( _ContrastDotMask + 1.0 );
				float clampResult118_g1537 = clamp( pow( saferPower230_g1537 , temp_output_121_0_g1537 ) , 0.0 , 1.0 );
				float clampResult240_g1537 = clamp( _SparklePower , 0.0 , 100000.0 );
				float temp_output_277_0_g1537 = ( ( clampResult118_g1537 * _IntensityDotMask ) * clampResult240_g1537 );
				float VisualizeDotMap1001 = temp_output_277_0_g1537;
				float4 temp_cast_4 = (VisualizeDotMap1001).xxxx;
				float temp_output_135_0_g1537 = ( _ContrastSparkles - -1.0 );
				float2 temp_cast_5 = (( ( _TilingCrystals / 10.0 ) * clampResult149_g1537 )).xx;
				float3 worldToObj273_g1537 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float4 triplanar274_g1537 = TriplanarSampling274_g1537( _SparkleMask, ( ( ( worldToObj273_g1537 / 4.0 ) - ase_worldViewDir ) + float3( temp_output_175_0_g1537 ,  0.0 ) ), ase_worldNormal, 1.0, temp_cast_5, 1.0, 0 );
				float clampResult49_g1537 = clamp( _Desaturatecrystals , 0.0 , 1.0 );
				float3 desaturateInitialColor53_g1537 = triplanar274_g1537.xyz;
				float desaturateDot53_g1537 = dot( desaturateInitialColor53_g1537, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar53_g1537 = lerp( desaturateInitialColor53_g1537, desaturateDot53_g1537.xxx, clampResult49_g1537 );
				float lerpResult246_g1537 = lerp( 0.6 , 1.0 , _AmountSparkle);
				float4 clampResult74_g1537 = clamp( ( saturate( ( CalculateContrast(temp_output_135_0_g1537,float4( desaturateVar53_g1537 , 0.0 )) + (( -1.0 - temp_output_135_0_g1537 ) + (lerpResult246_g1537 - 0.0) * (0.0 - ( -1.0 - temp_output_135_0_g1537 )) / (1.0 - 0.0)) ) ) * _CrystalsIntensity ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
				float4 VisualizeSparklesMap1002 = clampResult74_g1537;
				#if defined(_VISUALIZESPARKLE_NONE)
				float4 staticSwitch1013 = BaseColor121;
				#elif defined(_VISUALIZESPARKLE_DOTMASK)
				float4 staticSwitch1013 = temp_cast_4;
				#elif defined(_VISUALIZESPARKLE_SPARKLEMAP)
				float4 staticSwitch1013 = VisualizeSparklesMap1002;
				#else
				float4 staticSwitch1013 = BaseColor121;
				#endif
				
				
				float3 Albedo = staticSwitch1013.rgb;
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