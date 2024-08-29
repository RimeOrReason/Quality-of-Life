// This file changes the walls in Seirai Island that shows the boundaries of the Balethunder area before completing the Seirai Stormchasers questline. Check line 165 to change the color or opacity.
// Unfortunately, it doesn't seem to be rendered at all if you're not close to it, so it'll only show up when you go near it. I couldn't find a way to solve this, if you can solve it feel free to leave a comment.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[34];
}

// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);

void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD4,
  float4 v2 : SV_POSITION0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD5,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD2,
  float4 v7 : TEXCOORD9,
  float4 v8 : TEXCOORD10,
  float4 v9 : TEXCOORD6,
  float4 v10 : TEXCOORD8,
  float3 v11 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -v4.xyz + v3.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = cb0[20].z * r0.x;
  r0.z = r0.x * cb0[20].z + -cb0[21].y;
  r0.w = 1 / cb0[21].z;
  r0.z = saturate(r0.z * r0.w);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r1.x = saturate(cb0[21].w * r0.y);
  r1.y = cmp(0 < cb0[30].y);
  r1.zw = v6.xy / v6.ww;
  r1.z = t0.Sample(s3_s, r1.zw).x;
  r1.w = cb1[6].z * r1.z;
  r1.z = cb1[8].z * r1.z + cb1[8].w;
  r1.z = rcp(r1.z);
  r1.y = r1.y ? r1.w : r1.z;
  r1.y = -v6.z + r1.y;
  r1.y = saturate(cb0[21].x * r1.y);
  r1.z = 1 + -r1.y;
  r2.xy = t1.Sample(s0_s, v1.zw).xy;
  r1.w = cb0[26].w * r0.y;
  r2.xy = -r0.yy * cb0[26].ww + r2.xy;
  r2.xy = r2.xy * float2(0.119999997,0.119999997) + r1.ww;
  r2.zw = -v0.xy + r2.xy;
  r0.y = t2.Sample(s1_s, r2.zw).x;
  r2.xy = -v0.zw + -r2.xy;
  r1.w = t2.Sample(s1_s, r2.xy).x;
  r2.x = t3.Sample(s2_s, v1.xy).x;
  r0.y = min(r1.w, r0.y);
  r0.z = -r0.w * r0.z + 1;
  r0.z = r0.y * r0.z;
  r0.w = -r0.x * cb0[20].z + 1;
  r1.w = cmp(cb0[28].x == 1.000000);
  r2.yzw = cb0[24].xyz * cb0[13].xyz;
  r2.yzw = r1.www ? r2.yzw : cb0[24].xyz;
  r2.yzw = r2.yzw * r0.www;
  r3.xyz = r2.yzw * r0.zzz;
  r0.z = r0.z * r2.y + -cb0[26].y;
  r0.w = 1 / cb0[26].z;
  r0.z = saturate(r0.z * r0.w);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.w = -r0.x * cb0[26].x + 1;
  r2.yzw = cb0[25].xyz * r0.www;
  r2.xyz = r2.yzw * r2.xxx;
  r2.xyz = r2.xyz * r0.zzz;
  r2.xyz = r3.xxx * r2.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(cb0[33].xxx, r2.xyz);
  r0.z = 1 + -r1.x;
  r0.w = saturate(cb0[20].w + -r0.y);
  r0.w = cb0[27].x * r0.w;
  r0.y = r0.y * cb0[25].w + r0.w;
  r0.y = r0.z * r0.y;
  r0.z = v5.w * r0.y;
  r2.xyz = v5.xyz + r2.xyz;
  r0.w = cmp(0 < cb0[12].x);
  if (r0.w != 0) {
    r0.w = t5.Load(float4(0,0,0,0)).y;
    r0.w = -1 + r0.w;
    r0.w = cb0[12].x * r0.w + 1;
    r2.xyz = r2.xyz * r0.www;
  }
  r1.xw = r0.zz * float2(0.300000012,0.300000012) + v9.xy;
  r0.w = t4.Sample(s4_s, r1.xw).x;
  r0.x = saturate(-2 + r0.x);
  r0.x = r0.w * r0.x;
  r0.z = saturate(r0.z * 3 + -0.389999986);
  r0.x = r0.z * r0.x;
  r0.y = r0.y * v5.w + r0.x;
  r0.z = r1.z * r0.y;
  r0.z = saturate(r0.z * 5 + -0.5);
  r1.xzw = r2.xyz * r0.xxx;
  r1.xzw = r1.xzw * cb0[31].xxx + r2.xyz;
  r0.xzw = r2.xyz * r0.zzz;
  r0.xzw = r0.xzw * cb0[31].yyy + r1.xzw;
  r1.x = dot(v10.xyz, v10.xyz);
  r1.x = rsqrt(r1.x);
  r1.xzw = v10.xyz * r1.xxx;
  r1.x = dot(v11.xyz, r1.xzw);
  r1.x = cb0[27].y * abs(r1.x) + -cb0[27].y;
  r1.x = 1 + r1.x;
  r1.x = r1.x * r1.x;
  r0.y = r1.x * r0.y;
  r1.xz = cb0[27].ww * v7.xy;
  r2.xy = saturate(-v7.xy * cb0[27].ww + cb0[27].ww);
  r1.xz = saturate(r1.xz);
  r1.w = cmp(0 != cb0[27].z);
  r1.x = r1.x * r1.z;
  r1.x = r1.x * r2.x;
  r1.x = r1.x * r2.y;
  r1.x = r1.w ? r1.x : 1;
  r0.y = r0.y * r1.y;
  o0.w = saturate(r0.y * r1.x);
  r0.y = cmp(0 != cb0[28].z);
  if (r0.y != 0) {
    r0.y = dot(r0.xzw, r0.xzw);
    r0.y = sqrt(r0.y);
    o0.xyz = v8.xyz * r0.yyy;
  } else {
    o0.xyz = r0.xzw;
  }
// o0.xyz = float3(1,1,1);
// The line above changes the walls' color with x y z being R G B values respectively, while the line below changes their opacity - 1 is opaque, 0 is transparent. Uncomment the line above to change their color.
  o0.w = 0.2;
  return;
}