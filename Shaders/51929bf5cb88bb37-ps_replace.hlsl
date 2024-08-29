// Invisible shaders part 2: these are a different kind like those at sumeru, idk how to describe them in a way that distinguishes them from the other.
// If you want to re-enable this effect, simply delete this file or search for "discard" and uncomment any commented lines, and edit line 406 to make the blue glass shard effect visible again.
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
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[97];
}


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : COLOR0,
  float2 v7 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s2_s, v1.xy).xyz;
  r1.xyz = t1.Sample(s4_s, v1.xy).xyw;
  r1.xyz = saturate(r1.xyz);
  r0.w = max(0.00100000005, r1.x);
  r0.w = min(0.999000013, r0.w);
  r0.w = 1 + -r0.w;
  r0.xyz = float3(0.00100000005,0.00100000005,0.00100000005) + r0.xyz;
  r2.xyz = cb0[78].xyz * r0.xyz;
  r3.xyz = t2.Sample(s3_s, v1.xy).xyz;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r4.x = dot(v2.xyz, r3.xyz);
  r4.y = dot(v3.xyz, r3.xyz);
  r4.z = dot(v4.xyz, r3.xyz);
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = rsqrt(r1.x);
  r3.xyz = r4.xyz * r1.xxx;
  r4.x = v2.w;
  r4.y = v3.w;
  r4.z = v4.w;
  r5.xyz = cb1[5].xyz + -r4.xyz;
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  r5.xyz = r5.xyz * r1.xxx;
  r1.x = dot(r3.xyz, r5.xyz);
  r1.w = cmp(0 < asint(cb0[41].x));
  r2.w = r1.w ? 1.000000 : 0;
  r5.xyz = cb0[52].xxx * cb0[51].xyz;
  r5.xyz = r5.xyz * r2.xyz;
  r6.xyz = r5.xyz * r1.zzz;
  r7.xy = -cb0[58].xy + cb0[13].xy;
  r7.xy = r2.ww * r7.xy + cb0[58].xy;
  r7.zw = cb0[42].xy + -r7.xy;
  r7.xy = cb0[41].zz * r7.zw + r7.xy;
  r7.xy = v7.xy * r7.xy;
  r2.w = cmp((int)r1.w == 0);
  r3.w = cmp(cb0[52].y == 1.000000);
  r2.w = r2.w ? r3.w : 0;
  if (r2.w != 0) {
    r7.zw = v7.xy * cb0[54].xy + cb0[54].zw;
    r7.zw = cb1[0].xx * cb0[53].xy + r7.zw;
    r7.zw = frac(r7.zw);
    r7.zw = t3.Sample(s1_s, r7.zw).xy;
    r7.zw = cb0[52].zz * r7.zw;
    r7.xy = r7.zw * float2(0.100000001,0.100000001) + r7.xy;
  }
  r2.w = t4.Sample(s0_s, r7.xy).w;
  r7.xy = cb1[0].yy * cb0[56].xw;
  r7.xy = sin(r7.xy);
  r7.xy = r7.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r3.w = cb0[55].z + -cb0[55].w;
  r3.w = r7.x * r3.w + cb0[55].w;
  r4.w = r3.w * r2.w;
  r7.xz = max(int2(0,0), asint(cb0[41].xy));
  r7.xz = min(int2(8,8), (int2)r7.xz);
  r5.w = 65535;
  r6.w = 0;
  while (true) {
    r7.w = cmp((int)r6.w >= (int)r7.x);
    if (r7.w != 0) break;
    r7.w = cb0[r6.w+20].w * cb0[55].x;
    r7.w = r7.w * r3.w;
    r7.w = max(0.00999999978, r7.w);
    r8.xyz = -cb0[r6.w+20].xyz + r4.xyz;
    r8.x = dot(r8.xyz, r8.xyz);
    r8.x = sqrt(r8.x);
    r7.w = rcp(r7.w);
    r7.w = r8.x * r7.w;
    r7.w = min(1, r7.w);
    r5.w = min(r7.w, r5.w);
    r6.w = (int)r6.w + 1;
  }
  r6.w = cb0[56].y + -cb0[56].z;
  r6.w = r7.y * r6.w + cb0[56].z;
  r7.xy = float2(65535,0);
  while (true) {
    r7.w = cmp((int)r7.y >= (int)r7.z);
    if (r7.w != 0) break;
    r7.w = cb0[r7.y+33].w * cb0[55].y;
    r7.w = r7.w * r6.w;
    r7.w = max(0.00999999978, r7.w);
    r8.xyz = -cb0[r7.y+33].xyz + r4.xyz;
    r8.x = dot(r8.xyz, r8.xyz);
    r8.x = sqrt(r8.x);
    r7.w = rcp(r7.w);
    r7.w = r8.x * r7.w;
    r7.w = min(1, r7.w);
    r7.x = min(r7.x, r7.w);
    r7.y = (int)r7.y + 1;
  }
  r4.x = cmp(r7.x < 1);
  r4.y = r4.x ? 1.000000 : 0;
  r4.z = cmp(cb0[41].w < 0.949999988);
  if (r4.z != 0) {
    r7.yz = v5.yx / v5.ww;
    r7.yz = cb1[7].yx * r7.yz;
    r7.yz = float2(0.25,0.25) * r7.yz;
    r8.xy = cmp(r7.yz >= -r7.yz);
    r7.yz = frac(abs(r7.yz));
    r7.yz = r8.xy ? r7.yz : -r7.yz;
    r7.yz = float2(4,4) * r7.yz;
    r7.yz = (uint2)r7.yz;
    r8.x = dot(cb0[5].xyzw, icb[r7.z+0].xyzw);
    r8.y = dot(cb0[6].xyzw, icb[r7.z+0].xyzw);
    r8.z = dot(cb0[7].xyzw, icb[r7.z+0].xyzw);
    r8.w = dot(cb0[8].xyzw, icb[r7.z+0].xyzw);
    r6.w = dot(r8.xyzw, icb[r7.y+0].xyzw);
    r6.w = cb0[41].w * 17 + -r6.w;
    r6.w = -0.00999999978 + r6.w;
  } else {
    r6.w = 1;
  }
  r6.w = cmp(0 < r6.w);
  r7.y = cmp(cb0[41].z == 1.000000);
  r7.z = cmp(0 < r7.x);
  r7.z = r7.z ? r7.y : 0;
  if (r7.z != 0) {
    r8.xy = r6.ww ? float2(1,0) : float2(-1,1);
    r7.w = 1 + -r7.x;
    r7.w = dot(r7.ww, r4.yy);
    r7.x = min(cb0[57].y, r7.w);
    r2.w = -r2.w * r3.w + 1;
    r4.w = r2.w * r4.y;
    r2.w = -r2.w * r4.y + r7.x;
    r2.w = -cb0[17].x + r2.w;
    r2.w = cmp(0 < r2.w);
    r2.w = r2.w ? 1 : -1;
    r2.w = r2.w + r8.x;
    r2.w = cmp(r2.w < 0);
    if (r2.w != 0) discard;
    r2.w = 1 + -cb0[41].w;
    r3.w = saturate(r1.x);
    r3.w = 1 + -r3.w;
    r7.w = r3.w * r3.w;
    r7.w = r7.w * r7.w;
    r3.w = r7.w * r3.w;
    r8.xzw = r3.www * r2.xyz;
    r3.w = saturate(10 * r2.w);
    r7.w = r3.w * -2 + 3;
    r3.w = r3.w * r3.w;
    r3.w = r7.w * r3.w;
    r8.xzw = r8.xzw * r3.www;
    r9.xyz = cb0[43].xyz * r4.www;
    r3.w = r4.x ? 1.000000 : 0;
    r9.xyz = r9.xyz * r3.www;
    r9.xyz = r9.xyz * r2.www;
    r9.xyz = r9.xyz * r8.yyy;
    r8.xyz = r8.xzw * cb0[43].xyz + r9.xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(5,5,5), r8.xyz);
    r8.xyz = r5.xyz * r1.zzz + r8.xyz;
  }
  if (r7.z == 0) {
    if (r7.y != 0) {
      if (r6.w == 0) discard;
      r8.xyz = r6.xyz;
    }
    if (r7.y == 0) {
      r2.w = cb0[16].z + r5.w;
      r2.w = cmp(r2.w < 1);
      if (r1.w == 0) {
        r3.w = r2.w ? -1 : -0;
        r3.w = r4.y + r3.w;
        r6.xyz = cb0[15].xyz;
        r4.x = cb0[48].w;
        r4.y = cb0[50].w;
        r6.w = cb0[16].y;
        r7.y = cb0[16].w;
        r7.z = cb0[17].z;
        r7.w = cb0[18].x;
        r8.w = cb0[48].y;
        r9.xy = cb0[49].yw;
        r9.z = cb0[50].y;
        r5.w = r7.x;
      } else {
        r3.w = r2.w ? 1.000000 : 0;
        r6.xyz = cb0[14].xyz;
        r6.w = cb0[16].x;
        r7.y = cb0[16].z;
        r7.zw = cb0[17].yw;
        r8.w = cb0[48].x;
        r4.x = cb0[48].z;
        r9.xy = cb0[49].xz;
        r9.z = cb0[50].x;
        r4.y = cb0[50].z;
      }
      r2.w = cmp(0 != cb0[59].x);
      if (r2.w != 0) {
        if (r4.z != 0) {
          r10.xy = v5.yx / v5.ww;
          r10.xy = cb1[7].yx * r10.xy;
          r10.xy = float2(0.25,0.25) * r10.xy;
          r10.zw = cmp(r10.xy >= -r10.xy);
          r10.xy = frac(abs(r10.xy));
          r10.xy = r10.zw ? r10.xy : -r10.xy;
          r10.xy = float2(4,4) * r10.xy;
          r10.xy = (uint2)r10.xy;
          r11.x = dot(cb0[5].xyzw, icb[r10.y+0].xyzw);
          r11.y = dot(cb0[6].xyzw, icb[r10.y+0].xyzw);
          r11.z = dot(cb0[7].xyzw, icb[r10.y+0].xyzw);
          r11.w = dot(cb0[8].xyzw, icb[r10.y+0].xyzw);
          r4.z = dot(r11.xyzw, icb[r10.x+0].xyzw);
          r4.z = cb0[41].w * 17 + -r4.z;
          r4.z = -0.00999999978 + r4.z;
        } else {
          r4.z = 1;
        }
        r4.z = cmp(0 < r4.z);
        r4.z = r4.z ? 1 : -1;
      } else {
        r4.z = 0;
      }
      r3.w = cmp(0 < r3.w);
      if (r3.w != 0) {
        r3.w = 2 + -r5.w;
        r7.x = 1 + -r4.w;
        r7.x = log2(r7.x);
        r7.x = r9.y * r7.x;
        r7.x = exp2(r7.x);
        r3.w = -r7.x + r3.w;
        r3.w = r3.w + -r7.y;
        r7.x = r7.w + -r7.z;
        r7.y = r5.w + -r7.z;
        r7.x = 1 / r7.x;
        r7.x = saturate(r7.y * r7.x);
        r7.y = r7.x * -2 + 3;
        r7.x = r7.x * r7.x;
        r3.w = -r7.y * r7.x + r3.w;
        r7.x = cmp(0 < r3.w);
        r7.x = r7.x ? 1 : -1;
        r7.x = r7.x + r4.z;
        r7.x = cmp(r7.x < 0);
//        if (r7.x != 0) discard;
        r7.x = 1;
      } else {
        r7.x = -1;
        r3.w = 0;
      }
      r7.xy = cmp(int2(-1,0) < (int2)r7.xx);
      if (r7.x != 0) {
        r7.x = 1 + -r6.w;
        r6.w = r5.w + -r6.w;
        r7.x = 1 / r7.x;
        r6.w = saturate(r7.x * r6.w);
        r7.x = r6.w * -2 + 3;
        r6.w = r6.w * r6.w;
        r6.w = r7.x * r6.w;
        r7.x = cb1[0].y * r9.x;
        r7.x = 0.0500000007 * r7.x;
        r7.x = frac(r7.x);
        r9.x = -r7.x + r5.w;
        r9.y = v7.y;
        r7.x = t4.Sample(s0_s, r9.xy).w;
        r3.w = saturate(r3.w);
        r7.z = cmp(r3.w < r8.w);
        r7.z = r7.z ? 1.000000 : 0;
        r4.w = 1 + -r4.w;
        r7.w = 200 * r9.z;
        r4.w = log2(r4.w);
        r4.w = r7.w * r4.w;
        r4.w = exp2(r4.w);
        r5.w = 1 + -r5.w;
        r5.w = log2(r5.w);
        r4.y = r5.w * r4.y;
        r4.y = exp2(r4.y);
        r4.y = r4.w * r4.y;
        r4.x = r4.y * r4.x;
        r4.x = max(r7.z, r4.x);
        r4.x = r7.x * r4.x;
        r4.xyw = r4.xxx * r6.xyz;
        r4.xyw = r6.xyz * r6.www + r4.xyw;
      } else {
        r4.xyw = float3(0,0,0);
      }
      r5.w = r7.y ? 1 : -1;
      r5.w = r5.w + r4.z;
      r5.w = cmp(r5.w < 0);
//      if (r5.w != 0) discard;
      if (r1.w == 0) {
        r1.w = cmp(cb0[57].x < 0.949999988);
        if (r1.w != 0) {
          r6.xy = v5.yx / v5.ww;
          r6.xy = cb1[7].yx * r6.xy;
          r6.xy = float2(0.25,0.25) * r6.xy;
          r6.zw = cmp(r6.xy >= -r6.xy);
          r6.xy = frac(abs(r6.xy));
          r6.xy = r6.zw ? r6.xy : -r6.xy;
          r6.xy = float2(4,4) * r6.xy;
          r6.xy = (uint2)r6.xy;
          r7.x = dot(cb0[5].xyzw, icb[r6.y+0].xyzw);
          r7.y = dot(cb0[6].xyzw, icb[r6.y+0].xyzw);
          r7.z = dot(cb0[7].xyzw, icb[r6.y+0].xyzw);
          r7.w = dot(cb0[8].xyzw, icb[r6.y+0].xyzw);
          r1.w = dot(r7.xyzw, icb[r6.x+0].xyzw);
          r1.w = cb0[57].x * 17 + -r1.w;
          r1.w = -0.00999999978 + r1.w;
        } else {
          r1.w = 1;
        }
        r1.w = cmp(0 < r1.w);
        r5.w = r1.w ? 1 : -1;
        r4.z = r5.w + r4.z;
        r4.z = cmp(r4.z < 0);
//        if (r4.z != 0) discard;
        r6.xyz = cb0[19].xyz * r2.xyz;
        r1.x = saturate(r1.x);
        r1.x = 1 + -r1.x;
        r4.z = r1.x * r1.x;
        r4.z = r4.z * r4.z;
        r1.x = r4.z * r1.x;
        r6.xyz = r6.xyz * r1.xxx + r4.xyw;
        r1.x = r1.w ? 1.000000 : 0;
        r4.xyw = r6.xyz * r1.xxx;
      }
      if (r2.w != 0) {
        r1.x = 1 + -cb0[41].w;
        r1.x = saturate(5 * r1.x);
        r1.w = r1.x * -2 + 3;
        r1.x = r1.x * r1.x;
        r1.x = r1.w * r1.x;
        r6.xyz = r4.xyw * r1.xxx;
        r1.x = cmp(0 < r3.w);
        r1.x = r1.x ? 1.000000 : 0;
        r6.xyz = r6.xyz * r1.xxx;
        r6.xyz = max(float3(0,0,0), r6.xyz);
        r4.xyw = min(float3(5,5,5), r6.xyz);
      }
      r8.xyz = r5.xyz * r1.zzz + r4.xyw;
    }
  }
  r4.xyz = cb0[95].xyz * cb0[96].xxx + float3(0.00100000005,0.00100000005,0.00100000005);
  r1.xzw = r4.xyz * r1.zzz + float3(0.00100000005,0.00100000005,0.00100000005);
  r4.xyz = r0.xyz * cb0[78].xyz + float3(-1,-1,-1);
  r4.xyz = cb0[94].zzz * r4.xyz + float3(1,1,1);
  r0.w = max(0.00100000005, r0.w);
  r4.xyz = r1.xzw * r4.xyz + r8.xyz;
  r1.x = -r1.y * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r1.xxx;
  r2.w = 1 + -r0.w;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cmp(r0.w >= cb0[79].z);
//  The line below controls the visibility of the blue effect that looks like glass shards that appears when you're close, set it to 1 to re-enable it and 0 to disable it.
  r0.w = 0;
  if (r0.w != 0) {
    r0.w = max(r4.y, r4.z);
    r5.w = max(r4.x, r0.w);
    r0.w = cmp(1 < r5.w);
    r5.xyz = r4.xyz / r5.www;
    r4.w = 1;
    r4.xyzw = r0.wwww ? r5.xyzw : r4.xyzw;
    r0.w = saturate(0.0500000007 * r4.w);
    r4.w = sqrt(r0.w);
    r0.w = 13;
  } else {
    r0.xyz = r0.xyz * cb0[78].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
    r4.xyz = r1.yyy * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
    r0.w = 0;
    r4.w = r2.w;
    r2.w = 0;
  }
  o0.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.x = 0.00392156886 * r0.w;
  r0.x = cmp(0 != cb0[74].x);
  r0.y = 0.00392156886 * cb0[74].y;
  r4.z = r0.x ? r0.y : r4.z;
  o0.w = 0;
  o1.xyzw = r2.xyzw;
  o2.xyzw = r4.xyzw;
  o4.x = r4.w;
  o5.x = 0;
  return;
}