Shader "Ciconia Studio/CS_Polybrush/URP/Pro/Basic"
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

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
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			
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
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _ColorL2;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float _L3BlendOpacity;
			float _L3BlendContrast;
			float _BumpScale;
			float _BumpScaleL1;
			float _Brightness;
			float _MetallicL2;
			float _Metallic;
			float _MetallicL1;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL2;
			float _L3BlendAmount;
			float _L2ConstrainbyPaintedMask;
			float _L3UseHeightmapDepth1;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _L3ConstrainbyPaintedMask;
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _AoIntensityL2;
			float _L2BlendAmount;
			float _L2BlendContrast;
			float _L2BlendOpacity;
			float _L1BlendOpacity;
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
			sampler2D _BaseMap;
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _BaseColorL1;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _BaseColorL2;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _WetTex;
			sampler2D _BumpMap;
			sampler2D _BumpMapL1;
			sampler2D _BumpMapL2;


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

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				o.ase_texcoord7.xyz = v.texcoord.xyz;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.w = 0;
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

				float2 uv_BaseMap = IN.ase_texcoord7.xyz.xy * _BaseMap_ST.xy + _BaseMap_ST.zw;
				float2 break26_g1299 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1299 = (float2(( break26_g1299.x * L0GlobalTilingX150 ) , ( break26_g1299.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1299 = (float2(( break26_g1299.x + L0GlobalOffsetX151 ) , ( break26_g1299.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1055 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1055 = (float2(( break26_g1055.x * L0GlobalTilingX150 ) , ( break26_g1055.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1055 = (float2(( break26_g1055.x + L0GlobalOffsetX151 ) , ( break26_g1055.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1054 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1055 + appendResult13_g1055 ) + float2( 0,0 ) ) );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1054 = ParallaxOffset( tex2DNode3_g1054.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1054 = (((ase_vface>0)?(paralaxOffset38_g1054):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1054;
				float4 tex2DNode7_g1298 = tex2D( _BaseMap, ( ( appendResult14_g1299 + appendResult13_g1299 ) + Layer0Parallax215 ) );
				float clampResult27_g1298 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1298 = ( _BaseColor * tex2DNode7_g1298 ).rgb;
				float desaturateDot29_g1298 = dot( desaturateInitialColor29_g1298, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1298 = lerp( desaturateInitialColor29_g1298, desaturateDot29_g1298.xxx, -clampResult27_g1298 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1298 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord7.xyz.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1295 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1295 = (float2(( break26_g1295.x * L1GlobalTilingX234 ) , ( break26_g1295.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1295 = (float2(( break26_g1295.x + L1GlobalOffsetX236 ) , ( break26_g1295.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1057 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1057 = (float2(( break26_g1057.x * L1GlobalTilingX234 ) , ( break26_g1057.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1057 = (float2(( break26_g1057.x + L1GlobalOffsetX236 ) , ( break26_g1057.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1056 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1057 + appendResult13_g1057 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1056 = ParallaxOffset( tex2DNode3_g1056.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1056 = (((ase_vface>0)?(paralaxOffset38_g1056):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1056;
				float4 tex2DNode7_g1294 = tex2D( _BaseColorL1, ( ( appendResult14_g1295 + appendResult13_g1295 ) + Layer1Parallax247 ) );
				float clampResult27_g1294 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1294 = ( _ColorL1 * tex2DNode7_g1294 ).rgb;
				float desaturateDot29_g1294 = dot( desaturateInitialColor29_g1294, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1294 = lerp( desaturateInitialColor29_g1294, desaturateDot29_g1294.xxx, -clampResult27_g1294 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1294 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1300 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1054.b;
				float temp_output_49_0_g1300 = ( _L1BlendContrast - 1.5 );
				float clampResult11_g1300 = clamp( ( ( _L1BlendAmount - 2.37 ) + (( 1.0 + temp_output_49_0_g1300 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_49_0_g1300 - ( 1.0 + temp_output_49_0_g1300 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1300 = clampResult11_g1300;
				float blendOpDest18_g1300 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1300 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1300 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1300 * blendOpDest18_g1300 ) )) ):( clampResult11_g1300 ));
				float blendOpDest31_g1300 = temp_output_21_0_g1300;
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1300 + blendOpDest31_g1300 ) )) ):( temp_output_21_0_g1300 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord7.xyz.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1297 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1297 = (float2(( break26_g1297.x * L2GlobalTilingX484 ) , ( break26_g1297.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1297 = (float2(( break26_g1297.x + L2GlobalOffsetX483 ) , ( break26_g1297.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1059 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1059 = (float2(( break26_g1059.x * L2GlobalTilingX484 ) , ( break26_g1059.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1059 = (float2(( break26_g1059.x + L2GlobalOffsetX483 ) , ( break26_g1059.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1058 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1059 + appendResult13_g1059 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1058 = ParallaxOffset( tex2DNode3_g1058.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1058 = (((ase_vface>0)?(paralaxOffset38_g1058):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1058;
				float4 tex2DNode7_g1296 = tex2D( _BaseColorL2, ( ( appendResult14_g1297 + appendResult13_g1297 ) + Layer2Parallax462 ) );
				float clampResult27_g1296 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1296 = ( _ColorL2 * tex2DNode7_g1296 ).rgb;
				float desaturateDot29_g1296 = dot( desaturateInitialColor29_g1296, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1296 = lerp( desaturateInitialColor29_g1296, desaturateDot29_g1296.xxx, -clampResult27_g1296 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1296 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1301 = VertexB116;
				float temp_output_55_0_g1301 = ( _L2BlendAmount - 2.37 );
				float lerpResult47_g1301 = lerp( temp_output_55_0_g1301 , ( temp_output_55_0_g1301 - temp_output_55_0_g1301 ) , VertexG115);
				float Layer1Heightmap510 = tex2DNode3_g1056.b;
				float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
				float temp_output_56_0_g1301 = ( _L2BlendContrast - 1.5 );
				float clampResult11_g1301 = clamp( ( lerpResult47_g1301 + (( 1.0 + temp_output_56_0_g1301 ) + (lerpResult830 - 0.0) * (-temp_output_56_0_g1301 - ( 1.0 + temp_output_56_0_g1301 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1301 = clampResult11_g1301;
				float blendOpDest18_g1301 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1301 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1301 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1301 * blendOpDest18_g1301 ) )) ):( clampResult11_g1301 ));
				float blendOpDest31_g1301 = temp_output_21_0_g1301;
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1301 + blendOpDest31_g1301 ) )) ):( temp_output_21_0_g1301 )) * _L2BlendOpacity );
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
				float temp_output_21_0_g1302 = VertexA117;
				float temp_output_61_0_g1302 = ( _L3BlendAmount - 2.37 );
				float lerpResult50_g1302 = lerp( temp_output_61_0_g1302 , ( temp_output_61_0_g1302 - 2.0 ) , VertexG115);
				float lerpResult55_g1302 = lerp( lerpResult50_g1302 , -1.0 , VertexB116);
				float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
				float Layer2Heightmap511 = tex2DNode3_g1058.b;
				float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
				float temp_output_63_0_g1302 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1302 = clamp( ( lerpResult55_g1302 + (( 1.0 + temp_output_63_0_g1302 ) + (lerpResult819 - 0.0) * (-temp_output_63_0_g1302 - ( 1.0 + temp_output_63_0_g1302 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1302 = clampResult11_g1302;
				float blendOpDest18_g1302 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1302 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1302 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1302 * blendOpDest18_g1302 ) )) ):( clampResult11_g1302 ));
				float blendOpDest31_g1302 = temp_output_21_0_g1302;
				float temp_output_929_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1302 + blendOpDest31_g1302 ) )) ):( temp_output_21_0_g1302 ));
				float VertexAHeightmap799 = temp_output_929_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				
				float2 uv_BumpMap = IN.ase_texcoord7.xyz.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1345 = uv_BumpMap;
				float2 appendResult14_g1345 = (float2(( break26_g1345.x * L0GlobalTilingX150 ) , ( break26_g1345.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1345 = (float2(( break26_g1345.x + L0GlobalOffsetX151 ) , ( break26_g1345.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1344 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1345 + appendResult13_g1345 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1344.z = lerp( 1, unpack4_g1344.z, saturate(_BumpScale) );
				float3 Layer0Normal193 = unpack4_g1344;
				float2 uv_BumpMapL1 = IN.ase_texcoord7.xyz.xy * _BumpMapL1_ST.xy + _BumpMapL1_ST.zw;
				float2 break26_g1347 = uv_BumpMapL1;
				float2 appendResult14_g1347 = (float2(( break26_g1347.x * L1GlobalTilingX234 ) , ( break26_g1347.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1347 = (float2(( break26_g1347.x + L1GlobalOffsetX236 ) , ( break26_g1347.y + L1GlobalOffsetY237 )));
				float3 unpack4_g1346 = UnpackNormalScale( tex2D( _BumpMapL1, ( ( appendResult14_g1347 + appendResult13_g1347 ) + Layer1Parallax247 ) ), _BumpScaleL1 );
				unpack4_g1346.z = lerp( 1, unpack4_g1346.z, saturate(_BumpScaleL1) );
				float3 tex2DNode4_g1346 = unpack4_g1346;
				float3 Layer1Normal260 = tex2DNode4_g1346;
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , VertexGHeightmap352);
				float2 uv_BumpMapL2 = IN.ase_texcoord7.xyz.xy * _BumpMapL2_ST.xy + _BumpMapL2_ST.zw;
				float2 break26_g1349 = uv_BumpMapL2;
				float2 appendResult14_g1349 = (float2(( break26_g1349.x * L2GlobalTilingX484 ) , ( break26_g1349.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1349 = (float2(( break26_g1349.x + L2GlobalOffsetX483 ) , ( break26_g1349.y + L2GlobalOffsetY485 )));
				float3 unpack4_g1348 = UnpackNormalScale( tex2D( _BumpMapL2, ( ( appendResult14_g1349 + appendResult13_g1349 ) + Layer2Parallax462 ) ), _BumpScaleL2 );
				unpack4_g1348.z = lerp( 1, unpack4_g1348.z, saturate(_BumpScaleL2) );
				float3 tex2DNode4_g1348 = unpack4_g1348;
				float3 Layer2Normal477 = tex2DNode4_g1348;
				float3 lerpResult127 = lerp( lerpResult133 , Layer2Normal477 , VertexBHeightmap652);
				float3 lerpResult128 = lerp( lerpResult127 , float3(0,0,1) , ( VertexAHeightmap799 * WetOpacity768 ));
				float3 Normal129 = lerpResult128;
				
				float Layer0Metallic211 = ( tex2DNode3_g1054.r * _Metallic );
				float Layer1Metallic263 = ( tex2DNode3_g1056.r * _MetallicL1 );
				float lerpResult289 = lerp( Layer0Metallic211 , Layer1Metallic263 , VertexGHeightmap352);
				float Layer2Metallic478 = ( tex2DNode3_g1058.r * _MetallicL2 );
				float lerpResult286 = lerp( lerpResult289 , Layer2Metallic478 , VertexBHeightmap652);
				float CubemapMetalness750 = _Metalness;
				float lerpResult293 = lerp( lerpResult286 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
				float Metallic296 = lerpResult293;
				
				float temp_output_1_0_g1054 = ( tex2DNode3_g1054.a * _Glossiness );
				float Layer0Smoothness210 = temp_output_1_0_g1054;
				float temp_output_1_0_g1056 = ( tex2DNode3_g1056.a * _GlossinessL1 );
				float Layer1Smoothness264 = temp_output_1_0_g1056;
				float lerpResult301 = lerp( Layer0Smoothness210 , Layer1Smoothness264 , VertexGHeightmap352);
				float temp_output_1_0_g1058 = ( tex2DNode3_g1058.a * _GlossinessL2 );
				float Layer2Smoothness480 = temp_output_1_0_g1058;
				float lerpResult299 = lerp( lerpResult301 , Layer2Smoothness480 , VertexBHeightmap652);
				float CubemapSkyIntensity741 = _SmoothnessWet;
				float lerpResult305 = lerp( lerpResult299 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
				float Smoothness309 = lerpResult305;
				
				float blendOpSrc34_g1054 = tex2DNode3_g1054.g;
				float blendOpDest34_g1054 = ( 1.0 - _AoIntensity );
				float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1054 ) * ( 1.0 - blendOpDest34_g1054 ) ) ));
				float blendOpSrc34_g1056 = tex2DNode3_g1056.g;
				float blendOpDest34_g1056 = ( 1.0 - _AoIntensityL1 );
				float Layer1Ao262 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1056 ) * ( 1.0 - blendOpDest34_g1056 ) ) ));
				float lerpResult312 = lerp( Layer0Ao214 , Layer1Ao262 , VertexGHeightmap352);
				float blendOpSrc34_g1058 = tex2DNode3_g1058.g;
				float blendOpDest34_g1058 = ( 1.0 - _AoIntensityL2 );
				float Layer2Ao479 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1058 ) * ( 1.0 - blendOpDest34_g1058 ) ) ));
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
				
				float3 Albedo = BaseColor121.rgb;
				float3 Normal = Normal129;
				float3 Emission = 0;
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
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			
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
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _ColorL2;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float _L3BlendOpacity;
			float _L3BlendContrast;
			float _BumpScale;
			float _BumpScaleL1;
			float _Brightness;
			float _MetallicL2;
			float _Metallic;
			float _MetallicL1;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL2;
			float _L3BlendAmount;
			float _L2ConstrainbyPaintedMask;
			float _L3UseHeightmapDepth1;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _L3ConstrainbyPaintedMask;
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _AoIntensityL2;
			float _L2BlendAmount;
			float _L2BlendContrast;
			float _L2BlendOpacity;
			float _L1BlendOpacity;
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
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			
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
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _ColorL2;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float _L3BlendOpacity;
			float _L3BlendContrast;
			float _BumpScale;
			float _BumpScaleL1;
			float _Brightness;
			float _MetallicL2;
			float _Metallic;
			float _MetallicL1;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL2;
			float _L3BlendAmount;
			float _L2ConstrainbyPaintedMask;
			float _L3UseHeightmapDepth1;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _L3ConstrainbyPaintedMask;
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _AoIntensityL2;
			float _L2BlendAmount;
			float _L2BlendContrast;
			float _L2BlendOpacity;
			float _L1BlendOpacity;
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
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			
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
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _ColorL2;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float _L3BlendOpacity;
			float _L3BlendContrast;
			float _BumpScale;
			float _BumpScaleL1;
			float _Brightness;
			float _MetallicL2;
			float _Metallic;
			float _MetallicL1;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL2;
			float _L3BlendAmount;
			float _L2ConstrainbyPaintedMask;
			float _L3UseHeightmapDepth1;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _L3ConstrainbyPaintedMask;
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _AoIntensityL2;
			float _L2BlendAmount;
			float _L2BlendContrast;
			float _L2BlendOpacity;
			float _L1BlendOpacity;
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
			sampler2D _BaseMap;
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _BaseColorL1;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _BaseColorL2;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _WetTex;


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
				float2 break26_g1299 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1299 = (float2(( break26_g1299.x * L0GlobalTilingX150 ) , ( break26_g1299.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1299 = (float2(( break26_g1299.x + L0GlobalOffsetX151 ) , ( break26_g1299.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1055 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1055 = (float2(( break26_g1055.x * L0GlobalTilingX150 ) , ( break26_g1055.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1055 = (float2(( break26_g1055.x + L0GlobalOffsetX151 ) , ( break26_g1055.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1054 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1055 + appendResult13_g1055 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1054 = ParallaxOffset( tex2DNode3_g1054.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1054 = (((ase_vface>0)?(paralaxOffset38_g1054):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1054;
				float4 tex2DNode7_g1298 = tex2D( _BaseMap, ( ( appendResult14_g1299 + appendResult13_g1299 ) + Layer0Parallax215 ) );
				float clampResult27_g1298 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1298 = ( _BaseColor * tex2DNode7_g1298 ).rgb;
				float desaturateDot29_g1298 = dot( desaturateInitialColor29_g1298, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1298 = lerp( desaturateInitialColor29_g1298, desaturateDot29_g1298.xxx, -clampResult27_g1298 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1298 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord2.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1295 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1295 = (float2(( break26_g1295.x * L1GlobalTilingX234 ) , ( break26_g1295.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1295 = (float2(( break26_g1295.x + L1GlobalOffsetX236 ) , ( break26_g1295.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1057 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1057 = (float2(( break26_g1057.x * L1GlobalTilingX234 ) , ( break26_g1057.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1057 = (float2(( break26_g1057.x + L1GlobalOffsetX236 ) , ( break26_g1057.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1056 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1057 + appendResult13_g1057 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1056 = ParallaxOffset( tex2DNode3_g1056.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1056 = (((ase_vface>0)?(paralaxOffset38_g1056):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1056;
				float4 tex2DNode7_g1294 = tex2D( _BaseColorL1, ( ( appendResult14_g1295 + appendResult13_g1295 ) + Layer1Parallax247 ) );
				float clampResult27_g1294 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1294 = ( _ColorL1 * tex2DNode7_g1294 ).rgb;
				float desaturateDot29_g1294 = dot( desaturateInitialColor29_g1294, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1294 = lerp( desaturateInitialColor29_g1294, desaturateDot29_g1294.xxx, -clampResult27_g1294 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1294 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1300 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1054.b;
				float temp_output_49_0_g1300 = ( _L1BlendContrast - 1.5 );
				float clampResult11_g1300 = clamp( ( ( _L1BlendAmount - 2.37 ) + (( 1.0 + temp_output_49_0_g1300 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_49_0_g1300 - ( 1.0 + temp_output_49_0_g1300 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1300 = clampResult11_g1300;
				float blendOpDest18_g1300 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1300 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1300 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1300 * blendOpDest18_g1300 ) )) ):( clampResult11_g1300 ));
				float blendOpDest31_g1300 = temp_output_21_0_g1300;
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1300 + blendOpDest31_g1300 ) )) ):( temp_output_21_0_g1300 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1297 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1297 = (float2(( break26_g1297.x * L2GlobalTilingX484 ) , ( break26_g1297.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1297 = (float2(( break26_g1297.x + L2GlobalOffsetX483 ) , ( break26_g1297.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1059 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1059 = (float2(( break26_g1059.x * L2GlobalTilingX484 ) , ( break26_g1059.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1059 = (float2(( break26_g1059.x + L2GlobalOffsetX483 ) , ( break26_g1059.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1058 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1059 + appendResult13_g1059 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1058 = ParallaxOffset( tex2DNode3_g1058.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1058 = (((ase_vface>0)?(paralaxOffset38_g1058):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1058;
				float4 tex2DNode7_g1296 = tex2D( _BaseColorL2, ( ( appendResult14_g1297 + appendResult13_g1297 ) + Layer2Parallax462 ) );
				float clampResult27_g1296 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1296 = ( _ColorL2 * tex2DNode7_g1296 ).rgb;
				float desaturateDot29_g1296 = dot( desaturateInitialColor29_g1296, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1296 = lerp( desaturateInitialColor29_g1296, desaturateDot29_g1296.xxx, -clampResult27_g1296 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1296 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1301 = VertexB116;
				float temp_output_55_0_g1301 = ( _L2BlendAmount - 2.37 );
				float lerpResult47_g1301 = lerp( temp_output_55_0_g1301 , ( temp_output_55_0_g1301 - temp_output_55_0_g1301 ) , VertexG115);
				float Layer1Heightmap510 = tex2DNode3_g1056.b;
				float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
				float temp_output_56_0_g1301 = ( _L2BlendContrast - 1.5 );
				float clampResult11_g1301 = clamp( ( lerpResult47_g1301 + (( 1.0 + temp_output_56_0_g1301 ) + (lerpResult830 - 0.0) * (-temp_output_56_0_g1301 - ( 1.0 + temp_output_56_0_g1301 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1301 = clampResult11_g1301;
				float blendOpDest18_g1301 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1301 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1301 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1301 * blendOpDest18_g1301 ) )) ):( clampResult11_g1301 ));
				float blendOpDest31_g1301 = temp_output_21_0_g1301;
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1301 + blendOpDest31_g1301 ) )) ):( temp_output_21_0_g1301 )) * _L2BlendOpacity );
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
				float temp_output_21_0_g1302 = VertexA117;
				float temp_output_61_0_g1302 = ( _L3BlendAmount - 2.37 );
				float lerpResult50_g1302 = lerp( temp_output_61_0_g1302 , ( temp_output_61_0_g1302 - 2.0 ) , VertexG115);
				float lerpResult55_g1302 = lerp( lerpResult50_g1302 , -1.0 , VertexB116);
				float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
				float Layer2Heightmap511 = tex2DNode3_g1058.b;
				float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
				float temp_output_63_0_g1302 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1302 = clamp( ( lerpResult55_g1302 + (( 1.0 + temp_output_63_0_g1302 ) + (lerpResult819 - 0.0) * (-temp_output_63_0_g1302 - ( 1.0 + temp_output_63_0_g1302 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1302 = clampResult11_g1302;
				float blendOpDest18_g1302 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1302 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1302 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1302 * blendOpDest18_g1302 ) )) ):( clampResult11_g1302 ));
				float blendOpDest31_g1302 = temp_output_21_0_g1302;
				float temp_output_929_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1302 + blendOpDest31_g1302 ) )) ):( temp_output_21_0_g1302 ));
				float VertexAHeightmap799 = temp_output_929_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				
				
				float3 Albedo = BaseColor121.rgb;
				float3 Emission = 0;
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
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 70301

			
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
			float4 _GlobalXYTilingXYZWOffsetXYL1;
			float4 _GlobalXYTilingXYZWOffsetXYL2;
			float4 _MetallicGlossMapMAHSL2_ST;
			float4 _BumpMapL2_ST;
			float4 _WetTex_ST;
			float4 _BumpMapL1_ST;
			float4 _BumpMap_ST;
			float4 _MetallicGlossMapMAHSL1_ST;
			float4 _ColorL2;
			float4 _BaseColorL2_ST;
			float4 _ColorL1;
			float4 _ColorWet;
			float4 _MetallicGlossMapMAHS_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _BaseColorL1_ST;
			float _L3BlendOpacity;
			float _L3BlendContrast;
			float _BumpScale;
			float _BumpScaleL1;
			float _Brightness;
			float _MetallicL2;
			float _Metallic;
			float _MetallicL1;
			float _Metalness;
			float _Glossiness;
			float _GlossinessL1;
			float _GlossinessL2;
			float _SmoothnessWet;
			float _AoIntensity;
			float _AoIntensityL1;
			float _BumpScaleL2;
			float _L3BlendAmount;
			float _L2ConstrainbyPaintedMask;
			float _L3UseHeightmapDepth1;
			float _Parallax;
			float _Saturation;
			float _BrightnessL1;
			float _ParallaxL1;
			float _SaturationL1;
			float _L1UseHeightmapDepth1;
			float _L1ConstrainbyPaintedMask;
			float _L1BlendAmount;
			float _L3ConstrainbyPaintedMask;
			float _L1BlendContrast;
			float _BrightnessL2;
			float _ParallaxL2;
			float _SaturationL2;
			float _L2UseHeightmapDepth1;
			float _AoIntensityL2;
			float _L2BlendAmount;
			float _L2BlendContrast;
			float _L2BlendOpacity;
			float _L1BlendOpacity;
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
			sampler2D _BaseMap;
			sampler2D _MetallicGlossMapMAHS;
			sampler2D _BaseColorL1;
			sampler2D _MetallicGlossMapMAHSL1;
			sampler2D _BaseColorL2;
			sampler2D _MetallicGlossMapMAHSL2;
			sampler2D _WetTex;


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
				float2 break26_g1299 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1299 = (float2(( break26_g1299.x * L0GlobalTilingX150 ) , ( break26_g1299.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1299 = (float2(( break26_g1299.x + L0GlobalOffsetX151 ) , ( break26_g1299.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1055 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1055 = (float2(( break26_g1055.x * L0GlobalTilingX150 ) , ( break26_g1055.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1055 = (float2(( break26_g1055.x + L0GlobalOffsetX151 ) , ( break26_g1055.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1054 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1055 + appendResult13_g1055 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1054 = ParallaxOffset( tex2DNode3_g1054.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1054 = (((ase_vface>0)?(paralaxOffset38_g1054):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1054;
				float4 tex2DNode7_g1298 = tex2D( _BaseMap, ( ( appendResult14_g1299 + appendResult13_g1299 ) + Layer0Parallax215 ) );
				float clampResult27_g1298 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1298 = ( _BaseColor * tex2DNode7_g1298 ).rgb;
				float desaturateDot29_g1298 = dot( desaturateInitialColor29_g1298, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1298 = lerp( desaturateInitialColor29_g1298, desaturateDot29_g1298.xxx, -clampResult27_g1298 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1298 , 0.0 ));
				float2 uv_BaseColorL1 = IN.ase_texcoord2.xy * _BaseColorL1_ST.xy + _BaseColorL1_ST.zw;
				float2 break26_g1295 = uv_BaseColorL1;
				float L1GlobalTilingX234 = ( _GlobalXYTilingXYZWOffsetXYL1.x - 1.0 );
				float L1GlobalTilingY235 = ( _GlobalXYTilingXYZWOffsetXYL1.y - 1.0 );
				float2 appendResult14_g1295 = (float2(( break26_g1295.x * L1GlobalTilingX234 ) , ( break26_g1295.y * L1GlobalTilingY235 )));
				float L1GlobalOffsetX236 = _GlobalXYTilingXYZWOffsetXYL1.z;
				float L1GlobalOffsetY237 = _GlobalXYTilingXYZWOffsetXYL1.w;
				float2 appendResult13_g1295 = (float2(( break26_g1295.x + L1GlobalOffsetX236 ) , ( break26_g1295.y + L1GlobalOffsetY237 )));
				float2 uv_MetallicGlossMapMAHSL1 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL1_ST.xy + _MetallicGlossMapMAHSL1_ST.zw;
				float2 break26_g1057 = uv_MetallicGlossMapMAHSL1;
				float2 appendResult14_g1057 = (float2(( break26_g1057.x * L1GlobalTilingX234 ) , ( break26_g1057.y * L1GlobalTilingY235 )));
				float2 appendResult13_g1057 = (float2(( break26_g1057.x + L1GlobalOffsetX236 ) , ( break26_g1057.y + L1GlobalOffsetY237 )));
				float4 tex2DNode3_g1056 = tex2D( _MetallicGlossMapMAHSL1, ( ( appendResult14_g1057 + appendResult13_g1057 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1056 = ParallaxOffset( tex2DNode3_g1056.b , _ParallaxL1 , ase_tanViewDir );
				float2 switchResult37_g1056 = (((ase_vface>0)?(paralaxOffset38_g1056):(0.0)));
				float2 Layer1Parallax247 = switchResult37_g1056;
				float4 tex2DNode7_g1294 = tex2D( _BaseColorL1, ( ( appendResult14_g1295 + appendResult13_g1295 ) + Layer1Parallax247 ) );
				float clampResult27_g1294 = clamp( _SaturationL1 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1294 = ( _ColorL1 * tex2DNode7_g1294 ).rgb;
				float desaturateDot29_g1294 = dot( desaturateInitialColor29_g1294, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1294 = lerp( desaturateInitialColor29_g1294, desaturateDot29_g1294.xxx, -clampResult27_g1294 );
				float4 Layer1BaseColor261 = CalculateContrast(_BrightnessL1,float4( desaturateVar29_g1294 , 0.0 ));
				float4 break106 = IN.ase_color;
				float VertexG115 = break106.g;
				float temp_output_21_0_g1300 = VertexG115;
				float Layer0Heightmap336 = tex2DNode3_g1054.b;
				float temp_output_49_0_g1300 = ( _L1BlendContrast - 1.5 );
				float clampResult11_g1300 = clamp( ( ( _L1BlendAmount - 2.37 ) + (( 1.0 + temp_output_49_0_g1300 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_49_0_g1300 - ( 1.0 + temp_output_49_0_g1300 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1300 = clampResult11_g1300;
				float blendOpDest18_g1300 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1300 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1300 = (( _L1ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1300 * blendOpDest18_g1300 ) )) ):( clampResult11_g1300 ));
				float blendOpDest31_g1300 = temp_output_21_0_g1300;
				float VertexGHeightmap352 = ( (( _L1UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1300 + blendOpDest31_g1300 ) )) ):( temp_output_21_0_g1300 )) * _L1BlendOpacity );
				float4 lerpResult99 = lerp( Layer0BaseColor179 , Layer1BaseColor261 , VertexGHeightmap352);
				float2 uv_BaseColorL2 = IN.ase_texcoord2.xy * _BaseColorL2_ST.xy + _BaseColorL2_ST.zw;
				float2 break26_g1297 = uv_BaseColorL2;
				float L2GlobalTilingX484 = ( _GlobalXYTilingXYZWOffsetXYL2.x - 1.0 );
				float L2GlobalTilingY486 = ( _GlobalXYTilingXYZWOffsetXYL2.y - 1.0 );
				float2 appendResult14_g1297 = (float2(( break26_g1297.x * L2GlobalTilingX484 ) , ( break26_g1297.y * L2GlobalTilingY486 )));
				float L2GlobalOffsetX483 = _GlobalXYTilingXYZWOffsetXYL2.z;
				float L2GlobalOffsetY485 = _GlobalXYTilingXYZWOffsetXYL2.w;
				float2 appendResult13_g1297 = (float2(( break26_g1297.x + L2GlobalOffsetX483 ) , ( break26_g1297.y + L2GlobalOffsetY485 )));
				float2 uv_MetallicGlossMapMAHSL2 = IN.ase_texcoord2.xy * _MetallicGlossMapMAHSL2_ST.xy + _MetallicGlossMapMAHSL2_ST.zw;
				float2 break26_g1059 = uv_MetallicGlossMapMAHSL2;
				float2 appendResult14_g1059 = (float2(( break26_g1059.x * L2GlobalTilingX484 ) , ( break26_g1059.y * L2GlobalTilingY486 )));
				float2 appendResult13_g1059 = (float2(( break26_g1059.x + L2GlobalOffsetX483 ) , ( break26_g1059.y + L2GlobalOffsetY485 )));
				float4 tex2DNode3_g1058 = tex2D( _MetallicGlossMapMAHSL2, ( ( appendResult14_g1059 + appendResult13_g1059 ) + float2( 0,0 ) ) );
				float2 paralaxOffset38_g1058 = ParallaxOffset( tex2DNode3_g1058.b , _ParallaxL2 , ase_tanViewDir );
				float2 switchResult37_g1058 = (((ase_vface>0)?(paralaxOffset38_g1058):(0.0)));
				float2 Layer2Parallax462 = switchResult37_g1058;
				float4 tex2DNode7_g1296 = tex2D( _BaseColorL2, ( ( appendResult14_g1297 + appendResult13_g1297 ) + Layer2Parallax462 ) );
				float clampResult27_g1296 = clamp( _SaturationL2 , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1296 = ( _ColorL2 * tex2DNode7_g1296 ).rgb;
				float desaturateDot29_g1296 = dot( desaturateInitialColor29_g1296, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1296 = lerp( desaturateInitialColor29_g1296, desaturateDot29_g1296.xxx, -clampResult27_g1296 );
				float4 Layer2BaseColor476 = CalculateContrast(_BrightnessL2,float4( desaturateVar29_g1296 , 0.0 ));
				float VertexB116 = break106.b;
				float temp_output_21_0_g1301 = VertexB116;
				float temp_output_55_0_g1301 = ( _L2BlendAmount - 2.37 );
				float lerpResult47_g1301 = lerp( temp_output_55_0_g1301 , ( temp_output_55_0_g1301 - temp_output_55_0_g1301 ) , VertexG115);
				float Layer1Heightmap510 = tex2DNode3_g1056.b;
				float lerpResult830 = lerp( Layer0Heightmap336 , ( Layer1Heightmap510 * VertexG115 ) , VertexG115);
				float temp_output_56_0_g1301 = ( _L2BlendContrast - 1.5 );
				float clampResult11_g1301 = clamp( ( lerpResult47_g1301 + (( 1.0 + temp_output_56_0_g1301 ) + (lerpResult830 - 0.0) * (-temp_output_56_0_g1301 - ( 1.0 + temp_output_56_0_g1301 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1301 = clampResult11_g1301;
				float blendOpDest18_g1301 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1301 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1301 = (( _L2ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1301 * blendOpDest18_g1301 ) )) ):( clampResult11_g1301 ));
				float blendOpDest31_g1301 = temp_output_21_0_g1301;
				float VertexBHeightmap652 = ( (( _L2UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1301 + blendOpDest31_g1301 ) )) ):( temp_output_21_0_g1301 )) * _L2BlendOpacity );
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
				float temp_output_21_0_g1302 = VertexA117;
				float temp_output_61_0_g1302 = ( _L3BlendAmount - 2.37 );
				float lerpResult50_g1302 = lerp( temp_output_61_0_g1302 , ( temp_output_61_0_g1302 - 2.0 ) , VertexG115);
				float lerpResult55_g1302 = lerp( lerpResult50_g1302 , -1.0 , VertexB116);
				float lerpResult876 = lerp( ( Layer0Heightmap336 * ( 1.0 - VertexG115 ) ) , Layer1Heightmap510 , VertexG115);
				float Layer2Heightmap511 = tex2DNode3_g1058.b;
				float lerpResult819 = lerp( ( lerpResult876 * ( 1.0 - VertexB116 ) ) , Layer2Heightmap511 , VertexB116);
				float temp_output_63_0_g1302 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1302 = clamp( ( lerpResult55_g1302 + (( 1.0 + temp_output_63_0_g1302 ) + (lerpResult819 - 0.0) * (-temp_output_63_0_g1302 - ( 1.0 + temp_output_63_0_g1302 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1302 = clampResult11_g1302;
				float blendOpDest18_g1302 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1302 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1302 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1302 * blendOpDest18_g1302 ) )) ):( clampResult11_g1302 ));
				float blendOpDest31_g1302 = temp_output_21_0_g1302;
				float temp_output_929_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1302 + blendOpDest31_g1302 ) )) ):( temp_output_21_0_g1302 ));
				float VertexAHeightmap799 = temp_output_929_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( lerpResult100 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				
				
				float3 Albedo = BaseColor121.rgb;
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