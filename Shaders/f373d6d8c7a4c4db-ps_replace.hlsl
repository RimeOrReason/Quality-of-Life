// Invisible wall shaders that show up when you get really close, like those at tatarasuna and eye of the sands.
// This file makes them visible from any distance (granted that they still load at that distance). 
// Check line 138 to edit the opacity and the color of these walls.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[31];
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
  float3 v8 : TEXCOORD10,
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
  r1.zw = t1.Sample(s0_s, v1.zw).xy;
  r2.x = cb0[26].w * r0.y;
  r1.zw = -r0.yy * cb0[26].ww + r1.zw;
  r1.zw = r1.zw * float2(0.119999997,0.119999997) + r2.xx;
  r2.xy = -v0.xy + r1.zw;
  r0.y = t2.Sample(s1_s, r2.xy).x;
  r1.zw = -v0.zw + -r1.zw;
  r1.z = t2.Sample(s1_s, r1.zw).x;
  r1.w = t3.Sample(s2_s, v1.xy).x;
  r0.y = min(r1.z, r0.y);
  r0.z = -r0.w * r0.z + 1;
  r0.z = r0.y * r0.z;
  r0.w = -r0.x * cb0[20].z + 1;
  r1.z = cmp(cb0[28].x == 1.000000);
  r2.xyz = cb0[24].xyz * cb0[13].xyz;
  r2.xyz = r1.zzz ? r2.xyz : cb0[24].xyz;
  r2.xyz = r2.xyz * r0.www;
  r2.yzw = r2.xyz * r0.zzz;
  r0.z = r0.z * r2.x + -cb0[26].y;
  r0.w = 1 / cb0[26].z;
  r0.z = saturate(r0.z * r0.w);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.x = -r0.x * cb0[26].x + 1;
  r3.xyz = cb0[25].xyz * r0.xxx;
  r3.xyz = r3.xyz * r1.www;
  r0.xzw = r3.xyz * r0.zzz;
  r0.xzw = r2.yyy * r0.xzw + r2.yzw;
  r1.x = 1 + -r1.x;
  r1.z = saturate(cb0[20].w + -r0.y);
  r1.z = cb0[27].x * r1.z;
  r0.y = r0.y * cb0[25].w + r1.z;
  r0.y = r1.x * r0.y;
  r0.y = v5.w * r0.y;
  r0.xzw = v5.xyz + r0.xzw;
  r1.x = cmp(0 < cb0[12].x);
  if (r1.x != 0) {
    r1.x = t4.Load(float4(0,0,0,0)).y;
    r1.x = -1 + r1.x;
    r1.x = cb0[12].x * r1.x + 1;
    r0.xzw = r1.xxx * r0.xzw;
  }
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
//  The line below changes the opacity of the walls, 1 is opaque and 0 is transparent.
  o0.w = 0.2;
//  You can also change the color with an RGB value with each color as a float between 0 and 1 by uncommenting the line below. (0,0,0) is black while (1,1,1) is white.
//  o0.xyz = float3(0.0, 0.0, 0.0);
  return;
}
