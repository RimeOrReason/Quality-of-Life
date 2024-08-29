// Distant water shader on high & highest environment detail settings
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[195];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb2[0].w < 0.5);
  r0.yzw = -v5.xyz * cb2[0].www + cb2[0].xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.y = r1.x * cb0[79].x + 1;
  r1.y = rcp(r1.y);
  r1.y = saturate(r1.y * 1.03999996 + -0.0399999991);
  r1.yzw = cb0[2].xyz * r1.yyy;
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.yzw = r0.xxx ? cb2[0].xyz : r0.yzw;
  r1.xyz = r0.xxx ? cb0[2].xyz : r1.yzw;
  r0.x = cmp(9.99999975e-06 < cb0[80].z);
  if (r0.x != 0) {
    r0.x = cb1[8].x * v0.z + cb1[8].y;
    r0.x = 1 / r0.x;
    r0.x = saturate(r0.x * cb0[80].x + -cb0[80].y);
    r1.w = r0.x * cb0[80].w + -cb0[80].w;
    r1.w = exp2(r1.w);
    r0.x = r1.w * r0.x;
    r2.xyz = cb0[80].zzz * r1.xyz;
    r1.xyz = r0.xxx * r2.xyz + r1.xyz;
  }
  r0.x = 1 / v3.w;
  r2.xy = v3.xy * r0.xx;
  r3.xy = cb1[10].xz + v5.xz;
  r3.xy = cb0[163].xx * r3.xy;
  r3.zw = cb1[0].yy * cb0[67].xy + r3.xy;
  r4.xyz = t4.SampleLevel(s2_s, r3.zw, 0).xyz;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xy = cb0[69].zz * r4.xy;
  r3.xy = cb1[0].yy * cb0[69].xy + r3.xy;
  r3.xyz = t5.SampleLevel(s2_s, r3.xy, 0).xyz;
  r4.w = -1;
  r3.xyz = r3.xyz * float3(2,2,2) + r4.wwz;
  r3.xy = cb0[69].zz * r3.xy;
  r5.z = -1;
  r3.xyz = r5.xyz + r3.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r4.xy = v3.xy / v3.ww;
  r0.x = t0.Sample(s9_s, r4.xy).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r1.w = 1 / v4.w;
  r1.w = r1.w * -r0.x;
  r4.xyz = v4.xyz * r1.www;
  r5.xyz = v4.zxy * r1.www + cb1[5].zxy;
  r6.xyzw = cb1[5].yxyz + -v5.yxyz;
  r1.w = dot(r6.yzw, r6.yzw);
  r4.w = rsqrt(r1.w);
  r7.xyzw = r6.xyzw * r4.wwww;
  r5.w = cb0[163].y + v3.w;
  r8.xy = cb0[149].yy * r3.xy;
  r0.x = saturate(-r5.w + r0.x);
  r8.xy = r8.xy * r0.xx;
  r8.z = 0;
  r9.xyz = v3.xyw + r8.xyz;
  r9.xy = r9.xy / r9.zz;
  r0.x = t0.Sample(s9_s, r9.xy).x;
  r0.x = cb1[8].z * r0.x + cb1[8].w;
  r0.x = 1 / r0.x;
  r0.x = saturate(r0.x + -r5.w);
  r8.xyz = r0.xxx * r8.xyz + v3.xyw;
  r0.x = rcp(r8.z);
  r9.xy = r8.xy * r0.xx;
  r9.xyz = t14.Sample(s1_s, r9.xy).xyz;
  if (cb0[184].x != 0) {
    r10.xyz = cb1[5].xyz + -r5.yzx;
    r0.x = dot(r10.xyz, r10.xyz);
    r0.x = sqrt(r0.x);
    r10.xyz = r10.xyz / r0.xxx;
    t18.GetDimensions(0, fDest.x, fDest.y, fDest.z);
    r11.xy = fDest.xy;
    r11.zw = float2(0.5,0.5) / r11.xy;
    r0.x = 8 * cb0[194].x;
    r0.x = cmp(r0.x >= -r0.x);
    r12.xy = r0.xx ? float2(8,0.125) : float2(-8,-0.125);
    r0.x = cb0[194].x * r12.y;
    r0.x = frac(r0.x);
    r12.xyzw = r12.xxxx * r0.xxxx + float4(8,8,16,16);
    r12.xyzw = r12.xyzw * float4(32.6650009,11.8149996,32.6650009,11.8149996) + v0.xyxy;
    r0.x = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r13.z = frac(r0.x);
    r0.x = dot(r12.zw, float2(0.0671105608,0.00583714992));
    r0.x = frac(r0.x);
    r0.x = 52.9829178 * r0.x;
    r13.x = frac(r0.x);
    r12.xy = float2(-0.5,-0.5) + r13.xz;
    r12.xy = r12.xy * float2(4,4) + v0.yx;
    r11.xy = float2(4,4) * r11.xy;
    r11.xy = r12.yx / r11.xy;
    r0.x = t0.Sample(s9_s, r11.xy).x;
    r0.x = cb1[8].z * r0.x + cb1[8].w;
    r0.x = 1 / r0.x;
    r13.xyzw = t18.Gather(s3_s, r11.xy).xyzw;
    r0.x = r0.x / cb1[6].z;
    r14.x = cb3[9].z;
    r14.y = cb3[10].z;
    r14.z = cb3[11].z;
    r5.w = dot(r14.xyz, r10.xyz);
    r0.x = r0.x / r5.w;
    r10.xyzw = r13.xyzw + -r0.xxxx;
    r0.x = min(abs(r10.z), abs(r10.w));
    r0.x = min(abs(r10.y), r0.x);
    r0.x = min(abs(r10.x), r0.x);
    r12.zw = r11.xy + r11.zw;
    r5.w = t16.SampleLevel(s1_s, r12.zw, 0).w;
    r5.w = cmp(r5.w != 1.000000);
    if (r5.w != 0) {
      r11.xy = r11.xy + -r11.zw;
      r5.w = cmp(abs(r10.y) == r0.x);
      if (r5.w != 0) {
        r11.zw = t17.SampleLevel(s3_s, r11.xy, 0, int2(1, 1)).xy;
      } else {
        r5.w = cmp(abs(r10.z) == r0.x);
        if (r5.w != 0) {
          r11.zw = t17.SampleLevel(s3_s, r11.xy, 0, int2(1, 0)).xy;
        } else {
          r5.w = cmp(abs(r10.w) == r0.x);
          if (r5.w != 0) {
            r11.zw = t17.SampleLevel(s3_s, r11.xy, 0, int2(0, 0)).xy;
          } else {
            r11.zw = t17.SampleLevel(s3_s, r11.xy, 0, int2(0, 1)).xy;
          }
        }
      }
      r13.xyzw = t16.SampleLevel(s3_s, r11.xy, 0, int2(0, 1)).xyzw;
      r14.xyzw = t16.SampleLevel(s3_s, r11.xy, 0, int2(1, 1)).xyzw;
      r15.xyzw = t16.SampleLevel(s3_s, r11.xy, 0, int2(1, 0)).xyzw;
      r16.xyzw = t16.SampleLevel(s3_s, r11.xy, 0, int2(0, 0)).xyzw;
      r5.w = max(abs(r10.z), abs(r10.w));
      r5.w = max(abs(r10.y), r5.w);
      r5.w = max(abs(r10.x), r5.w);
      r10.xyzw = abs(r10.xyzw) + -r0.xxxx;
      r0.x = r5.w + -r0.x;
      r10.xyzw = saturate(r10.xyzw / r0.xxxx);
      r0.x = saturate(r0.x);
      r0.x = r0.x * -4.5999999 + 5;
      r10.xyzw = log2(r10.xyzw);
      r10.xyzw = r10.xyzw * r0.xxxx;
      r10.xyzw = exp2(r10.xyzw);
      r10.xyzw = float4(1,1,1,1) + -r10.xyzw;
      r11.xy = (uint2)r12.xy;
      r11.xy = (int2)r11.xy + int2(2,2);
      r11.xy = (int2)r11.xy & int2(3,3);
      r11.xy = (uint2)r11.xy;
      r11.xy = float2(0.5,0.5) + r11.xy;
      r12.xy = float2(0.25,0.25) * r11.xy;
      r11.xy = -r11.yx * float2(0.25,0.25) + float2(1,1);
      r12.zw = r11.xy * r12.xy;
      r0.x = r12.y * r12.x;
      r17.y = r10.y * r0.x;
      r17.xz = r12.zw * r10.xz;
      r0.x = r11.x * r11.y;
      r17.w = r10.w * r0.x;
      r10.xyzw = r17.yyyy * r14.xyzw;
      r10.xyzw = r13.xyzw * r17.xxxx + r10.xyzw;
      r10.xyzw = r15.xyzw * r17.zzzz + r10.xyzw;
      r10.xyzw = r16.xyzw * r17.wwww + r10.xyzw;
      r0.x = dot(r17.xyzw, float4(1,1,1,1));
      r10.xyzw = r10.xyzw / r0.xxxx;
    } else {
      r10.xyzw = float4(0,0,0,1);
      r11.zw = float2(0,0);
    }
    r0.x = 1000 * r11.z;
  } else {
    r10.xyzw = float4(0,0,0,1);
    r0.x = 0;
    r11.w = 0;
  }
  r5.w = cmp(cb0[147].x != 0.000000);
  if (r5.w != 0) {
    r5.w = cmp(v3.w < 5);
    r6.x = 0.0250000004 * v3.w;
    r8.w = log2(v3.w);
    r8.w = r8.w * 0.150515005 + -0.34948501;
    r8.w = r8.w * 0.875 + 0.125;
    r2.z = r5.w ? r6.x : r8.w;
    r12.xyzw = t1.Sample(s7_s, r2.xyz).xyzw;
    r11.xyz = -r12.xyz + r9.xyz;
    r2.z = max(0.100000001, r12.w);
    r2.z = rcp(r2.z);
    r12.xyz = r11.xyz * r2.zzz;
    if (cb0[184].x != 0) {
      r13.x = cb3[9].z;
      r13.y = cb3[10].z;
      r13.z = cb3[11].z;
      r5.w = dot(r4.xyz, r13.xyz);
      r6.x = cmp(0.00999999978 < cb0[50].w);
      if (r6.x != 0) {
        r6.x = cmp(cb0[55].y < 0.5);
        if (r6.x != 0) {
          r13.xyz = -cb0[50].xyz + r5.yzx;
          r6.x = dot(r13.xyz, r13.xyz);
          r6.x = sqrt(r6.x);
          r6.x = saturate(r6.x * cb0[52].z + cb0[52].w);
          r6.x = 1 + -r6.x;
          r6.x = r6.x * r6.x;
          r8.w = cmp(cb0[37].z == 1.000000);
          r9.w = cmp(r13.y < 0);
          r8.w = r8.w ? r9.w : 0;
          r6.x = r8.w ? 0 : r6.x;
        } else {
          r8.w = -cb0[50].y + r5.z;
          r9.w = 1 / cb0[50].w;
          r8.w = saturate(r9.w * r8.w);
          r9.w = r8.w * -2 + 3;
          r8.w = r8.w * r8.w;
          r6.x = r9.w * r8.w;
        }
        r6.x = saturate(cb0[55].z * r6.x);
        r8.w = cmp(cb0[55].x >= 0.0500000007);
        r8.w = r8.w ? 1.000000 : 0;
        r8.w = r8.w * r6.x;
        r9.w = cmp(0.949999988 >= cb0[55].x);
        r9.w = r9.w ? 1.000000 : 0;
        r6.x = r9.w * r6.x;
      } else {
        r8.w = 0;
        r6.x = 0;
      }
      r9.w = dot(r4.xyz, r4.xyz);
      r9.w = sqrt(r9.w);
      r12.w = saturate(r9.w * cb0[42].z + cb0[42].w);
      r13.x = saturate(r9.w * cb0[53].z + cb0[53].w);
      r13.x = r13.x + -r12.w;
      r12.w = r8.w * r13.x + r12.w;
      r13.x = 2 + -r12.w;
      r13.x = r13.x * r12.w;
      r12.w = dot(cb0[49].xyzw, float4(1,1,1,1));
      r12.w = cmp(0.0500000007 < r12.w);
      if (r12.w != 0) {
        r14.xyz = -cb0[5].zxy + r5.xyz;
        r5.x = dot(r14.xyz, r14.xyz);
        r5.x = rsqrt(r5.x);
        r14.xyz = r14.xyz * r5.xxx;
        r5.x = abs(r14.y) + abs(r14.z);
        r5.x = r5.x + abs(r14.x);
        r14.xyz = r14.xyz / r5.xxx;
        r5.xy = float2(1,1) + -abs(r14.zy);
        r15.xyz = cmp(r14.xyz >= float3(0,0,0));
        r13.zw = r15.yz ? float2(1,1) : float2(-1,-1);
        r5.xy = r13.zw * r5.xy;
        r5.xy = r15.xx ? r14.yz : r5.xy;
        r5.xy = r5.xy * float2(0.5,0.5) + float2(0.5,0.5);
        r14.xyz = t3.SampleLevel(s0_s, r5.xy, 0).xyz;
      } else {
        r14.xyz = float3(0,0,0);
      }
      r4.x = dot(r4.xz, r4.xz);
      r4.x = sqrt(r4.x);
      r13.y = saturate(r4.x * cb0[44].x + cb0[44].y);
      r5.y = saturate(cb1[5].y * cb0[44].z + cb0[44].w);
      r4.z = 0.999899983 * cb1[6].z;
      r4.z = cmp(-r5.w >= r4.z);
      r5.x = cb0[41].w * r13.x;
      r13.xy = r4.zz ? r5.xy : r13.xy;
      r4.z = -cb4[0].w + cb0[54].w;
      r4.z = r8.w * r4.z + cb4[0].w;
      r5.x = max(9.99999975e-05, r13.x);
      r5.x = log2(r5.x);
      r4.z = r5.x * r4.z;
      r4.z = exp2(r4.z);
      r5.x = cb0[48].x * cb0[40].w;
      r4.z = min(r5.x, r4.z);
      r4.z = min(1, r4.z);
      r5.x = saturate(r5.z * cb0[42].x + cb0[42].y);
      r5.y = 2 + -r5.x;
      r5.x = r5.x * r5.y;
      r5.xyz = r5.xxx * cb0[41].xyz + cb0[40].xyz;
      r15.xyz = cb0[54].xyz + -r5.xyz;
      r5.xyz = r8.www * r15.xyz + r5.xyz;
      r15.xyz = r14.xyz + -r5.xyz;
      r5.xyz = cb0[49].xxx * r15.xyz + r5.xyz;
      r5.w = -cb0[39].w + r9.w;
      r5.w = saturate(cb0[43].w * r5.w);
      r15.xyz = -cb0[43].xyz + r14.xyz;
      r15.xyz = cb0[49].yyy * r15.xyz + cb0[43].xyz;
      r15.xyz = r15.xyz + -r5.xyz;
      r5.xyz = r5.www * r15.xyz + r5.xyz;
      r13.z = saturate(r4.x * cb0[46].z + cb0[46].w);
      r4.x = cb0[51].w + -cb0[38].y;
      r4.x = r6.x * r4.x + cb0[38].y;
      r13.xw = cb0[38].xz * r4.yy;
      r15.xy = cmp(float2(0.00999999978,0.00999999978) < abs(r13.xw));
      r15.zw = -cb0[38].xz * r4.yy + cb0[47].yw;
      r15.zw = min(float2(80,80), r15.zw);
      r15.zw = float2(1.44269502,1.44269502) * r15.zw;
      r15.zw = exp2(r15.zw);
      r15.zw = cb0[47].xz + -r15.zw;
      r13.xw = r15.zw / r13.xw;
      r13.xw = r15.xy ? r13.xw : cb0[47].xz;
      r4.x = r9.w * r4.x;
      r4.x = -r13.x * r4.x;
      r4.x = exp2(r4.x);
      r4.x = 1 + -r4.x;
      r4.x = max(0, r4.x);
      r4.y = saturate(r9.w * cb0[39].x + cb0[39].y);
      r5.w = saturate(r9.w * cb0[52].x + cb0[52].y);
      r5.w = r5.w + -r4.y;
      r4.y = r6.x * r5.w + r4.y;
      r5.w = 2 + -r4.y;
      r8.w = cb0[53].x + -cb0[39].z;
      r8.w = r6.x * r8.w + cb0[39].z;
      r4.y = r4.y * r5.w + -1;
      r4.y = r8.w * r4.y + 1;
      r4.x = r4.x * r4.y;
      r4.x = min(cb0[40].w, r4.x);
      r5.w = cb0[38].w * r9.w;
      r5.w = -r13.w * r5.w;
      r5.w = exp2(r5.w);
      r5.w = 1 + -r5.w;
      r5.w = max(0, r5.w);
      r8.w = saturate(r9.w * cb0[46].x + cb0[46].y);
      r9.w = 2 + -r8.w;
      r8.w = r9.w * r8.w;
      r5.w = r8.w * r5.w;
      r4.y = min(cb0[48].y, r5.w);
      r13.xw = r4.xy * r13.yz;
      r15.xyz = -cb4[0].xyz + cb0[51].xyz;
      r15.xyz = r6.xxx * r15.xyz + cb4[0].xyz;
      r5.w = cb0[53].y + -cb0[49].z;
      r5.w = r6.x * r5.w + cb0[49].z;
      r16.xyz = -r15.xyz + r14.xyz;
      r15.xyz = r5.www * r16.xyz + r15.xyz;
      r16.xyz = r5.xyz * r4.zzz;
      r5.xyz = -r5.xyz * r4.zzz + r15.xyz;
      r5.xyz = r13.xxx * r5.xyz + r16.xyz;
      r4.z = 1 + -r4.z;
      r4.xy = -r4.xy * r13.yz + float2(1,1);
      r4.x = r4.z * r4.x;
      r13.xyz = -cb0[45].xyz + r14.xyz;
      r13.xyz = cb0[49].www * r13.xyz + cb0[45].xyz;
      r5.xyz = r13.xyz * r13.www + r5.xyz;
      r4.x = r4.x * r4.y;
      r13.xyz = r5.xyz * r10.www + r10.xyz;
      r4.y = r4.x * r10.w;
      r11.xyz = r11.xyz * r2.zzz + -r13.xyz;
      r2.z = max(0.100000001, r4.y);
      r2.z = rcp(r2.z);
      r11.xyz = r11.xyz * r2.zzz;
      r12.xyz = r4.xxx * r11.xyz + r5.xyz;
    }
    r4.xy = r8.xy / r8.zz;
    r2.z = t0.Sample(s9_s, r4.xy).x;
    r2.z = cb1[8].z * r2.z + cb1[8].w;
    r2.z = 1 / r2.z;
    r4.x = rcp(v4.w);
    r2.z = r4.x * -r2.z;
    r4.xyz = v4.xyz * r2.zzz;
    r5.xyz = v4.zxy * r2.zzz + cb1[5].zxy;
    r11.x = cb3[9].z;
    r11.y = cb3[10].z;
    r11.z = cb3[11].z;
    r2.z = dot(r4.xyz, r11.xyz);
    r5.w = cmp(0.00999999978 < cb0[50].w);
    if (r5.w != 0) {
      r5.w = cmp(cb0[55].y < 0.5);
      if (r5.w != 0) {
        r11.xyz = -cb0[50].xyz + r5.yzx;
        r5.w = dot(r11.xyz, r11.xyz);
        r5.w = sqrt(r5.w);
        r5.w = saturate(r5.w * cb0[52].z + cb0[52].w);
        r5.w = 1 + -r5.w;
        r5.w = r5.w * r5.w;
        r6.x = cmp(cb0[37].z == 1.000000);
        r8.w = cmp(r11.y < 0);
        r6.x = r6.x ? r8.w : 0;
        r5.w = r6.x ? 0 : r5.w;
      } else {
        r6.x = -cb0[50].y + r5.z;
        r8.w = 1 / cb0[50].w;
        r6.x = saturate(r8.w * r6.x);
        r8.w = r6.x * -2 + 3;
        r6.x = r6.x * r6.x;
        r5.w = r8.w * r6.x;
      }
      r5.w = saturate(cb0[55].z * r5.w);
      r6.x = cmp(cb0[55].x >= 0.0500000007);
      r6.x = r6.x ? 1.000000 : 0;
      r6.x = r6.x * r5.w;
      r8.w = cmp(0.949999988 >= cb0[55].x);
      r8.w = r8.w ? 1.000000 : 0;
      r5.w = r8.w * r5.w;
    } else {
      r6.x = 0;
      r5.w = 0;
    }
    r8.w = dot(r4.xyz, r4.xyz);
    r8.w = sqrt(r8.w);
    r9.w = saturate(r8.w * cb0[42].z + cb0[42].w);
    r11.x = saturate(r8.w * cb0[53].z + cb0[53].w);
    r11.x = r11.x + -r9.w;
    r9.w = r6.x * r11.x + r9.w;
    r11.x = 2 + -r9.w;
    r11.x = r11.x * r9.w;
    r9.w = dot(cb0[49].xyzw, float4(1,1,1,1));
    r9.w = cmp(0.0500000007 < r9.w);
    if (r9.w != 0) {
      r13.xyz = -cb0[5].zxy + r5.xyz;
      r5.x = dot(r13.xyz, r13.xyz);
      r5.x = rsqrt(r5.x);
      r13.xyz = r13.xyz * r5.xxx;
      r5.x = abs(r13.y) + abs(r13.z);
      r5.x = r5.x + abs(r13.x);
      r13.xyz = r13.xyz / r5.xxx;
      r5.xy = float2(1,1) + -abs(r13.zy);
      r14.xyz = cmp(r13.xyz >= float3(0,0,0));
      r13.xw = r14.yz ? float2(1,1) : float2(-1,-1);
      r5.xy = r13.xw * r5.xy;
      r5.xy = r14.xx ? r13.yz : r5.xy;
      r5.xy = r5.xy * float2(0.5,0.5) + float2(0.5,0.5);
      r13.xyz = t3.SampleLevel(s0_s, r5.xy, 0).xyz;
    } else {
      r13.xyz = float3(0,0,0);
    }
    r4.x = dot(r4.xz, r4.xz);
    r4.x = sqrt(r4.x);
    r11.y = saturate(r4.x * cb0[44].x + cb0[44].y);
    r5.y = saturate(cb1[5].y * cb0[44].z + cb0[44].w);
    r4.z = 0.999899983 * cb1[6].z;
    r2.z = cmp(-r2.z >= r4.z);
    r5.x = cb0[41].w * r11.x;
    r11.xy = r2.zz ? r5.xy : r11.xy;
    r2.z = -cb4[0].w + cb0[54].w;
    r2.z = r6.x * r2.z + cb4[0].w;
    r4.z = max(9.99999975e-05, r11.x);
    r4.z = log2(r4.z);
    r2.z = r4.z * r2.z;
    r2.z = exp2(r2.z);
    r4.z = cb0[48].x * cb0[40].w;
    r2.z = min(r4.z, r2.z);
    r2.z = min(1, r2.z);
    r4.z = saturate(r5.z * cb0[42].x + cb0[42].y);
    r5.x = 2 + -r4.z;
    r4.z = r5.x * r4.z;
    r5.xyz = r4.zzz * cb0[41].xyz + cb0[40].xyz;
    r14.xyz = cb0[54].xyz + -r5.xyz;
    r5.xyz = r6.xxx * r14.xyz + r5.xyz;
    r14.xyz = r13.xyz + -r5.xyz;
    r5.xyz = cb0[49].xxx * r14.xyz + r5.xyz;
    r4.z = -cb0[39].w + r8.w;
    r4.z = saturate(cb0[43].w * r4.z);
    r14.xyz = -cb0[43].xyz + r13.xyz;
    r14.xyz = cb0[49].yyy * r14.xyz + cb0[43].xyz;
    r14.xyz = r14.xyz + -r5.xyz;
    r5.xyz = r4.zzz * r14.xyz + r5.xyz;
    r11.z = saturate(r4.x * cb0[46].z + cb0[46].w);
    r4.x = cb0[51].w + -cb0[38].y;
    r4.x = r5.w * r4.x + cb0[38].y;
    r14.xy = cb0[38].xz * r4.yy;
    r14.zw = cmp(float2(0.00999999978,0.00999999978) < abs(r14.xy));
    r4.yz = -cb0[38].xz * r4.yy + cb0[47].yw;
    r4.yz = min(float2(80,80), r4.yz);
    r4.yz = float2(1.44269502,1.44269502) * r4.yz;
    r4.yz = exp2(r4.yz);
    r4.yz = cb0[47].xz + -r4.yz;
    r4.yz = r4.yz / r14.xy;
    r4.yz = r14.zw ? r4.yz : cb0[47].xz;
    r4.x = r8.w * r4.x;
    r4.x = -r4.y * r4.x;
    r4.x = exp2(r4.x);
    r4.x = 1 + -r4.x;
    r4.x = max(0, r4.x);
    r4.y = saturate(r8.w * cb0[39].x + cb0[39].y);
    r6.x = saturate(r8.w * cb0[52].x + cb0[52].y);
    r6.x = r6.x + -r4.y;
    r4.y = r5.w * r6.x + r4.y;
    r6.x = 2 + -r4.y;
    r9.w = cb0[53].x + -cb0[39].z;
    r9.w = r5.w * r9.w + cb0[39].z;
    r4.y = r4.y * r6.x + -1;
    r4.y = r9.w * r4.y + 1;
    r4.x = r4.x * r4.y;
    r4.x = min(cb0[40].w, r4.x);
    r6.x = cb0[38].w * r8.w;
    r4.z = r6.x * -r4.z;
    r4.z = exp2(r4.z);
    r4.z = 1 + -r4.z;
    r4.z = max(0, r4.z);
    r6.x = saturate(r8.w * cb0[46].x + cb0[46].y);
    r8.w = 2 + -r6.x;
    r6.x = r8.w * r6.x;
    r4.z = r6.x * r4.z;
    r4.y = min(cb0[48].y, r4.z);
    r14.xy = r4.xy * r11.yz;
    r15.xyz = -cb4[0].xyz + cb0[51].xyz;
    r15.xyz = r5.www * r15.xyz + cb4[0].xyz;
    r4.z = cb0[53].y + -cb0[49].z;
    r4.z = r5.w * r4.z + cb0[49].z;
    r16.xyz = -r15.xyz + r13.xyz;
    r15.xyz = r4.zzz * r16.xyz + r15.xyz;
    r16.xyz = r5.xyz * r2.zzz;
    r5.xyz = -r5.xyz * r2.zzz + r15.xyz;
    r5.xyz = r14.xxx * r5.xyz + r16.xyz;
    r2.z = 1 + -r2.z;
    r4.xy = -r4.xy * r11.yz + float2(1,1);
    r2.z = r4.x * r2.z;
    r11.xyz = -cb0[45].xyz + r13.xyz;
    r11.xyz = cb0[49].www * r11.xyz + cb0[45].xyz;
    r5.xyz = r11.xyz * r14.yyy + r5.xyz;
    r2.z = r2.z * r4.y;
    r4.xyz = r12.xyz + -r5.xyz;
    r2.z = max(0.100000001, r2.z);
    r2.z = rcp(r2.z);
    r4.xyz = r4.xyz * r2.zzz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = r4.xyz + -r9.xyz;
    r9.xyz = cb0[147].xxx * r4.xyz + r9.xyz;
  }
  r4.xy = r8.xy / r8.zz;
  r2.z = t0.Sample(s9_s, r4.xy).x;
  r2.z = cb1[8].z * r2.z + cb1[8].w;
  r2.z = 1 / r2.z;
  r2.z = -v3.w + r2.z;
  r4.x = cmp(cb0[21].y < 0);
  r4.xyz = r4.xxx ? cb0[17].yzw : cb0[21].xyz;
  r5.x = cmp(cb0[79].x == 0.000000);
  r0.yzw = r5.xxx ? r4.xyz : r0.yzw;
  r3.w = 1;
  r4.x = dot(r3.xyw, r3.xyw);
  r4.x = rsqrt(r4.x);
  r4.xyz = r4.xxx * r3.xwy;
  r5.xyz = r6.yzw * r4.www + r0.yzw;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r5.xyz = r5.xyz * r0.yyy;
  r0.y = saturate(dot(r4.xyz, r5.xyz));
  r0.w = cb0[150].x * 1.44270003 + 1.44270003;
  r0.y = r0.y * r0.w + -r0.w;
  r0.y = exp2(r0.y);
  r0.z = cb0[150].z * r0.z + -1;
  r0.z = max(0.0500000007, r0.z);
  r0.y = r0.y * r0.z;
  r0.z = cb0[150].z * -r7.x + 1;
  r0.z = max(0.0500000007, r0.z);
  r0.y = r0.y * r0.z;
  r0.z = r2.z * 0.100000001 + -0.100000001;
  r0.z = saturate(cb0[150].y * r0.z);
  r0.y = r0.y * r0.z;
  r1.xyz = cb0[149].www * r1.xyz;
  r0.zw = -cb0[153].xy * r2.zz;
  r0.zw = float2(1.44269502,1.44269502) * r0.zw;
  r0.zw = exp2(r0.zw);
  r0.zw = float2(1,1) + -r0.zw;
  r0.zw = max(float2(0,0), r0.zw);
  r4.xyz = cb0[158].xyz + -cb0[151].xyz;
  r4.xyz = cb0[158].www * r4.xyz + cb0[151].xyz;
  r4.xyz = float3(-1,-1,-1) + r4.xyz;
  r4.xyz = r0.zzz * r4.xyz + float3(1,1,1);
  r5.xyz = r4.xyz * r9.xyz;
  r6.xyz = cb0[159].xyz + -cb0[152].xyz;
  r6.xyz = cb0[159].www * r6.xyz + cb0[152].xyz;
  r4.xyz = -r4.xyz * r9.xyz + r6.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r0.z = cmp(0 != cb0[145].x);
  r0.w = cmp(0 != cb0[108].x);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r5.xyz = max(float3(9.99999975e-05,9.99999975e-05,9.99999975e-05), r4.xyz);
    r6.xyz = cb0[136].xyz * v5.yyy;
    r6.xyz = cb0[135].xyz * v5.xxx + r6.xyz;
    r6.xyz = cb0[137].xyz * v5.zzz + r6.xyz;
    r6.xyz = cb0[138].xyz + r6.xyz;
    r0.zw = v5.xz * cb0[143].xy + cb0[143].zw;
    r3.w = t6.Sample(s4_s, r6.xyz).x;
    r0.z = t8.Sample(s5_s, r0.zw).x;
    r0.w = saturate(r3.w * cb0[126].z + cb0[126].w);
    r6.xyz = cb0[125].xyz + -v5.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = sqrt(r3.w);
    r3.w = saturate(r3.w * cb0[126].x + cb0[126].y);
    r0.w = r3.w * r0.w;
    r0.z = r0.w * r0.z;
    r0.w = dot(r5.xyz, float3(0.212672904,0.715152204,0.0721750036));
    r6.xyz = r5.xyz + -r0.www;
    r8.xyz = cb0[129].xyz * r6.xyz + r0.www;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = log2(r8.xyz);
    r9.x = cb0[129].w * r8.x;
    r9.y = cb0[130].w * r8.y;
    r9.z = cb0[131].w * r8.z;
    r8.xyz = exp2(r9.xyz);
    r8.xyz = r8.xyz * cb0[130].xyz + cb0[131].xyz;
    r3.w = cmp(1 < asint(cb0[124].x));
    if (r3.w != 0) {
      r3.w = cmp(r0.z < 0.00196078443);
      if (r3.w != 0) {
        r9.xyz = cb0[140].xyz * v5.yyy;
        r9.xyz = cb0[139].xyz * v5.xxx + r9.xyz;
        r9.xyz = cb0[141].xyz * v5.zzz + r9.xyz;
        r9.xyz = cb0[142].xyz + r9.xyz;
        r11.xy = v5.xz * cb0[144].xy + cb0[144].zw;
        r3.w = t7.Sample(s4_s, r9.xyz).x;
        r4.w = t9.Sample(s5_s, r11.xy).x;
        r3.w = saturate(r3.w * cb0[128].z + cb0[128].w);
        r9.xyz = cb0[127].xyz + -v5.xyz;
        r5.w = dot(r9.xyz, r9.xyz);
        r5.w = sqrt(r5.w);
        r5.w = saturate(r5.w * cb0[128].x + cb0[128].y);
        r3.w = r5.w * r3.w;
        r0.z = r3.w * r4.w;
        r6.xyz = cb0[132].xyz * r6.xyz + r0.www;
        r6.xyz = max(float3(0,0,0), r6.xyz);
        r6.xyz = log2(r6.xyz);
        r9.x = cb0[132].w * r6.x;
        r9.y = cb0[133].w * r6.y;
        r9.z = cb0[134].w * r6.z;
        r6.xyz = exp2(r9.xyz);
        r8.xyz = r6.xyz * cb0[133].xyz + cb0[134].xyz;
      }
    }
    r6.xyz = r8.xyz + -r5.xyz;
    r4.xyz = r0.zzz * r6.xyz + r5.xyz;
  }
  r3.xyz = cb0[155].xzy * r3.xzy;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = dot(-r7.yzw, r3.xyz);
  r0.z = r0.z + r0.z;
  r5.xyz = r3.xyz * -r0.zzz + -r7.yzw;
  r5.xyzw = t2.SampleLevel(s10_s, r5.xyz, 0).xyzw;
  r0.z = -1 + r5.w;
  r0.z = cb0[154].w * r0.z + 1;
  r0.z = log2(r0.z);
  r0.z = cb0[154].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = cb0[154].x * r0.z;
  r6.xyz = r0.zzz * r5.xyz;
  r0.w = saturate(cb0[156].y * r2.z);
  r0.w = cb0[156].x * r0.w;
  r3.xy = r3.xz * r0.ww + r2.xy;
  r3.xyzw = t15.Sample(s1_s, r3.xy).xyzw;
  r0.w = saturate(cb0[156].z * r3.w);
  r3.xyz = -r0.zzz * r5.xyz + r3.xyz;
  r3.xyz = r0.www * r3.xyz + r6.xyz;
  r0.z = cb0[160].x * cb0[157].x;
  r0.w = cb0[157].y * -r7.x + 1;
  r0.w = max(0.0500000007, r0.w);
  r0.z = r0.z * r0.w;
  r0.w = saturate(cb0[157].z * r2.z);
  r0.z = saturate(r0.z * r0.w);
  r3.xyz = r3.xyz + -r4.xyz;
  r3.xyz = r0.zzz * r3.xyz + r4.xyz;
  r0.yzw = r1.xyz * r0.yyy + r3.xyz;
  r1.x = saturate(cb0[149].z * r2.z);
  r1.x = v1.w * r1.x;
  r1.y = cmp(cb0[145].x == 1.000000);
  if (r1.y != 0) {
    r3.xyz = cb0[136].xyz * v5.yyy;
    r3.xyz = cb0[135].xyz * v5.xxx + r3.xyz;
    r3.xyz = cb0[137].xyz * v5.zzz + r3.xyz;
    r3.xyz = cb0[138].xyz + r3.xyz;
    r1.yz = v5.xz * cb0[143].xy + cb0[143].zw;
    r2.z = t6.Sample(s4_s, r3.xyz).x;
    r1.y = t8.Sample(s5_s, r1.yz).x;
    r1.z = saturate(r2.z * cb0[126].z + cb0[126].w);
    r3.xyz = cb0[125].xyz + -v5.xyz;
    r2.z = dot(r3.xyz, r3.xyz);
    r2.z = sqrt(r2.z);
    r2.z = saturate(r2.z * cb0[126].x + cb0[126].y);
    r1.z = r2.z * r1.z;
    r1.y = r1.z * r1.y;
    r1.z = cmp(1 < asint(cb0[124].x));
    if (r1.z != 0) {
      r2.z = cmp(r1.y < 0.00196078443);
      if (r2.z != 0) {
        r3.xyz = cb0[140].xyz * v5.yyy;
        r3.xyz = cb0[139].xyz * v5.xxx + r3.xyz;
        r3.xyz = cb0[141].xyz * v5.zzz + r3.xyz;
        r3.xyz = cb0[142].xyz + r3.xyz;
        r4.xy = v5.xz * cb0[144].xy + cb0[144].zw;
        r2.z = t7.Sample(s4_s, r3.xyz).x;
        r3.x = t9.Sample(s5_s, r4.xy).x;
        r2.z = saturate(r2.z * cb0[128].z + cb0[128].w);
        r3.yzw = cb0[127].xyz + -v5.xyz;
        r3.y = dot(r3.yzw, r3.yzw);
        r3.y = sqrt(r3.y);
        r3.y = saturate(r3.y * cb0[128].x + cb0[128].y);
        r2.z = r3.y * r2.z;
        r2.z = r2.z * r3.x;
      } else {
        r2.z = r1.y;
      }
    } else {
      r2.z = r1.y;
    }
    r3.xyz = r0.yzw * cb0[164].xyz + -r0.yzw;
    r0.yzw = r2.zzz * r3.xyz + r0.yzw;
    if (r1.z != 0) {
      r1.z = cmp(r1.y < 0.00196078443);
      if (r1.z != 0) {
        r3.xyz = cb0[140].xyz * v5.yyy;
        r3.xyz = cb0[139].xyz * v5.xxx + r3.xyz;
        r3.xyz = cb0[141].xyz * v5.zzz + r3.xyz;
        r3.xyz = cb0[142].xyz + r3.xyz;
        r4.xy = v5.xz * cb0[144].xy + cb0[144].zw;
        r1.z = t7.Sample(s4_s, r3.xyz).x;
        r2.z = t9.Sample(s5_s, r4.xy).x;
        r1.z = saturate(r1.z * cb0[128].z + cb0[128].w);
        r3.xyz = cb0[127].xyz + -v5.xyz;
        r3.x = dot(r3.xyz, r3.xyz);
        r3.x = sqrt(r3.x);
        r3.x = saturate(r3.x * cb0[128].x + cb0[128].y);
        r1.z = r3.x * r1.z;
        r1.y = r1.z * r2.z;
      }
    }
    r1.z = r1.x * cb0[165].x + -r1.x;
    o0.w = r1.y * r1.z + r1.x;
  } else {
    o0.w = r1.x;
  }
  r1.xyz = -cb1[5].xyz + v5.xyz;
  r3.x = cb3[9].z;
  r3.y = cb3[10].z;
  r3.z = cb3[11].z;
  r2.z = dot(r1.xyz, r3.xyz);
  r3.x = cmp(0.00999999978 < cb0[50].w);
  if (r3.x != 0) {
    r3.x = cmp(cb0[55].y < 0.5);
    if (r3.x != 0) {
      r3.xyz = -cb0[50].xyz + v5.xyz;
      r3.x = dot(r3.xyz, r3.xyz);
      r3.x = sqrt(r3.x);
      r3.x = saturate(r3.x * cb0[52].z + cb0[52].w);
      r3.x = 1 + -r3.x;
      r3.x = r3.x * r3.x;
      r3.z = cmp(cb0[37].z == 1.000000);
      r3.y = cmp(r3.y < 0);
      r3.y = r3.y ? r3.z : 0;
      r3.x = r3.y ? 0 : r3.x;
    } else {
      r3.y = -cb0[50].y + v5.y;
      r3.z = 1 / cb0[50].w;
      r3.y = saturate(r3.y * r3.z);
      r3.z = r3.y * -2 + 3;
      r3.y = r3.y * r3.y;
      r3.x = r3.z * r3.y;
    }
    r3.x = saturate(cb0[55].z * r3.x);
    r3.y = cmp(cb0[55].x >= 0.0500000007);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r3.z = cmp(0.949999988 >= cb0[55].x);
    r3.z = r3.z ? 1.000000 : 0;
    r3.x = r3.x * r3.z;
  } else {
    r3.xy = float2(0,0);
  }
  r3.z = dot(r1.xyz, r1.xyz);
  r3.z = sqrt(r3.z);
  r3.w = saturate(r3.z * cb0[42].z + cb0[42].w);
  r4.x = saturate(r3.z * cb0[53].z + cb0[53].w);
  r4.x = r4.x + -r3.w;
  r3.w = r3.y * r4.x + r3.w;
  r4.x = 2 + -r3.w;
  r4.x = r4.x * r3.w;
  r3.w = dot(cb0[49].xyzw, float4(1,1,1,1));
  r3.w = cmp(0.0500000007 < r3.w);
  if (r3.w != 0) {
    r5.xyz = -cb0[5].zxy + v5.zxy;
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r3.w = abs(r5.y) + abs(r5.z);
    r3.w = r3.w + abs(r5.x);
    r5.xyz = r5.xyz / r3.www;
    r4.zw = float2(1,1) + -abs(r5.zy);
    r6.xyz = cmp(r5.xyz >= float3(0,0,0));
    r5.xw = r6.yz ? float2(1,1) : float2(-1,-1);
    r4.zw = r5.xw * r4.zw;
    r4.zw = r6.xx ? r5.yz : r4.zw;
    r4.zw = r4.zw * float2(0.5,0.5) + float2(0.5,0.5);
    r5.xyz = t3.SampleLevel(s0_s, r4.zw, 0).xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r1.x = dot(r1.xz, r1.xz);
  r1.x = sqrt(r1.x);
  r4.y = saturate(r1.x * cb0[44].x + cb0[44].y);
  r6.y = saturate(cb1[5].y * cb0[44].z + cb0[44].w);
  r1.z = 0.999899983 * cb1[6].z;
  r1.z = cmp(-r2.z >= r1.z);
  r6.x = cb0[41].w * r4.x;
  r4.xy = r1.zz ? r6.xy : r4.xy;
  r1.z = -cb4[0].w + cb0[54].w;
  r1.z = r3.y * r1.z + cb4[0].w;
  r2.z = max(9.99999975e-05, r4.x);
  r2.z = log2(r2.z);
  r1.z = r2.z * r1.z;
  r1.z = exp2(r1.z);
  r2.z = cb0[48].x * cb0[40].w;
  r1.z = min(r2.z, r1.z);
  r1.z = min(1, r1.z);
  r2.z = saturate(v5.y * cb0[42].x + cb0[42].y);
  r3.w = 2 + -r2.z;
  r2.z = r3.w * r2.z;
  r6.xyz = r2.zzz * cb0[41].xyz + cb0[40].xyz;
  r7.xyz = cb0[54].xyz + -r6.xyz;
  r6.xyz = r3.yyy * r7.xyz + r6.xyz;
  r7.xyz = -r6.xyz + r5.xyz;
  r6.xyz = cb0[49].xxx * r7.xyz + r6.xyz;
  r2.z = -cb0[39].w + r3.z;
  r2.z = saturate(cb0[43].w * r2.z);
  r7.xyz = -cb0[43].xyz + r5.xyz;
  r7.xyz = cb0[49].yyy * r7.xyz + cb0[43].xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r2.zzz * r7.xyz + r6.xyz;
  r4.z = saturate(r1.x * cb0[46].z + cb0[46].w);
  r1.x = cb0[51].w + -cb0[38].y;
  r1.x = r3.x * r1.x + cb0[38].y;
  r3.yw = cb0[38].xz * r1.yy;
  r4.xw = cmp(float2(0.00999999978,0.00999999978) < abs(r3.yw));
  r7.xy = -cb0[38].xz * r1.yy + cb0[47].yw;
  r7.xy = min(float2(80,80), r7.xy);
  r7.xy = float2(1.44269502,1.44269502) * r7.xy;
  r7.xy = exp2(r7.xy);
  r7.xy = cb0[47].xz + -r7.xy;
  r3.yw = r7.xy / r3.yw;
  r3.yw = r4.xw ? r3.yw : cb0[47].xz;
  r1.x = r3.z * r1.x;
  r1.x = -r3.y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.y = saturate(r3.z * cb0[39].x + cb0[39].y);
  r2.z = saturate(r3.z * cb0[52].x + cb0[52].y);
  r2.z = r2.z + -r1.y;
  r1.y = r3.x * r2.z + r1.y;
  r2.z = 2 + -r1.y;
  r3.y = cb0[53].x + -cb0[39].z;
  r3.y = r3.x * r3.y + cb0[39].z;
  r1.y = r1.y * r2.z + -1;
  r1.y = r3.y * r1.y + 1;
  r1.x = r1.x * r1.y;
  r1.x = min(cb0[40].w, r1.x);
  r2.z = cb0[38].w * r3.z;
  r2.z = -r3.w * r2.z;
  r2.z = exp2(r2.z);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r3.y = saturate(r3.z * cb0[46].x + cb0[46].y);
  r3.w = 2 + -r3.y;
  r3.y = r3.y * r3.w;
  r2.z = r3.y * r2.z;
  r1.y = min(cb0[48].y, r2.z);
  r3.yw = r1.xy * r4.yz;
  r7.xyz = -cb4[0].xyz + cb0[51].xyz;
  r7.xyz = r3.xxx * r7.xyz + cb4[0].xyz;
  r2.z = cb0[53].y + -cb0[49].z;
  r2.z = r3.x * r2.z + cb0[49].z;
  r8.xyz = -r7.xyz + r5.xyz;
  r7.xyz = r2.zzz * r8.xyz + r7.xyz;
  r8.xyz = r6.xyz * r1.zzz;
  r6.xyz = -r6.xyz * r1.zzz + r7.xyz;
  r6.xyz = r3.yyy * r6.xyz + r8.xyz;
  r1.z = 1 + -r1.z;
  r1.xy = -r1.xy * r4.yz + float2(1,1);
  r1.x = r1.z * r1.x;
  r4.xyz = -cb0[45].xyz + r5.xyz;
  r4.xyz = cb0[49].www * r4.xyz + cb0[45].xyz;
  r4.xyz = r4.xyz * r3.www + r6.xyz;
  r4.w = r1.x * r1.y;
  r1.x = sqrt(r1.w);
  r1.y = cmp(r11.w == 0.000000);
  r0.x = r1.x + -r0.x;
  r0.x = r0.x / r11.w;
  r0.x = saturate(0.5 + r0.x);
  r0.x = r1.y ? 0 : r0.x;
  r1.x = cmp(0 < r0.x);
  r1.y = -1 + r10.w;
  r1.y = r0.x * r1.y + 1;
  r3.xyw = r0.xxx * r10.xyz;
  r5.xyz = r4.xyz * r1.yyy + r3.xyw;
  r5.w = r4.w * r1.y;
  r1.xyzw = r1.xxxx ? r5.xyzw : r4.xyzw;
  r1.xyzw = cb0[184].xxxx ? r1.xyzw : r4.xyzw;
  r0.xyz = r1.www * r0.yzw + r1.xyz;
  r0.w = cmp(v3.w < 5);
  r1.x = 0.0250000004 * v3.w;
  r1.y = log2(v3.w);
  r1.y = r1.y * 0.150515005 + -0.34948501;
  r1.y = r1.y * 0.875 + 0.125;
  r2.w = r0.w ? r1.x : r1.y;
  r1.xyzw = t1.Sample(s7_s, r2.xyw).xyzw;
  r0.xyz = r1.www * r0.xyz + r1.xyz;
  r0.w = t13.SampleLevel(s8_s, r2.xy, 0).x;
  r0.xyz = r0.www * cb0[148].xyz + r0.xyz;
  r0.w = cmp(0.5 < cb0[145].y);
  if (r0.w != 0) {
    r1.xy = (int2)v0.xy;
    r2.xyzw = t12.Gather(s6_s, r2.xy).xyzw;
    r2.xyzw = r2.xyzw * cb1[6].zzzz + -v3.wwww;
    r4.xyzw = cmp(r2.xyzw < float4(0,0,0,0));
    r2.xyzw = r4.xyzw ? float4(65504,65504,65504,65504) : abs(r2.xyzw);
    r3.xyw = cmp(r2.xyy < r2.zww);
    r3.xyw = r3.xyw ? float3(0,1.40129846e-45,0) : float3(2,3,2);
    r0.w = dot(r2.xz, icb[r3.x+0].xz);
    r1.z = dot(r2.yw, icb[r3.w+0].xz);
    r0.w = cmp(r0.w < r1.z);
    r0.w = r0.w ? r3.x : r3.y;
    r1.zw = (uint2)r1.xy >> int2(1,1);
    r1.xy = (int2)r1.xy & int2(1,1);
    r1.xy = cmp((int2)r1.xy == int2(0,0));
    r1.xy = (int2)r1.xy + (int2)r1.zw;
    r1.z = (int)-r0.w + 3;
    r1.w = cmp((uint)r0.w < 2);
    r2.x = r1.w ? r0.w : r1.z;
    r2.y = r1.w ? 0.000000 : 0;
    r1.xy = (int2)r1.xy + (int2)r2.xy;
    r1.zw = (int2)cb0[146].zw;
    r1.zw = (int2)r1.zw + int2(-1,-1);
    r1.xy = max(int2(0,0), (int2)r1.xy);
    r1.xy = min((int2)r1.xy, (int2)r1.zw);
    r1.zw = float2(0,0);
    r0.w = t11.Load(r1.xyw).x;
    r0.w = v3.w + -r0.w;
    r0.w = saturate(r0.w * 0.125 + 0.5);
    r2.x = cmp(0 < r0.w);
    if (r2.x != 0) {
      r1.xyzw = t10.Load(r1.xyz).xyzw;
      r1.xyz = r1.www * r0.xyz + r1.xyz;
      r1.xyz = r1.xyz + -r0.xyz;
      r0.xyz = r0.www * r1.xyz + r0.xyz;
    }
  }
  r0.w = cmp(0 != cb0[81].x);
  if (r0.w != 0) {
    r0.w = cmp(cb0[99].y >= r3.z);
    r1.x = cmp(cb0[105].x == 1.000000);
    r1.y = dot(r0.xyz, float3(0.212500006,0.715399981,0.0720999986));
    r1.yzw = cb0[81].yzw * r1.yyy;
    r1.xyz = r1.xxx ? r1.yzw : r0.xyz;
    r1.w = 1 + -cb0[99].z;
    r1.w = -cb0[99].y * r1.w + r3.z;
    r2.x = cb0[99].y * cb0[99].z + 9.99999975e-05;
    r1.w = saturate(r1.w / r2.x);
    r1.w = saturate(r1.w * -cb0[104].x + cb0[104].x);
    r1.xyz = r1.xyz + -r0.xyz;
    r1.xyz = r1.www * r1.xyz + r0.xyz;
    o0.xyz = r0.www ? r1.xyz : r0.xyz;
  } else {
    o0.xyz = r0.xyz;
  }
//  The line below controls the opacity of water, it ranges between 0-1. 0 is transparent while 1 is opaque.
  o0.w = 0.6;
//  The line below controls the color of water in the form of RGB, each value ranges between 0-1. You can uncomment the line below for a simple white color. Don't know why you would want that but know that the option is there.
//  o0.xyz = float3(1,1,1);
  return;
}
