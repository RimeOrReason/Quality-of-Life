//Fontaine invisible blue block shader, check line 233 for the effect that makes the block invisible.
Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[102];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float o3 : SV_Target3,
  out float o4 : SV_Target4,
  out float o5 : SV_Target5)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[5].xyz + -v8.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.yzw = -cb3[3].xyz + cb1[5].xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r1.xyz = cb0[61].xyz + -v8.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r1.xyz = -cb3[3].xyz + cb0[61].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.xyzw = sqrt(r0.xyzw);
  r1.xy = v2.xy * float2(6,6) + v6.xy;
  r1.x = t0.Sample(s0_s, r1.xy).z;
  r1.xy = float2(20,0.172999993) * r1.xx;
  r1.x = saturate(r1.x);
  r1.zw = t1.Sample(s1_s, v2.xy).xz;
  r1.zw = float2(7.21000004,1.30999994) * r1.zw;
  r1.z = saturate(r1.z);
  r2.xyz = r1.zzz * float3(-0.249267101,-0.88398391,-0.389442563) + float3(0.385789305,1,0.603483677);
  r3.x = dot(v9.xyz, v3.xyz);
  r3.y = dot(v10.xyz, v3.xyz);
  r1.z = dot(v4.xyz, v3.xyz);
  r2.w = rcp(r1.z);
  r3.xy = r3.xy * r2.ww;
  r4.xyz = float3(-0.00999999978,0.0500000007,0.0199999996) * cb1[0].yyy;
  r4.xyz = frac(r4.xyz);
  r3.zw = float2(968,802) + -r0.xx;
  r3.zw = saturate(float2(0.100000001,0.100000001) * r3.zw);
  r5.xy = cmp(float2(0,0) < r3.zw);
  if (r5.x != 0) {
    r5.xz = float2(0.0799999982,0.0799999982) * r3.xy;
    r5.xz = v2.xy * float2(4,4) + r5.xz;
    r4.yw = r5.xz + r4.xy;
    r2.w = t2.Sample(s2_s, r4.yw).x;
    r5.xzw = r2.www * float3(0.342209071,1.59846056,2.08972263) + float3(0.0104853297,0.0100093903,0.0100093903);
    r5.xzw = r5.xzw * r3.zzz;
  } else {
    r5.xzw = float3(0,0,0);
  }
  if (r5.y != 0) {
    r3.xy = float2(-0.0199999996,-0.0199999996) * r3.xy;
    r3.xy = v2.xy * float2(2,2) + r3.xy;
    r3.xy = r3.xy + r4.xz;
    r2.w = t2.Sample(s2_s, r3.xy).x;
    r3.xyz = float3(0.0549952611,0.485224307,0.902559102) * r2.www;
    r3.xyz = r3.xyz * r3.www;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r3.xyz = r5.xzw + r3.xyz;
  r3.xyz = float3(2.04299998,2.04299998,2.04299998) * r3.xyz;
  r2.xyz = r2.xyz * float3(0.0870540887,0.332329214,0.488814592) + r3.xyz;
  r1.y = saturate(v1.x * r1.y);
  r3.xyz = r1.xxx * float3(0.000123514794,0.494538188,2.9052186) + -r2.xyz;
  r2.xyz = r1.yyy * r3.xyz + r2.xyz;
  r1.x = dot(-v3.xyz, v4.xyz);
  r1.x = r1.x + r1.x;
  r3.xyz = v4.xyz * -r1.xxx + -v3.xyz;
  r3.xyz = t3.Sample(s3_s, r3.xyz).xyz;
  r2.xyz = r3.xyz * float3(0.370000005,0.370000005,0.370000005) + r2.xyz;
  r1.x = cmp(cb2[0].w < 0.5);
  r1.y = dot(cb2[0].xyz, cb2[0].xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = cb2[0].xyz * r1.yyy;
  r3.xyz = r1.xxx ? cb2[0].xyz : r3.xyz;
  r1.x = t4.Sample(s4_s, v2.xy).x;
  r1.x = 14.8999996 * r1.x;
  r4.xyz = r2.xyz * r1.xxx;
  r2.xyz = r4.xyz * float3(2.86780596,2.86780596,2.86780596) + r2.xyz;
  r1.x = dot(r3.xyz, -v3.xyz);
  r1.x = max(9.99999975e-05, r1.x);
  r1.x = log2(r1.x);
  r1.x = 11.54 * r1.x;
  r1.x = exp2(r1.x);
  r3.xyz = float3(0.34422949,0.240096003,0) * r1.xxx;
  r1.x = v3.y * -v3.y + 1;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r1.x = min(1, abs(r1.z));
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-05, r1.x);
  r1.x = r1.x * r1.x;
  r1.x = r1.x * r1.x;
  r1.xyz = r1.xxx * float3(0.205267906,0.625444412,1.309582) + r2.xyz;
  r2.x = cmp(0 != cb0[21].z);
  if (r2.x != 0) {
    r2.x = cmp(cb0[21].w < 1.5);
    if (r2.x != 0) {
      r2.x = cmp(cb0[21].w == 1.000000);
      r2.x = r2.x ? r0.y : r0.x;
      r2.x = saturate(cb0[21].x * r2.x + cb0[21].y);
      r2.yzw = cb0[20].xyz + -cb0[19].xyz;
      r2.xyz = r2.xxx * r2.yzw + cb0[19].xyz;
    } else {
      r2.w = cmp(cb0[21].w == 3.000000);
      r2.w = r2.w ? r0.w : r0.z;
      r2.w = saturate(cb0[21].x * r2.w + cb0[21].y);
      r3.xyz = cb0[20].xyz + -cb0[19].xyz;
      r2.xyz = r2.www * r3.xyz + cb0[19].xyz;
    }
  } else {
    r2.xyz = cb0[17].xyz;
  }
  r3.xyzw = cmp(float4(0,0,0,0) != cb0[16].yyyz);
  r3.xyzw = r3.xyzw ? v1.xyzw : float4(1,1,1,1);
  r1.xyz = r3.xyz * r1.xyz;
  r2.xyz = r1.xyz * r2.xyz;
  r1.x = cmp(0 != cb0[27].z);
  r1.y = saturate(v3.w * 0.300000012 + -0.699999988);
  r1.x = r1.x ? r1.y : 1;
  r1.x = r1.w * r1.x;
  r1.y = cmp(0 != cb0[26].z);
  if (r1.y != 0) {
    r1.y = cmp(cb0[26].w < 1.5);
    if (r1.y != 0) {
      r1.y = cmp(cb0[26].w == 1.000000);
      r0.x = r1.y ? r0.y : r0.x;
      r0.x = saturate(cb0[26].x * r0.x + cb0[26].y);
      r0.y = cb0[25].x + -cb0[24].x;
      r0.x = r0.x * r0.y + cb0[24].x;
    } else {
      r0.y = cmp(cb0[26].w == 3.000000);
      r0.y = r0.y ? r0.w : r0.z;
      r0.y = saturate(cb0[26].x * r0.y + cb0[26].y);
      r0.z = cb0[25].x + -cb0[24].x;
      r0.x = r0.y * r0.z + cb0[24].x;
    }
  } else {
    r0.x = cb0[22].x;
  }
  r0.y = r1.x * r3.w;
  r0.z = cmp(0.99000001 < cb0[26].x);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y * r0.z;
  r0.y = cmp(0 != r0.y);
  r0.z = max(cb0[22].x, r0.x);
  r0.x = saturate(r0.y ? r0.x : r0.z);
  r0.x = -0.0399999991 + r0.x;
  r0.y = cmp(r0.x < 0.949999988);
  if (r0.y != 0) {
    r0.yz = v5.yx / v5.ww;
    r0.yz = cb1[7].yx * r0.yz;
    r0.yz = float2(0.25,0.25) * r0.yz;
    r1.xy = cmp(r0.yz >= -r0.yz);
    r0.yz = frac(abs(r0.yz));
    r0.yz = r1.xy ? r0.yz : -r0.yz;
    r0.yz = float2(4,4) * r0.yz;
    r0.yz = (uint2)r0.yz;
    r1.x = dot(cb0[9].xyzw, icb[r0.z+0].xyzw);
    r1.y = dot(cb0[10].xyzw, icb[r0.z+0].xyzw);
    r1.z = dot(cb0[11].xyzw, icb[r0.z+0].xyzw);
    r1.w = dot(cb0[12].xyzw, icb[r0.z+0].xyzw);
//  r1's x, y, z and w values all determine a certain layers's visibility. The whole block seems to be made from 4 different layers, if you only leave 1-3 it can be transparent, but it's not very pleasing to the eyes so that's not the default. If you want to try this out, first re-enable the other effect below, then uncomment the line below this and change the values below to your liking, 1 is on and 0 is off. (The -1 at the end is for convenience, otherwise it'd be -1 on and 0 off and that's not very logical.)
//  r1.xyzw = float4(1,1,1,1) * -1;
    r0.y = dot(r1.xyzw, icb[r0.y+0].xyzw);
    r0.x = r0.x * 17 + -r0.y;
    r0.x = -0.00999999978 + r0.x;
//  Uncomment the line below to re-enable the effect. Check above for alternative solution to disabling.
//  if (r0.x != 0) discard;
  }
  r0.x = max(r2.y, r2.z);
  r0.w = max(r2.x, r0.x);
  r1.x = cmp(1 < r0.w);
  r0.xyz = r2.xyz / r0.www;
  r2.w = 1;
  r0.xyzw = r1.xxxx ? r0.zwxy : r2.zwxy;
  r1.x = cmp(0 != cb0[101].x);
  if (r1.x != 0) {
    r1.xyz = v4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    o1.xyz = r0.zwx;
    o1.w = 0;
    r1.w = 0;
    r2.w = 0.00100000005;
    r0.x = 0.00392156886 * cb0[101].y;
    r0.y = 0.00100000005;
  } else {
    r3.x = saturate(0.0500000007 * r0.y);
    r3.x = sqrt(r3.x);
    r0.y = cb0[27].x * r3.x;
    o1.xyz = cb0[27].yyy * r2.xyz;
    r1.xyz = v4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    o1.w = 0.00100000005;
    r1.w = 0.0509803928;
    r2.w = r0.y;
  }
  o0.xyz = r1.xyz;
  o0.w = 0;
  o2.xyzw = r0.zwxy;
  o3.x = r1.w;
  o4.x = r2.w;
  o5.x = 0;
  return;
}
