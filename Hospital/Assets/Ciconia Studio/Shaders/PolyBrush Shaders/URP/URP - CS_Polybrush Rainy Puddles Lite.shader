Shader "Ciconia Studio/CS_Polybrush/URP/Lite/Rainy Puddles"
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
		[Space(15)][Header(Rain Dots Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Space(15)]_GradientTex("Gradient Tex", 2D) = "white" {}
		_Intensity("Intensity", Range( 0 , 1)) = 0
		_Tiling("Tiling", Float) = 100
		_SplashSpeed("Splash Speed", Range( 0 , 1)) = 0.1
		_Size("Size", Range( 0 , 1)) = 0.5
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
		[Space(35)][Header(Rain Ripples Properties)][Space(15)]_XColumnsYRowsZSpeedWStrartFrameNormal("X(Columns) - Y(Rows) - Z(Speed) - W(Strart Frame)Normal", Vector) = (8,8,0.25,0)
		_TextureAtlasNormal("Texture Atlas Normal", 2D) = "bump" {}
		_FlipBTilingNormal("FlipBook Tiling", Float) = 1
		_IntensityScaleNormal1("Instensity", Range( 0 , 1)) = 0.4
		[Space(35)][Toggle]_DuplicateTextureAtlasNormal("Duplicate Texture Atlas", Float) = 1
		_IntensityScaleNormal2("Instensity", Range( 0 , 1)) = 0.3
		_ScaleFBDetailsNormal("Scale", Float) = 1
		_FBDetailsNormal("Rotate Details", Float) = 45
		_OffsetFBDetailsNormal("Offset XY", Vector) = (1.5,1.5,0,0)
		[Space(10)]_Distortion1("Distortion --> Wetmap Only", Range( 0 , 1)) = 0.3
		[Space(35)][Header(Blend Properties)][Space(15)][Toggle]_L3UseHeightmapDepth1("Use Heightmap Depth", Float) = 1
		[Toggle]_L3ConstrainbyPaintedMask("Constrain By Painted Mask", Float) = 1
		[Space(10)]_L3BlendOpacity("Mask Opacity", Range( 0 , 1)) = 1
		[Space(10)]_L3BlendAmount("Amount", Float) = 1
		_L3BlendContrast("Contrast", Float) = 3.5
		[Space(35)][Header(Displacement Properties)][Space(15)][Toggle]_L1VisualizeHeightmap("Visualize Heightmap", Float) = 0
		[Space(10)]_L1Displacement1("Displacement", Float) = 0
		[Space(35)][Header(Tessellation Properties________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)]
		[Space(15)]_TessValue("Max Tessellation", Range(1, 32)) = 16
		[Space(15)]_TessMin("Tess Min Distance", Float) = 10
		_TessMax("Tess Max Distance", Float) = 25

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
			#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER
			#pragma shader_feature_local _DETAILWAVE_ON
			#pragma shader_feature_local _MAINWAVE_ON


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
			float4 _BumpMap_ST;
			float4 _ColorWet;
			float4 _ColorCubemap1;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _WetTex_ST;
			float4 _XColumnsYRowsZSpeedWStrartFrameNormal;
			float4 _PuddleMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float2 _OffsetFBDetailsNormal;
			float _NormalWaveIntensity1;
			float _TilingWave1;
			float _TilingWave2;
			float _TranslationSpeed1;
			float _RotationAngle2;
			float _RotationAngle1;
			float _TranslationSpeed2;
			float _ReflectionIntensity;
			float _BlurReflection;
			float _BumpScale;
			float _Metallic;
			float _Metalness;
			float _Glossiness;
			float _SplashSpeed;
			float _Tiling;
			float _Size;
			float _Intensity;
			float _SmoothnessWet;
			float _NormalWaveIntensity2;
			float _L0Displacement;
			float _L3UseHeightmapDepth1;
			float _L3BlendAmount;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _L3BlendContrast;
			float _DetailBrightness;
			float _FlipBTilingNormal;
			float _IntensityScaleNormal1;
			float _ScaleFBDetailsNormal;
			float _FBDetailsNormal;
			float _IntensityScaleNormal2;
			float _Distortion1;
			float _DetailSaturation;
			float _AoIntensity;
			float _L3ConstrainbyPaintedMask;
			float _DuplicateTextureAtlasNormal;
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
			sampler2D _BaseMap;
			sampler2D _WetTex;
			sampler2D _TextureAtlasNormal;
			sampler2D _BumpMap;
			sampler2D _PuddleMap;
			samplerCUBE _Cubemap;
			sampler2D _GradientTex;


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
			
					float2 voronoihash58_g1454( float2 p )
					{
						
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi58_g1454( float2 v, float time, inout float2 id, inout float2 mr, float smoothness )
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
						 		float2 o = voronoihash58_g1454( n + g );
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
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 uv_MetallicGlossMapMAHS = v.texcoord.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1436 );
				float4 temp_cast_5 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_5 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1435 );
				float4 break106 = v.ase_color;
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult619;
				
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
				float2 break26_g1406 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1406 = (float2(( break26_g1406.x * L0GlobalTilingX150 ) , ( break26_g1406.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1406 = (float2(( break26_g1406.x + L0GlobalOffsetX151 ) , ( break26_g1406.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord7.xyz.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ) );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 paralaxOffset38_g1388 = ParallaxOffset( tex2DNode3_g1388.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1388 = (((ase_vface>0)?(paralaxOffset38_g1388):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1388;
				float4 tex2DNode7_g1405 = tex2D( _BaseMap, ( ( appendResult14_g1406 + appendResult13_g1406 ) + Layer0Parallax215 ) );
				float clampResult27_g1405 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1405 = ( _BaseColor * tex2DNode7_g1405 ).rgb;
				float desaturateDot29_g1405 = dot( desaturateInitialColor29_g1405, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1405 = lerp( desaturateInitialColor29_g1405, desaturateDot29_g1405.xxx, -clampResult27_g1405 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1405 , 0.0 ));
				float4 temp_cast_2 = (1.0).xxxx;
				float2 uv_WetTex = IN.ase_texcoord7.xyz.xy * _WetTex_ST.xy + _WetTex_ST.zw;
				float FlipBookTiling100_g1387 = _FlipBTilingNormal;
				float2 temp_cast_3 = (FlipBookTiling100_g1387).xx;
				float2 texCoord114_g1387 = IN.ase_texcoord7.xyz.xy * temp_cast_3 + float2( 0,0 );
				float2 appendResult124_g1387 = (float2(frac( texCoord114_g1387.x ) , frac( texCoord114_g1387.y )));
				float XColumns119_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.x;
				float YRows118_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.y;
				float ZSpeed121_g1387 = ( ( _XColumnsYRowsZSpeedWStrartFrameNormal.x * _XColumnsYRowsZSpeedWStrartFrameNormal.y ) * _XColumnsYRowsZSpeedWStrartFrameNormal.z );
				float WStrartFrame122_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.w;
				// *** BEGIN Flipbook UV Animation vars ***
				// Total tiles of Flipbook Texture
				float fbtotaltiles130_g1387 = XColumns119_g1387 * YRows118_g1387;
				// Offsets for cols and rows of Flipbook Texture
				float fbcolsoffset130_g1387 = 1.0f / XColumns119_g1387;
				float fbrowsoffset130_g1387 = 1.0f / YRows118_g1387;
				// Speed of animation
				float fbspeed130_g1387 = _Time[ 1 ] * ZSpeed121_g1387;
				// UV Tiling (col and row offset)
				float2 fbtiling130_g1387 = float2(fbcolsoffset130_g1387, fbrowsoffset130_g1387);
				// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
				// Calculate current tile linear index
				float fbcurrenttileindex130_g1387 = round( fmod( fbspeed130_g1387 + WStrartFrame122_g1387, fbtotaltiles130_g1387) );
				fbcurrenttileindex130_g1387 += ( fbcurrenttileindex130_g1387 < 0) ? fbtotaltiles130_g1387 : 0;
				// Obtain Offset X coordinate from current tile linear index
				float fblinearindextox130_g1387 = round ( fmod ( fbcurrenttileindex130_g1387, XColumns119_g1387 ) );
				// Multiply Offset X by coloffset
				float fboffsetx130_g1387 = fblinearindextox130_g1387 * fbcolsoffset130_g1387;
				// Obtain Offset Y coordinate from current tile linear index
				float fblinearindextoy130_g1387 = round( fmod( ( fbcurrenttileindex130_g1387 - fblinearindextox130_g1387 ) / XColumns119_g1387, YRows118_g1387 ) );
				// Reverse Y to get tiles from Top to Bottom
				fblinearindextoy130_g1387 = (int)(YRows118_g1387-1) - fblinearindextoy130_g1387;
				// Multiply Offset Y by rowoffset
				float fboffsety130_g1387 = fblinearindextoy130_g1387 * fbrowsoffset130_g1387;
				// UV Offset
				float2 fboffset130_g1387 = float2(fboffsetx130_g1387, fboffsety130_g1387);
				// Flipbook UV
				half2 fbuv130_g1387 = appendResult124_g1387 * fbtiling130_g1387 + fboffset130_g1387;
				// *** END Flipbook UV Animation vars ***
				float3 unpack132_g1387 = UnpackNormalScale( tex2D( _TextureAtlasNormal, fbuv130_g1387 ), _IntensityScaleNormal1 );
				unpack132_g1387.z = lerp( 1, unpack132_g1387.z, saturate(_IntensityScaleNormal1) );
				float3 tex2DNode132_g1387 = unpack132_g1387;
				float2 temp_cast_4 = (( FlipBookTiling100_g1387 / _ScaleFBDetailsNormal )).xx;
				float2 texCoord105_g1387 = IN.ase_texcoord7.xyz.xy * temp_cast_4 + _OffsetFBDetailsNormal;
				float cos111_g1387 = cos( _FBDetailsNormal );
				float sin111_g1387 = sin( _FBDetailsNormal );
				float2 rotator111_g1387 = mul( texCoord105_g1387 - float2( 0.5,0.5 ) , float2x2( cos111_g1387 , -sin111_g1387 , sin111_g1387 , cos111_g1387 )) + float2( 0.5,0.5 );
				float2 break112_g1387 = rotator111_g1387;
				float2 appendResult123_g1387 = (float2(frac( break112_g1387.x ) , frac( break112_g1387.y )));
				float fbtotaltiles129_g1387 = XColumns119_g1387 * YRows118_g1387;
				float fbcolsoffset129_g1387 = 1.0f / XColumns119_g1387;
				float fbrowsoffset129_g1387 = 1.0f / YRows118_g1387;
				float fbspeed129_g1387 = _Time[ 1 ] * ZSpeed121_g1387;
				float2 fbtiling129_g1387 = float2(fbcolsoffset129_g1387, fbrowsoffset129_g1387);
				float fbcurrenttileindex129_g1387 = round( fmod( fbspeed129_g1387 + WStrartFrame122_g1387, fbtotaltiles129_g1387) );
				fbcurrenttileindex129_g1387 += ( fbcurrenttileindex129_g1387 < 0) ? fbtotaltiles129_g1387 : 0;
				float fblinearindextox129_g1387 = round ( fmod ( fbcurrenttileindex129_g1387, XColumns119_g1387 ) );
				float fboffsetx129_g1387 = fblinearindextox129_g1387 * fbcolsoffset129_g1387;
				float fblinearindextoy129_g1387 = round( fmod( ( fbcurrenttileindex129_g1387 - fblinearindextox129_g1387 ) / XColumns119_g1387, YRows118_g1387 ) );
				fblinearindextoy129_g1387 = (int)(YRows118_g1387-1) - fblinearindextoy129_g1387;
				float fboffsety129_g1387 = fblinearindextoy129_g1387 * fbrowsoffset129_g1387;
				float2 fboffset129_g1387 = float2(fboffsetx129_g1387, fboffsety129_g1387);
				half2 fbuv129_g1387 = appendResult123_g1387 * fbtiling129_g1387 + fboffset129_g1387;
				float3 unpack134_g1387 = UnpackNormalScale( tex2D( _TextureAtlasNormal, fbuv129_g1387 ), _IntensityScaleNormal2 );
				unpack134_g1387.z = lerp( 1, unpack134_g1387.z, saturate(_IntensityScaleNormal2) );
				float3 RainDotsNormal988 = (( _DuplicateTextureAtlasNormal )?( BlendNormal( tex2DNode132_g1387 , unpack134_g1387 ) ):( tex2DNode132_g1387 ));
				float2 temp_cast_6 = (_Distortion1).xx;
				float4 tex2DNode44_g1408 = tex2D( _WetTex, ( uv_WetTex + ( RainDotsNormal988.xy * temp_cast_6 ) ) );
				float clampResult27_g1408 = clamp( _DetailSaturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1408 = tex2DNode44_g1408.rgb;
				float desaturateDot29_g1408 = dot( desaturateInitialColor29_g1408, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1408 = lerp( desaturateInitialColor29_g1408, desaturateDot29_g1408.xxx, -clampResult27_g1408 );
				float4 Layer1BaseColor261 = CalculateContrast(_DetailBrightness,float4( desaturateVar29_g1408 , 0.0 ));
				#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_2;
				#elif defined(_WETBASECOLOR_WETMAP)
				float4 staticSwitch767 = Layer1BaseColor261;
				#elif defined(_WETBASECOLOR_BASELAYER)
				float4 staticSwitch767 = Layer0BaseColor179;
				#else
				float4 staticSwitch767 = Layer0BaseColor179;
				#endif
				float4 Layer3BaseColor786 = ( _ColorWet * staticSwitch767 );
				float4 break106 = IN.ase_color;
				float VertexA117 = break106.a;
				float temp_output_21_0_g1434 = VertexA117;
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float temp_output_62_0_g1434 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1434 = clamp( ( ( _L3BlendAmount - 2.37 ) + (( 1.0 + temp_output_62_0_g1434 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_62_0_g1434 - ( 1.0 + temp_output_62_0_g1434 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1434 = clampResult11_g1434;
				float blendOpDest18_g1434 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1434 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1434 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1434 * blendOpDest18_g1434 ) )) ):( clampResult11_g1434 ));
				float blendOpDest31_g1434 = temp_output_21_0_g1434;
				float temp_output_1004_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1434 + blendOpDest31_g1434 ) )) ):( temp_output_21_0_g1434 ));
				float VertexAHeightmap799 = temp_output_1004_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( Layer0BaseColor179 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				float4 temp_cast_9 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1436;
				float VertexR114 = break106.r;
				float4 temp_cast_12 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_12 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VisHeightmap612 = temp_output_10_0_g1435;
				
				float2 uv_BumpMap = IN.ase_texcoord7.xyz.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1451 = uv_BumpMap;
				float2 appendResult14_g1451 = (float2(( break26_g1451.x * L0GlobalTilingX150 ) , ( break26_g1451.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1451 = (float2(( break26_g1451.x + L0GlobalOffsetX151 ) , ( break26_g1451.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1450 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1451 + appendResult13_g1451 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1450.z = lerp( 1, unpack4_g1450.z, saturate(_BumpScale) );
				float3 Layer0Normal193 = unpack4_g1450;
				float2 temp_cast_14 = (_TranslationSpeed1).xx;
				float2 uv_PuddleMap = IN.ase_texcoord7.xyz.xy * _PuddleMap_ST.xy + _PuddleMap_ST.zw;
				float cos54_g1449 = cos( radians( _RotationAngle1 ) );
				float sin54_g1449 = sin( radians( _RotationAngle1 ) );
				float2 rotator54_g1449 = mul( ( uv_PuddleMap * _TilingWave1 ) - float2( 0.5,0.5 ) , float2x2( cos54_g1449 , -sin54_g1449 , sin54_g1449 , cos54_g1449 )) + float2( 0.5,0.5 );
				float2 panner86_g1449 = ( ( _TimeParameters.x * 0.05 ) * temp_cast_14 + rotator54_g1449);
				float3 unpack107_g1449 = UnpackNormalScale( tex2D( _PuddleMap, panner86_g1449 ), _NormalWaveIntensity1 );
				unpack107_g1449.z = lerp( 1, unpack107_g1449.z, saturate(_NormalWaveIntensity1) );
				#ifdef _MAINWAVE_ON
				float3 staticSwitch109_g1449 = unpack107_g1449;
				#else
				float3 staticSwitch109_g1449 = float3(0,0,1);
				#endif
				float2 temp_cast_15 = (_TranslationSpeed2).xx;
				float cos83_g1449 = cos( radians( _RotationAngle2 ) );
				float sin83_g1449 = sin( radians( _RotationAngle2 ) );
				float2 rotator83_g1449 = mul( ( uv_PuddleMap * _TilingWave2 ) - float2( 0.5,0.5 ) , float2x2( cos83_g1449 , -sin83_g1449 , sin83_g1449 , cos83_g1449 )) + float2( 0.5,0.5 );
				float2 panner88_g1449 = ( ( _TimeParameters.x * 0.05 ) * temp_cast_15 + rotator83_g1449);
				float3 unpack108_g1449 = UnpackNormalScale( tex2D( _PuddleMap, panner88_g1449 ), _NormalWaveIntensity2 );
				unpack108_g1449.z = lerp( 1, unpack108_g1449.z, saturate(_NormalWaveIntensity2) );
				#ifdef _DETAILWAVE_ON
				float3 staticSwitch56_g1449 = BlendNormal( staticSwitch109_g1449 , unpack108_g1449 );
				#else
				float3 staticSwitch56_g1449 = staticSwitch109_g1449;
				#endif
				float3 Layer1Normal260 = BlendNormal( staticSwitch56_g1449 , RainDotsNormal988 );
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , ( VertexAHeightmap799 * WetOpacity768 ));
				float3 Normal129 = lerpResult133;
				
				float3 worldRefl28_g1453 = normalize( reflect( -WorldViewDirection, float3( dot( tanToWorld0, Normal129 ), dot( tanToWorld1, Normal129 ), dot( tanToWorld2, Normal129 ) ) ) );
				float4 texCUBENode27_g1453 = texCUBElod( _Cubemap, float4( worldRefl28_g1453, _BlurReflection) );
				float clampResult39_g1453 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
				float4 temp_cast_16 = (1.0).xxxx;
				float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1453 * ( texCUBENode27_g1453.a * clampResult39_g1453 ) * _ColorCubemap1 ) * temp_cast_16 ) , VertexA117);
				float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
				
				float Layer0Metallic211 = ( tex2DNode3_g1388.r * _Metallic );
				float CubemapMetalness750 = _Metalness;
				float lerpResult293 = lerp( Layer0Metallic211 , CubemapMetalness750 , ( VertexAHeightmap799 * WetOpacity768 ));
				float Metallic296 = lerpResult293;
				
				float temp_output_1_0_g1388 = ( tex2DNode3_g1388.a * _Glossiness );
				float2 temp_cast_19 = (_SplashSpeed).xx;
				float time58_g1454 = ( 1.0 * 0.001 );
				float2 texCoord55_g1454 = IN.ase_texcoord7.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 coords58_g1454 = texCoord55_g1454 * _Tiling;
				float2 id58_g1454 = 0;
				float2 uv58_g1454 = 0;
				float fade58_g1454 = 0.5;
				float voroi58_g1454 = 0;
				float rest58_g1454 = 0;
				for( int it58_g1454 = 0; it58_g1454 <2; it58_g1454++ ){
				voroi58_g1454 += fade58_g1454 * voronoi58_g1454( coords58_g1454, time58_g1454, id58_g1454, uv58_g1454, 0 );
				rest58_g1454 += fade58_g1454;
				coords58_g1454 *= 2;
				fade58_g1454 *= 0.5;
				}//Voronoi58_g1454
				voroi58_g1454 /= rest58_g1454;
				float2 myVarName60_g1454 = id58_g1454;
				float2 panner63_g1454 = ( 1.0 * _Time.y * temp_cast_19 + ( step( voroi58_g1454 , 0.1 ) * myVarName60_g1454 ));
				float RainDotsRoughness981 = ( saturate( ( tex2D( _GradientTex, panner63_g1454 ).g * step( voroi58_g1454 , (0.0 + (_Size - 0.0) * (0.05 - 0.0) / (1.0 - 0.0)) ) ) ) * _Intensity );
				float Layer0Smoothness210 = ( ( temp_output_1_0_g1388 * ( 1.0 - RainDotsRoughness981 ) ) + RainDotsRoughness981 );
				float CubemapSkyIntensity741 = _SmoothnessWet;
				float lerpResult305 = lerp( Layer0Smoothness210 , CubemapSkyIntensity741 , ( VertexAHeightmap799 * WetOpacity768 ));
				float Smoothness309 = lerpResult305;
				
				float blendOpSrc34_g1388 = tex2DNode3_g1388.g;
				float blendOpDest34_g1388 = ( 1.0 - _AoIntensity );
				float Layer0Ao214 = ( saturate( ( 1.0 - ( 1.0 - blendOpSrc34_g1388 ) * ( 1.0 - blendOpDest34_g1388 ) ) ));
				float WetAo935 = tex2DNode44_g1408.a;
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
				
				float3 Albedo = (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexA117 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )).xyz;
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
			float4 _BumpMap_ST;
			float4 _ColorWet;
			float4 _ColorCubemap1;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _WetTex_ST;
			float4 _XColumnsYRowsZSpeedWStrartFrameNormal;
			float4 _PuddleMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float2 _OffsetFBDetailsNormal;
			float _NormalWaveIntensity1;
			float _TilingWave1;
			float _TilingWave2;
			float _TranslationSpeed1;
			float _RotationAngle2;
			float _RotationAngle1;
			float _TranslationSpeed2;
			float _ReflectionIntensity;
			float _BlurReflection;
			float _BumpScale;
			float _Metallic;
			float _Metalness;
			float _Glossiness;
			float _SplashSpeed;
			float _Tiling;
			float _Size;
			float _Intensity;
			float _SmoothnessWet;
			float _NormalWaveIntensity2;
			float _L0Displacement;
			float _L3UseHeightmapDepth1;
			float _L3BlendAmount;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _L3BlendContrast;
			float _DetailBrightness;
			float _FlipBTilingNormal;
			float _IntensityScaleNormal1;
			float _ScaleFBDetailsNormal;
			float _FBDetailsNormal;
			float _IntensityScaleNormal2;
			float _Distortion1;
			float _DetailSaturation;
			float _AoIntensity;
			float _L3ConstrainbyPaintedMask;
			float _DuplicateTextureAtlasNormal;
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
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1436 );
				float4 temp_cast_5 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_5 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1435 );
				float4 break106 = v.ase_color;
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult619;
				
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
			float4 _BumpMap_ST;
			float4 _ColorWet;
			float4 _ColorCubemap1;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _WetTex_ST;
			float4 _XColumnsYRowsZSpeedWStrartFrameNormal;
			float4 _PuddleMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float2 _OffsetFBDetailsNormal;
			float _NormalWaveIntensity1;
			float _TilingWave1;
			float _TilingWave2;
			float _TranslationSpeed1;
			float _RotationAngle2;
			float _RotationAngle1;
			float _TranslationSpeed2;
			float _ReflectionIntensity;
			float _BlurReflection;
			float _BumpScale;
			float _Metallic;
			float _Metalness;
			float _Glossiness;
			float _SplashSpeed;
			float _Tiling;
			float _Size;
			float _Intensity;
			float _SmoothnessWet;
			float _NormalWaveIntensity2;
			float _L0Displacement;
			float _L3UseHeightmapDepth1;
			float _L3BlendAmount;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _L3BlendContrast;
			float _DetailBrightness;
			float _FlipBTilingNormal;
			float _IntensityScaleNormal1;
			float _ScaleFBDetailsNormal;
			float _FBDetailsNormal;
			float _IntensityScaleNormal2;
			float _Distortion1;
			float _DetailSaturation;
			float _AoIntensity;
			float _L3ConstrainbyPaintedMask;
			float _DuplicateTextureAtlasNormal;
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
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1436 );
				float4 temp_cast_5 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_5 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1435 );
				float4 break106 = v.ase_color;
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult619;
				
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
			#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER
			#pragma shader_feature_local _DETAILWAVE_ON
			#pragma shader_feature_local _MAINWAVE_ON


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
			float4 _BumpMap_ST;
			float4 _ColorWet;
			float4 _ColorCubemap1;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _WetTex_ST;
			float4 _XColumnsYRowsZSpeedWStrartFrameNormal;
			float4 _PuddleMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float2 _OffsetFBDetailsNormal;
			float _NormalWaveIntensity1;
			float _TilingWave1;
			float _TilingWave2;
			float _TranslationSpeed1;
			float _RotationAngle2;
			float _RotationAngle1;
			float _TranslationSpeed2;
			float _ReflectionIntensity;
			float _BlurReflection;
			float _BumpScale;
			float _Metallic;
			float _Metalness;
			float _Glossiness;
			float _SplashSpeed;
			float _Tiling;
			float _Size;
			float _Intensity;
			float _SmoothnessWet;
			float _NormalWaveIntensity2;
			float _L0Displacement;
			float _L3UseHeightmapDepth1;
			float _L3BlendAmount;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _L3BlendContrast;
			float _DetailBrightness;
			float _FlipBTilingNormal;
			float _IntensityScaleNormal1;
			float _ScaleFBDetailsNormal;
			float _FBDetailsNormal;
			float _IntensityScaleNormal2;
			float _Distortion1;
			float _DetailSaturation;
			float _AoIntensity;
			float _L3ConstrainbyPaintedMask;
			float _DuplicateTextureAtlasNormal;
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
			sampler2D _BaseMap;
			sampler2D _WetTex;
			sampler2D _TextureAtlasNormal;
			samplerCUBE _Cubemap;
			sampler2D _BumpMap;
			sampler2D _PuddleMap;


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
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1436 );
				float4 temp_cast_5 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_5 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1435 );
				float4 break106 = v.ase_color;
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult619;
				
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
				float2 break26_g1406 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1406 = (float2(( break26_g1406.x * L0GlobalTilingX150 ) , ( break26_g1406.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1406 = (float2(( break26_g1406.x + L0GlobalOffsetX151 ) , ( break26_g1406.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xyz.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1388 = ParallaxOffset( tex2DNode3_g1388.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1388 = (((ase_vface>0)?(paralaxOffset38_g1388):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1388;
				float4 tex2DNode7_g1405 = tex2D( _BaseMap, ( ( appendResult14_g1406 + appendResult13_g1406 ) + Layer0Parallax215 ) );
				float clampResult27_g1405 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1405 = ( _BaseColor * tex2DNode7_g1405 ).rgb;
				float desaturateDot29_g1405 = dot( desaturateInitialColor29_g1405, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1405 = lerp( desaturateInitialColor29_g1405, desaturateDot29_g1405.xxx, -clampResult27_g1405 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1405 , 0.0 ));
				float4 temp_cast_2 = (1.0).xxxx;
				float2 uv_WetTex = IN.ase_texcoord2.xyz.xy * _WetTex_ST.xy + _WetTex_ST.zw;
				float FlipBookTiling100_g1387 = _FlipBTilingNormal;
				float2 temp_cast_3 = (FlipBookTiling100_g1387).xx;
				float2 texCoord114_g1387 = IN.ase_texcoord2.xyz.xy * temp_cast_3 + float2( 0,0 );
				float2 appendResult124_g1387 = (float2(frac( texCoord114_g1387.x ) , frac( texCoord114_g1387.y )));
				float XColumns119_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.x;
				float YRows118_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.y;
				float ZSpeed121_g1387 = ( ( _XColumnsYRowsZSpeedWStrartFrameNormal.x * _XColumnsYRowsZSpeedWStrartFrameNormal.y ) * _XColumnsYRowsZSpeedWStrartFrameNormal.z );
				float WStrartFrame122_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.w;
				// *** BEGIN Flipbook UV Animation vars ***
				// Total tiles of Flipbook Texture
				float fbtotaltiles130_g1387 = XColumns119_g1387 * YRows118_g1387;
				// Offsets for cols and rows of Flipbook Texture
				float fbcolsoffset130_g1387 = 1.0f / XColumns119_g1387;
				float fbrowsoffset130_g1387 = 1.0f / YRows118_g1387;
				// Speed of animation
				float fbspeed130_g1387 = _Time[ 1 ] * ZSpeed121_g1387;
				// UV Tiling (col and row offset)
				float2 fbtiling130_g1387 = float2(fbcolsoffset130_g1387, fbrowsoffset130_g1387);
				// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
				// Calculate current tile linear index
				float fbcurrenttileindex130_g1387 = round( fmod( fbspeed130_g1387 + WStrartFrame122_g1387, fbtotaltiles130_g1387) );
				fbcurrenttileindex130_g1387 += ( fbcurrenttileindex130_g1387 < 0) ? fbtotaltiles130_g1387 : 0;
				// Obtain Offset X coordinate from current tile linear index
				float fblinearindextox130_g1387 = round ( fmod ( fbcurrenttileindex130_g1387, XColumns119_g1387 ) );
				// Multiply Offset X by coloffset
				float fboffsetx130_g1387 = fblinearindextox130_g1387 * fbcolsoffset130_g1387;
				// Obtain Offset Y coordinate from current tile linear index
				float fblinearindextoy130_g1387 = round( fmod( ( fbcurrenttileindex130_g1387 - fblinearindextox130_g1387 ) / XColumns119_g1387, YRows118_g1387 ) );
				// Reverse Y to get tiles from Top to Bottom
				fblinearindextoy130_g1387 = (int)(YRows118_g1387-1) - fblinearindextoy130_g1387;
				// Multiply Offset Y by rowoffset
				float fboffsety130_g1387 = fblinearindextoy130_g1387 * fbrowsoffset130_g1387;
				// UV Offset
				float2 fboffset130_g1387 = float2(fboffsetx130_g1387, fboffsety130_g1387);
				// Flipbook UV
				half2 fbuv130_g1387 = appendResult124_g1387 * fbtiling130_g1387 + fboffset130_g1387;
				// *** END Flipbook UV Animation vars ***
				float3 unpack132_g1387 = UnpackNormalScale( tex2D( _TextureAtlasNormal, fbuv130_g1387 ), _IntensityScaleNormal1 );
				unpack132_g1387.z = lerp( 1, unpack132_g1387.z, saturate(_IntensityScaleNormal1) );
				float3 tex2DNode132_g1387 = unpack132_g1387;
				float2 temp_cast_4 = (( FlipBookTiling100_g1387 / _ScaleFBDetailsNormal )).xx;
				float2 texCoord105_g1387 = IN.ase_texcoord2.xyz.xy * temp_cast_4 + _OffsetFBDetailsNormal;
				float cos111_g1387 = cos( _FBDetailsNormal );
				float sin111_g1387 = sin( _FBDetailsNormal );
				float2 rotator111_g1387 = mul( texCoord105_g1387 - float2( 0.5,0.5 ) , float2x2( cos111_g1387 , -sin111_g1387 , sin111_g1387 , cos111_g1387 )) + float2( 0.5,0.5 );
				float2 break112_g1387 = rotator111_g1387;
				float2 appendResult123_g1387 = (float2(frac( break112_g1387.x ) , frac( break112_g1387.y )));
				float fbtotaltiles129_g1387 = XColumns119_g1387 * YRows118_g1387;
				float fbcolsoffset129_g1387 = 1.0f / XColumns119_g1387;
				float fbrowsoffset129_g1387 = 1.0f / YRows118_g1387;
				float fbspeed129_g1387 = _Time[ 1 ] * ZSpeed121_g1387;
				float2 fbtiling129_g1387 = float2(fbcolsoffset129_g1387, fbrowsoffset129_g1387);
				float fbcurrenttileindex129_g1387 = round( fmod( fbspeed129_g1387 + WStrartFrame122_g1387, fbtotaltiles129_g1387) );
				fbcurrenttileindex129_g1387 += ( fbcurrenttileindex129_g1387 < 0) ? fbtotaltiles129_g1387 : 0;
				float fblinearindextox129_g1387 = round ( fmod ( fbcurrenttileindex129_g1387, XColumns119_g1387 ) );
				float fboffsetx129_g1387 = fblinearindextox129_g1387 * fbcolsoffset129_g1387;
				float fblinearindextoy129_g1387 = round( fmod( ( fbcurrenttileindex129_g1387 - fblinearindextox129_g1387 ) / XColumns119_g1387, YRows118_g1387 ) );
				fblinearindextoy129_g1387 = (int)(YRows118_g1387-1) - fblinearindextoy129_g1387;
				float fboffsety129_g1387 = fblinearindextoy129_g1387 * fbrowsoffset129_g1387;
				float2 fboffset129_g1387 = float2(fboffsetx129_g1387, fboffsety129_g1387);
				half2 fbuv129_g1387 = appendResult123_g1387 * fbtiling129_g1387 + fboffset129_g1387;
				float3 unpack134_g1387 = UnpackNormalScale( tex2D( _TextureAtlasNormal, fbuv129_g1387 ), _IntensityScaleNormal2 );
				unpack134_g1387.z = lerp( 1, unpack134_g1387.z, saturate(_IntensityScaleNormal2) );
				float3 RainDotsNormal988 = (( _DuplicateTextureAtlasNormal )?( BlendNormal( tex2DNode132_g1387 , unpack134_g1387 ) ):( tex2DNode132_g1387 ));
				float2 temp_cast_6 = (_Distortion1).xx;
				float4 tex2DNode44_g1408 = tex2D( _WetTex, ( uv_WetTex + ( RainDotsNormal988.xy * temp_cast_6 ) ) );
				float clampResult27_g1408 = clamp( _DetailSaturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1408 = tex2DNode44_g1408.rgb;
				float desaturateDot29_g1408 = dot( desaturateInitialColor29_g1408, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1408 = lerp( desaturateInitialColor29_g1408, desaturateDot29_g1408.xxx, -clampResult27_g1408 );
				float4 Layer1BaseColor261 = CalculateContrast(_DetailBrightness,float4( desaturateVar29_g1408 , 0.0 ));
				#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_2;
				#elif defined(_WETBASECOLOR_WETMAP)
				float4 staticSwitch767 = Layer1BaseColor261;
				#elif defined(_WETBASECOLOR_BASELAYER)
				float4 staticSwitch767 = Layer0BaseColor179;
				#else
				float4 staticSwitch767 = Layer0BaseColor179;
				#endif
				float4 Layer3BaseColor786 = ( _ColorWet * staticSwitch767 );
				float4 break106 = IN.ase_color;
				float VertexA117 = break106.a;
				float temp_output_21_0_g1434 = VertexA117;
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float temp_output_62_0_g1434 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1434 = clamp( ( ( _L3BlendAmount - 2.37 ) + (( 1.0 + temp_output_62_0_g1434 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_62_0_g1434 - ( 1.0 + temp_output_62_0_g1434 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1434 = clampResult11_g1434;
				float blendOpDest18_g1434 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1434 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1434 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1434 * blendOpDest18_g1434 ) )) ):( clampResult11_g1434 ));
				float blendOpDest31_g1434 = temp_output_21_0_g1434;
				float temp_output_1004_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1434 + blendOpDest31_g1434 ) )) ):( temp_output_21_0_g1434 ));
				float VertexAHeightmap799 = temp_output_1004_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( Layer0BaseColor179 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				float4 temp_cast_9 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1436;
				float VertexR114 = break106.r;
				float4 temp_cast_12 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_12 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VisHeightmap612 = temp_output_10_0_g1435;
				
				float2 uv_BumpMap = IN.ase_texcoord2.xyz.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 break26_g1451 = uv_BumpMap;
				float2 appendResult14_g1451 = (float2(( break26_g1451.x * L0GlobalTilingX150 ) , ( break26_g1451.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1451 = (float2(( break26_g1451.x + L0GlobalOffsetX151 ) , ( break26_g1451.y + L0GlobalOffsetY148 )));
				float3 unpack4_g1450 = UnpackNormalScale( tex2D( _BumpMap, ( ( appendResult14_g1451 + appendResult13_g1451 ) + Layer0Parallax215 ) ), _BumpScale );
				unpack4_g1450.z = lerp( 1, unpack4_g1450.z, saturate(_BumpScale) );
				float3 Layer0Normal193 = unpack4_g1450;
				float2 temp_cast_14 = (_TranslationSpeed1).xx;
				float2 uv_PuddleMap = IN.ase_texcoord2.xyz.xy * _PuddleMap_ST.xy + _PuddleMap_ST.zw;
				float cos54_g1449 = cos( radians( _RotationAngle1 ) );
				float sin54_g1449 = sin( radians( _RotationAngle1 ) );
				float2 rotator54_g1449 = mul( ( uv_PuddleMap * _TilingWave1 ) - float2( 0.5,0.5 ) , float2x2( cos54_g1449 , -sin54_g1449 , sin54_g1449 , cos54_g1449 )) + float2( 0.5,0.5 );
				float2 panner86_g1449 = ( ( _TimeParameters.x * 0.05 ) * temp_cast_14 + rotator54_g1449);
				float3 unpack107_g1449 = UnpackNormalScale( tex2D( _PuddleMap, panner86_g1449 ), _NormalWaveIntensity1 );
				unpack107_g1449.z = lerp( 1, unpack107_g1449.z, saturate(_NormalWaveIntensity1) );
				#ifdef _MAINWAVE_ON
				float3 staticSwitch109_g1449 = unpack107_g1449;
				#else
				float3 staticSwitch109_g1449 = float3(0,0,1);
				#endif
				float2 temp_cast_15 = (_TranslationSpeed2).xx;
				float cos83_g1449 = cos( radians( _RotationAngle2 ) );
				float sin83_g1449 = sin( radians( _RotationAngle2 ) );
				float2 rotator83_g1449 = mul( ( uv_PuddleMap * _TilingWave2 ) - float2( 0.5,0.5 ) , float2x2( cos83_g1449 , -sin83_g1449 , sin83_g1449 , cos83_g1449 )) + float2( 0.5,0.5 );
				float2 panner88_g1449 = ( ( _TimeParameters.x * 0.05 ) * temp_cast_15 + rotator83_g1449);
				float3 unpack108_g1449 = UnpackNormalScale( tex2D( _PuddleMap, panner88_g1449 ), _NormalWaveIntensity2 );
				unpack108_g1449.z = lerp( 1, unpack108_g1449.z, saturate(_NormalWaveIntensity2) );
				#ifdef _DETAILWAVE_ON
				float3 staticSwitch56_g1449 = BlendNormal( staticSwitch109_g1449 , unpack108_g1449 );
				#else
				float3 staticSwitch56_g1449 = staticSwitch109_g1449;
				#endif
				float3 Layer1Normal260 = BlendNormal( staticSwitch56_g1449 , RainDotsNormal988 );
				float3 lerpResult133 = lerp( Layer0Normal193 , Layer1Normal260 , ( VertexAHeightmap799 * WetOpacity768 ));
				float3 Normal129 = lerpResult133;
				float3 worldRefl28_g1453 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, Normal129 ), dot( tanToWorld1, Normal129 ), dot( tanToWorld2, Normal129 ) ) ) );
				float4 texCUBENode27_g1453 = texCUBElod( _Cubemap, float4( worldRefl28_g1453, _BlurReflection) );
				float clampResult39_g1453 = clamp( _ReflectionIntensity , 0.0 , 100.0 );
				float4 temp_cast_16 = (1.0).xxxx;
				float4 lerpResult704 = lerp( ( BaseColor121 * 0.0 ) , ( ( texCUBENode27_g1453 * ( texCUBENode27_g1453.a * clampResult39_g1453 ) * _ColorCubemap1 ) * temp_cast_16 ) , VertexA117);
				float4 Cubemap742 = ( lerpResult704 * WetOpacity768 );
				
				
				float3 Albedo = (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexA117 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )).xyz;
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
			#pragma shader_feature_local _WETBASECOLOR_COLOR _WETBASECOLOR_WETMAP _WETBASECOLOR_BASELAYER


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
			float4 _BumpMap_ST;
			float4 _ColorWet;
			float4 _ColorCubemap1;
			float4 _BaseMap_ST;
			float4 _BaseColor;
			float4 _WetTex_ST;
			float4 _XColumnsYRowsZSpeedWStrartFrameNormal;
			float4 _PuddleMap_ST;
			float4 _GlobalXYTilingXYZWOffsetXY;
			float4 _MetallicGlossMapMAHS_ST;
			float2 _OffsetFBDetailsNormal;
			float _NormalWaveIntensity1;
			float _TilingWave1;
			float _TilingWave2;
			float _TranslationSpeed1;
			float _RotationAngle2;
			float _RotationAngle1;
			float _TranslationSpeed2;
			float _ReflectionIntensity;
			float _BlurReflection;
			float _BumpScale;
			float _Metallic;
			float _Metalness;
			float _Glossiness;
			float _SplashSpeed;
			float _Tiling;
			float _Size;
			float _Intensity;
			float _SmoothnessWet;
			float _NormalWaveIntensity2;
			float _L0Displacement;
			float _L3UseHeightmapDepth1;
			float _L3BlendAmount;
			float _L0Heightmapcontrast;
			float _L0HeightmapSpread;
			float _L1Displacement1;
			float _L3BlendOpacity;
			float _L1VisualizeHeightmap;
			float _L0VisualizeHeightmap;
			float _Brightness;
			float _Parallax;
			float _Saturation;
			float _L3BlendContrast;
			float _DetailBrightness;
			float _FlipBTilingNormal;
			float _IntensityScaleNormal1;
			float _ScaleFBDetailsNormal;
			float _FBDetailsNormal;
			float _IntensityScaleNormal2;
			float _Distortion1;
			float _DetailSaturation;
			float _AoIntensity;
			float _L3ConstrainbyPaintedMask;
			float _DuplicateTextureAtlasNormal;
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
			sampler2D _BaseMap;
			sampler2D _WetTex;
			sampler2D _TextureAtlasNormal;


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
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2Dlod( _MetallicGlossMapMAHS, float4( ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ), 0, 0.0) );
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float4 temp_cast_1 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_1 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VertexOffset605 = ( float4( ( v.ase_normal * ( _L0Displacement / 10.0 ) ) , 0.0 ) * temp_output_8_0_g1436 );
				float4 temp_cast_5 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_5 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VertexOffset613 = ( float4( ( v.ase_normal * ( _L1Displacement1 / 10.0 ) ) , 0.0 ) * temp_output_10_0_g1435 );
				float4 break106 = v.ase_color;
				float VertexA117 = break106.a;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult619 = lerp( Layer0VertexOffset605 , Layer1VertexOffset613 , ( VertexA117 * WetOpacity768 ));
				float4 VertexOffset621 = lerpResult619;
				
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
				float2 break26_g1406 = uv_BaseMap;
				float L0GlobalTilingX150 = ( _GlobalXYTilingXYZWOffsetXY.x - 1.0 );
				float L0GlobalTilingY149 = ( _GlobalXYTilingXYZWOffsetXY.y - 1.0 );
				float2 appendResult14_g1406 = (float2(( break26_g1406.x * L0GlobalTilingX150 ) , ( break26_g1406.y * L0GlobalTilingY149 )));
				float L0GlobalOffsetX151 = _GlobalXYTilingXYZWOffsetXY.z;
				float L0GlobalOffsetY148 = _GlobalXYTilingXYZWOffsetXY.w;
				float2 appendResult13_g1406 = (float2(( break26_g1406.x + L0GlobalOffsetX151 ) , ( break26_g1406.y + L0GlobalOffsetY148 )));
				float2 uv_MetallicGlossMapMAHS = IN.ase_texcoord2.xy * _MetallicGlossMapMAHS_ST.xy + _MetallicGlossMapMAHS_ST.zw;
				float2 break26_g1389 = uv_MetallicGlossMapMAHS;
				float2 appendResult14_g1389 = (float2(( break26_g1389.x * L0GlobalTilingX150 ) , ( break26_g1389.y * L0GlobalTilingY149 )));
				float2 appendResult13_g1389 = (float2(( break26_g1389.x + L0GlobalOffsetX151 ) , ( break26_g1389.y + L0GlobalOffsetY148 )));
				float4 tex2DNode3_g1388 = tex2D( _MetallicGlossMapMAHS, ( ( appendResult14_g1389 + appendResult13_g1389 ) + float2( 0,0 ) ) );
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
				float2 paralaxOffset38_g1388 = ParallaxOffset( tex2DNode3_g1388.b , _Parallax , ase_tanViewDir );
				float2 switchResult37_g1388 = (((ase_vface>0)?(paralaxOffset38_g1388):(0.0)));
				float2 Layer0Parallax215 = switchResult37_g1388;
				float4 tex2DNode7_g1405 = tex2D( _BaseMap, ( ( appendResult14_g1406 + appendResult13_g1406 ) + Layer0Parallax215 ) );
				float clampResult27_g1405 = clamp( _Saturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1405 = ( _BaseColor * tex2DNode7_g1405 ).rgb;
				float desaturateDot29_g1405 = dot( desaturateInitialColor29_g1405, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1405 = lerp( desaturateInitialColor29_g1405, desaturateDot29_g1405.xxx, -clampResult27_g1405 );
				float4 Layer0BaseColor179 = CalculateContrast(_Brightness,float4( desaturateVar29_g1405 , 0.0 ));
				float4 temp_cast_2 = (1.0).xxxx;
				float2 uv_WetTex = IN.ase_texcoord2.xy * _WetTex_ST.xy + _WetTex_ST.zw;
				float FlipBookTiling100_g1387 = _FlipBTilingNormal;
				float2 temp_cast_3 = (FlipBookTiling100_g1387).xx;
				float2 texCoord114_g1387 = IN.ase_texcoord2.xy * temp_cast_3 + float2( 0,0 );
				float2 appendResult124_g1387 = (float2(frac( texCoord114_g1387.x ) , frac( texCoord114_g1387.y )));
				float XColumns119_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.x;
				float YRows118_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.y;
				float ZSpeed121_g1387 = ( ( _XColumnsYRowsZSpeedWStrartFrameNormal.x * _XColumnsYRowsZSpeedWStrartFrameNormal.y ) * _XColumnsYRowsZSpeedWStrartFrameNormal.z );
				float WStrartFrame122_g1387 = _XColumnsYRowsZSpeedWStrartFrameNormal.w;
				// *** BEGIN Flipbook UV Animation vars ***
				// Total tiles of Flipbook Texture
				float fbtotaltiles130_g1387 = XColumns119_g1387 * YRows118_g1387;
				// Offsets for cols and rows of Flipbook Texture
				float fbcolsoffset130_g1387 = 1.0f / XColumns119_g1387;
				float fbrowsoffset130_g1387 = 1.0f / YRows118_g1387;
				// Speed of animation
				float fbspeed130_g1387 = _Time[ 1 ] * ZSpeed121_g1387;
				// UV Tiling (col and row offset)
				float2 fbtiling130_g1387 = float2(fbcolsoffset130_g1387, fbrowsoffset130_g1387);
				// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
				// Calculate current tile linear index
				float fbcurrenttileindex130_g1387 = round( fmod( fbspeed130_g1387 + WStrartFrame122_g1387, fbtotaltiles130_g1387) );
				fbcurrenttileindex130_g1387 += ( fbcurrenttileindex130_g1387 < 0) ? fbtotaltiles130_g1387 : 0;
				// Obtain Offset X coordinate from current tile linear index
				float fblinearindextox130_g1387 = round ( fmod ( fbcurrenttileindex130_g1387, XColumns119_g1387 ) );
				// Multiply Offset X by coloffset
				float fboffsetx130_g1387 = fblinearindextox130_g1387 * fbcolsoffset130_g1387;
				// Obtain Offset Y coordinate from current tile linear index
				float fblinearindextoy130_g1387 = round( fmod( ( fbcurrenttileindex130_g1387 - fblinearindextox130_g1387 ) / XColumns119_g1387, YRows118_g1387 ) );
				// Reverse Y to get tiles from Top to Bottom
				fblinearindextoy130_g1387 = (int)(YRows118_g1387-1) - fblinearindextoy130_g1387;
				// Multiply Offset Y by rowoffset
				float fboffsety130_g1387 = fblinearindextoy130_g1387 * fbrowsoffset130_g1387;
				// UV Offset
				float2 fboffset130_g1387 = float2(fboffsetx130_g1387, fboffsety130_g1387);
				// Flipbook UV
				half2 fbuv130_g1387 = appendResult124_g1387 * fbtiling130_g1387 + fboffset130_g1387;
				// *** END Flipbook UV Animation vars ***
				float3 unpack132_g1387 = UnpackNormalScale( tex2D( _TextureAtlasNormal, fbuv130_g1387 ), _IntensityScaleNormal1 );
				unpack132_g1387.z = lerp( 1, unpack132_g1387.z, saturate(_IntensityScaleNormal1) );
				float3 tex2DNode132_g1387 = unpack132_g1387;
				float2 temp_cast_4 = (( FlipBookTiling100_g1387 / _ScaleFBDetailsNormal )).xx;
				float2 texCoord105_g1387 = IN.ase_texcoord2.xy * temp_cast_4 + _OffsetFBDetailsNormal;
				float cos111_g1387 = cos( _FBDetailsNormal );
				float sin111_g1387 = sin( _FBDetailsNormal );
				float2 rotator111_g1387 = mul( texCoord105_g1387 - float2( 0.5,0.5 ) , float2x2( cos111_g1387 , -sin111_g1387 , sin111_g1387 , cos111_g1387 )) + float2( 0.5,0.5 );
				float2 break112_g1387 = rotator111_g1387;
				float2 appendResult123_g1387 = (float2(frac( break112_g1387.x ) , frac( break112_g1387.y )));
				float fbtotaltiles129_g1387 = XColumns119_g1387 * YRows118_g1387;
				float fbcolsoffset129_g1387 = 1.0f / XColumns119_g1387;
				float fbrowsoffset129_g1387 = 1.0f / YRows118_g1387;
				float fbspeed129_g1387 = _Time[ 1 ] * ZSpeed121_g1387;
				float2 fbtiling129_g1387 = float2(fbcolsoffset129_g1387, fbrowsoffset129_g1387);
				float fbcurrenttileindex129_g1387 = round( fmod( fbspeed129_g1387 + WStrartFrame122_g1387, fbtotaltiles129_g1387) );
				fbcurrenttileindex129_g1387 += ( fbcurrenttileindex129_g1387 < 0) ? fbtotaltiles129_g1387 : 0;
				float fblinearindextox129_g1387 = round ( fmod ( fbcurrenttileindex129_g1387, XColumns119_g1387 ) );
				float fboffsetx129_g1387 = fblinearindextox129_g1387 * fbcolsoffset129_g1387;
				float fblinearindextoy129_g1387 = round( fmod( ( fbcurrenttileindex129_g1387 - fblinearindextox129_g1387 ) / XColumns119_g1387, YRows118_g1387 ) );
				fblinearindextoy129_g1387 = (int)(YRows118_g1387-1) - fblinearindextoy129_g1387;
				float fboffsety129_g1387 = fblinearindextoy129_g1387 * fbrowsoffset129_g1387;
				float2 fboffset129_g1387 = float2(fboffsetx129_g1387, fboffsety129_g1387);
				half2 fbuv129_g1387 = appendResult123_g1387 * fbtiling129_g1387 + fboffset129_g1387;
				float3 unpack134_g1387 = UnpackNormalScale( tex2D( _TextureAtlasNormal, fbuv129_g1387 ), _IntensityScaleNormal2 );
				unpack134_g1387.z = lerp( 1, unpack134_g1387.z, saturate(_IntensityScaleNormal2) );
				float3 RainDotsNormal988 = (( _DuplicateTextureAtlasNormal )?( BlendNormal( tex2DNode132_g1387 , unpack134_g1387 ) ):( tex2DNode132_g1387 ));
				float2 temp_cast_6 = (_Distortion1).xx;
				float4 tex2DNode44_g1408 = tex2D( _WetTex, ( uv_WetTex + ( RainDotsNormal988.xy * temp_cast_6 ) ) );
				float clampResult27_g1408 = clamp( _DetailSaturation , -1.0 , 100.0 );
				float3 desaturateInitialColor29_g1408 = tex2DNode44_g1408.rgb;
				float desaturateDot29_g1408 = dot( desaturateInitialColor29_g1408, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar29_g1408 = lerp( desaturateInitialColor29_g1408, desaturateDot29_g1408.xxx, -clampResult27_g1408 );
				float4 Layer1BaseColor261 = CalculateContrast(_DetailBrightness,float4( desaturateVar29_g1408 , 0.0 ));
				#if defined(_WETBASECOLOR_COLOR)
				float4 staticSwitch767 = temp_cast_2;
				#elif defined(_WETBASECOLOR_WETMAP)
				float4 staticSwitch767 = Layer1BaseColor261;
				#elif defined(_WETBASECOLOR_BASELAYER)
				float4 staticSwitch767 = Layer0BaseColor179;
				#else
				float4 staticSwitch767 = Layer0BaseColor179;
				#endif
				float4 Layer3BaseColor786 = ( _ColorWet * staticSwitch767 );
				float4 break106 = IN.ase_color;
				float VertexA117 = break106.a;
				float temp_output_21_0_g1434 = VertexA117;
				float Layer0Heightmap336 = tex2DNode3_g1388.b;
				float temp_output_62_0_g1434 = ( _L3BlendContrast - 1.5 );
				float clampResult11_g1434 = clamp( ( ( _L3BlendAmount - 2.37 ) + (( 1.0 + temp_output_62_0_g1434 ) + (Layer0Heightmap336 - 0.0) * (-temp_output_62_0_g1434 - ( 1.0 + temp_output_62_0_g1434 )) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
				float blendOpSrc18_g1434 = clampResult11_g1434;
				float blendOpDest18_g1434 = saturate( ( (-1.0 + (3.0 - 0.0) * (1.0 - -1.0) / (1.0 - 0.0)) + (( 1.0 + -6.0 ) + (temp_output_21_0_g1434 - 0.0) * (6.0 - ( 1.0 + -6.0 )) / (1.0 - 0.0)) ) );
				float blendOpSrc31_g1434 = (( _L3ConstrainbyPaintedMask )?( ( saturate( ( blendOpSrc18_g1434 * blendOpDest18_g1434 ) )) ):( clampResult11_g1434 ));
				float blendOpDest31_g1434 = temp_output_21_0_g1434;
				float temp_output_1004_0 = (( _L3UseHeightmapDepth1 )?( ( saturate( ( blendOpSrc31_g1434 + blendOpDest31_g1434 ) )) ):( temp_output_21_0_g1434 ));
				float VertexAHeightmap799 = temp_output_1004_0;
				float WetOpacity768 = _L3BlendOpacity;
				float4 lerpResult101 = lerp( Layer0BaseColor179 , Layer3BaseColor786 , ( VertexAHeightmap799 * WetOpacity768 ));
				float4 BaseColor121 = lerpResult101;
				float4 temp_cast_9 = (Layer0Heightmap336).xxxx;
				float4 temp_output_8_0_g1436 = CalculateContrast(_L0Heightmapcontrast,( temp_cast_9 + (-0.5 + (_L0HeightmapSpread - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) ));
				float4 Layer0VisHeightmap579 = temp_output_8_0_g1436;
				float VertexR114 = break106.r;
				float4 temp_cast_12 = (1.0).xxxx;
				float4 temp_output_10_0_g1435 = ( temp_cast_12 + (-0.5 + (1.0 - 0.0) * (0.5 - -0.5) / (1.0 - 0.0)) );
				float4 Layer1VisHeightmap612 = temp_output_10_0_g1435;
				
				
				float3 Albedo = (( _L1VisualizeHeightmap )?( ( Layer1VisHeightmap612 * VertexA117 ) ):( (( _L0VisualizeHeightmap )?( ( Layer0VisHeightmap579 * VertexR114 ) ):( BaseColor121 )) )).xyz;
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