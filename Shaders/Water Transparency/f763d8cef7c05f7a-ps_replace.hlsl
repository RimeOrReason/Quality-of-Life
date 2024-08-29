// Water cube shader
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s11_s : register(s11);

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

cbuffer cb6 : register(b6)
{
  float4 cb6[18];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[1];
}

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
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[158];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD13,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : TEXCOORD8,
  float4 v8 : TEXCOORD9,
  float4 v9 : TEXCOORD10,
  float4 v10 : TEXCOORD11,
  float3 v11 : TEXCOORD12,
  nointerpolation uint v12 : SV_InstanceID0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v12.x + asint(cb5[0].x);
  r1.y = v7.w;
  r1.z = v8.w;
  r1.x = v9.w;
  r0.yzw = cb1[5].xyz + -r1.yzx;
  r1.w = dot(r0.yzw, r0.yzw);
  r2.x = sqrt(r1.w);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r1.w = cmp(cb2[0].w < 0.5);
  r2.yzw = -r1.xyz * cb2[0].www + cb2[0].zxy;
  r3.x = dot(r2.yzw, r2.yzw);
  r3.y = r3.x * cb0[27].x + 1;
  r3.y = rcp(r3.y);
  r3.y = saturate(r3.y * 1.03999996 + -0.0399999991);
  r3.yzw = cb0[3].xyz * r3.yyy;
  r3.x = rsqrt(r3.x);
  r2.yzw = r3.xxx * r2.yzw;
  r2.yzw = r1.www ? cb2[0].zxy : r2.yzw;
  r3.xyz = r1.www ? cb0[3].xyz : r3.yzw;
  r1.w = 1 / v5.w;
  r4.xy = v5.xy * r1.ww;
  r0.x = (int)r0.x * 9;
  r1.w = -cb0[153].y + r2.x;
  r1.w = saturate(r1.w / cb0[153].z);
  r3.w = cb0[134].x + -cb0[133].w;
  r1.w = r1.w * r3.w + cb0[133].w;
  r5.xyz = cb6[r0.x+3].xyz + v10.xyz;
  r6.xy = cmp(abs(v11.xy) < float2(0.5,0.5));
  r5.yw = r6.xx ? r5.xy : r5.zy;
  r5.yw = cb0[134].yz * r5.yw;
  r5.xz = cb0[135].xy * r5.xz;
  r5.xy = r6.yy ? r5.yw : r5.xz;
  r5.zw = cb0[23].xy * r5.xy;
  r5.zw = cb1[0].yy * cb0[24].xy + r5.zw;
  r5.zw = cb0[23].zw + r5.zw;
  r6.xzw = t8.SampleLevel(s0_s, r5.zw, 0).xyz;
  r7.xyz = r6.xzw * float3(2,2,2) + float3(-1,-1,-1);
  r8.xy = cb0[26].zz * r7.xy;
  r5.zw = cb0[25].xy * r5.xy;
  r5.zw = cb1[0].yy * cb0[26].xy + r5.zw;
  r5.zw = cb0[25].zw + r5.zw;
  r6.xzw = t9.SampleLevel(s0_s, r5.zw, 0).xyz;
  r7.w = -1;
  r6.xzw = r6.xzw * float3(2,2,2) + r7.wwz;
  r6.xz = cb0[26].zz * r6.xz;
  r8.z = -1;
  r6.xzw = r8.xyz + r6.xzw;
  r3.w = dot(r6.xzw, r6.xzw);
  r3.w = rsqrt(r3.w);
  r7.xyz = -cb0[152].yzw + r1.yzx;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = sqrt(r4.w);
  r5.z = cb0[150].x * r4.w;
  r5.w = r4.w * cb0[150].x + -cb0[150].w;
  r7.x = 1 / cb0[151].x;
  r5.w = saturate(r7.x * r5.w);
  r7.x = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r7.y = (uint)cb0[150].z;
  r8.xyzw = t0.Sample(s10_s, r5.xy).xyzw;
  r7.y = dot(r8.xyzw, icb[r7.y+0].xyzw);
  r7.z = cb0[150].y * r5.z;
  r5.z = -r5.z * cb0[150].y + r7.y;
  r5.z = r5.z * 0.5 + r7.z;
  r7.yz = r6.xz * r3.ww + -r5.zz;
  r7.yz = r7.yz * float2(0.129999995,0.129999995) + r5.zz;
  r8.xy = cb1[0].yy * cb0[149].zw;
  r8.xy = r5.xy * cb0[149].xy + r8.xy;
  r8.xy = frac(r8.xy);
  r7.yz = r8.xy + r7.yz;
  r7.yzw = t0.Sample(s10_s, r7.yz).xyz;
  r5.z = -r7.x * r5.w + 1;
  r7.xyz = r7.yzw * r5.zzz;
  r4.w = -r4.w * cb0[150].x + 1;
  r8.xyz = cb0[151].yzw * r4.www;
  r7.xyz = r8.xyz * r7.xyz;
  r7.xyz = v1.xxx * r7.xyz;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = sqrt(r4.w);
  r6.xzw = r6.xzw * r3.www + r7.xyz;
  r3.w = dot(r6.xzw, r6.xzw);
  r3.w = rsqrt(r3.w);
  r6.xzw = r6.xzw * r3.www;
  r3.w = cmp(0 < cb0[109].y);
  r5.zw = v5.xy / v5.ww;
  r5.z = t1.Sample(s4_s, r5.zw).x;
  r5.w = cb1[6].z * r5.z;
  r5.z = cb1[8].z * r5.z + cb1[8].w;
  r5.z = rcp(r5.z);
  r5.z = r3.w ? r5.w : r5.z;
  r7.x = dot(v7.xyz, r6.xzw);
  r7.y = dot(v8.xyz, r6.xzw);
  r7.z = dot(v9.xyz, r6.xzw);
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r5.w);
  r7.xyz = r7.xyz * r5.www;
  r5.w = cb0[127].y + v5.w;
  r8.xy = r6.xz * r1.ww;
  r1.w = saturate(r5.z + -r5.w);
  r8.xy = r8.xy * r1.ww;
  r8.z = 0;
  r9.xyz = v5.xyw + r8.xyz;
  r9.xy = r9.xy / r9.zz;
  r1.w = t1.Sample(s4_s, r9.xy).x;
  r5.z = cb1[6].z * r1.w;
  r1.w = cb1[8].z * r1.w + cb1[8].w;
  r1.w = rcp(r1.w);
  r1.w = r3.w ? r5.z : r1.w;
  r5.z = cmp(0 != cb0[31].x);
  if (r5.z == 0) {
    r5.w = saturate(r1.w + -r5.w);
    r8.xyz = r5.www * r8.xyz + v5.xyw;
    r5.w = rcp(r8.z);
    r9.xy = r8.xy * r5.ww;
    r9.xyz = t12.Sample(s5_s, r9.xy).xyz;
    r8.xy = r8.xy / r8.zz;
    r5.w = t1.Sample(s4_s, r8.xy).x;
    r6.z = cb1[6].z * r5.w;
    r5.w = cb1[8].z * r5.w + cb1[8].w;
    r5.w = rcp(r5.w);
    r1.w = r3.w ? r6.z : r5.w;
  } else {
    r9.xyz = float3(1,1,1);
  }
  r1.w = -v5.w + r1.w;
  r3.w = cmp(cb0[65].y < 0);
  r8.xyz = r3.www ? cb0[61].wyz : cb0[65].zxy;
  r3.w = cmp(cb0[27].x == 0.000000);
  r2.yzw = r3.www ? r8.xyz : r2.yzw;
  r8.xyz = -cb0[132].xyz + cb0[131].yzw;
  r10.xyz = cb0[132].xyz + cb0[131].yzw;
  r10.xyz = cb0[133].xyz + r10.xyz;
  r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
  r11.xyz = float3(1,1,1) / r8.xyz;
  r12.xyz = r11.xyz * r10.xyz;
  r10.xyz = v6.xyz * r8.xyz + r10.xyz;
  r13.xyz = cb6[r0.x+5].xyz * r0.zzz;
  r13.xyz = cb6[r0.x+4].xyz * r0.yyy + r13.xyz;
  r13.xyz = cb6[r0.x+6].xyz * r0.www + r13.xyz;
  r8.xyz = -r13.xyz * r8.xyz;
  r13.xyz = rcp(r8.xyz);
  r14.xyz = cb0[132].xyz + -r10.xyz;
  r14.xyz = r14.xyz * r13.xyz;
  r15.xyz = cb0[131].yzw + -r10.xyz;
  r13.xyz = r15.xyz * r13.xyz;
  r15.xyz = min(r14.xyz, r13.xyz);
  r13.xyz = max(r14.xyz, r13.xyz);
  r14.xy = max(r15.xx, r15.yz);
  r3.w = max(r14.x, r14.y);
  r13.xy = min(r13.xx, r13.yz);
  r5.w = min(r13.x, r13.y);
  r3.w = max(0, r3.w);
  r8.xyz = r8.xyz * r3.www + r10.xyz;
  r3.w = r5.w + -r3.w;
  r8.xyz = r8.xyz * r11.xyz + -r12.xyz;
  r10.xyz = cb6[r0.x+1].xyz * r8.yyy;
  r8.xyw = cb6[r0.x+0].xyz * r8.xxx + r10.xyz;
  r8.xyz = cb6[r0.x+2].xyz * r8.zzz + r8.xyw;
  r8.xyz = cb6[r0.x+3].xyz + r8.xyz;
  r5.w = r6.y ? cb0[115].z : cb0[115].y;
  r6.y = r6.y ? cb0[116].x : cb0[115].w;
  r6.z = dot(-r2.zwy, r7.xyz);
  r6.z = r6.z + r6.z;
  r10.xyz = r7.xyz * -r6.zzz + -r2.zwy;
  r6.z = saturate(dot(r0.yzw, r10.xyz));
  r6.z = 0.00100000005 + r6.z;
  r6.z = min(1, r6.z);
  r6.z = log2(r6.z);
  r6.y = r6.y * r6.z;
  r6.y = exp2(r6.y);
  r3.xyz = r5.www * r3.xyz;
  r5.w = dot(r7.xyz, r0.yzw);
  r6.z = dot(cb6[r0.x+2].xyz, cb6[r0.x+2].xyz);
  r6.z = sqrt(r6.z);
  r6.z = rcp(r6.z);
  r10.xyz = cb6[r0.x+2].xyz * r6.zzz;
  r11.xyz = cb6[r0.x+1].xyz * r6.zzz;
  r12.xyz = cb6[r0.x+0].xyz * r6.zzz;
  r13.x = r12.x;
  r13.y = r11.x;
  r13.z = r10.x;
  r13.x = dot(r13.xyz, v10.xyz);
  r14.x = r12.y;
  r14.y = r11.y;
  r14.z = r10.y;
  r13.y = dot(r14.xyz, v10.xyz);
  r10.x = r12.z;
  r10.y = r11.z;
  r13.z = dot(r10.xyz, v10.xyz);
  r6.z = dot(r13.zxy, r2.yzw);
  r7.w = -cb0[121].y * r3.w;
  r7.w = 1.44269502 * r7.w;
  r7.w = exp2(r7.w);
  r7.w = 1 + -r7.w;
  r7.w = max(0, r7.w);
  r6.z = saturate(r6.z * 0.5 + 0.5);
  r6.z = cb0[127].w * r6.z;
  r8.w = cb0[157].y * cb0[128].x;
  r6.z = r6.z * cb0[157].x + r8.w;
  r6.z = 1.44269502 * r6.z;
  r6.z = exp2(r6.z);
  r6.z = 1 + -r6.z;
  r6.z = max(0, r6.z);
  r10.xy = -cb0[121].xz * r1.ww;
  r10.xy = float2(1.44269502,1.44269502) * r10.xy;
  r10.xy = exp2(r10.xy);
  r10.xy = float2(1,1) + -r10.xy;
  r10.xy = max(float2(0,0), r10.xy);
  r8.w = saturate(cb0[115].x * r1.w);
  r8.w = v1.w * r8.w;
  r8.w = cb0[128].z * r8.w;
  r9.w = log2(r7.w);
  r9.w = cb0[127].z * r9.w;
  r9.w = exp2(r9.w);
  r9.w = saturate(max(cb0[0].x, r9.w));
  o0.w = r9.w * r8.w;
  r11.x = saturate(0.0416660011 * cb0[148].x);
  r11.yzw = float3(0.800000012,0.600000024,0.400000006);
  r12.xyz = t2.Sample(s9_s, r11.xy).xyz;
  r8.w = saturate(cb0[156].x * cb0[147].w);
  r12.xyz = r12.xyz * cb0[147].zzz + -cb0[117].xyz;
  r12.xyz = r8.www * r12.xyz + cb0[117].xyz;
  r13.xyz = float3(-1,-1,-1) + r12.xyz;
  r13.xyz = r10.yyy * r13.xyz + float3(1,1,1);
  r9.xyz = r13.xyz * r9.xyz;
  r13.xyz = t2.Sample(s9_s, r11.xz).xyz;
  r13.xyz = r13.xyz * cb0[147].zzz + -cb0[120].xyz;
  r13.xyz = r8.www * r13.xyz + cb0[120].xyz;
  r9.w = cb0[157].z * cb0[118].w;
  r2.x = -cb0[119].y + r2.x;
  r2.x = saturate(r2.x / cb0[119].z);
  r10.z = -cb0[118].w * cb0[157].z + cb0[119].x;
  r2.x = r2.x * r10.z + r9.w;
  r9.w = max(9.99999975e-05, r2.x);
  r9.w = min(1, r9.w);
  r9.xyz = r9.xyz / r9.www;
  r14.xyz = cb0[118].xyz + -r9.xyz;
  r10.yzw = r10.yyy * r14.xyz + r9.xyz;
  r5.w = 1.00100005 + -abs(r5.w);
  r5.w = log2(r5.w);
  r5.w = cb0[124].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = max(0.00100000005, r5.w);
  r5.w = cb0[124].y * r5.w;
  r9.w = saturate(cb0[124].w * r1.w);
  r5.w = r9.w * r5.w;
  r5.w = saturate(r5.w * r10.x);
  r3.w = 0.333999991 * r3.w;
  r14.xyz = r3.www * -r0.yzw;
  r15.xyz = float3(-0,-1,-0) * r2.yzw;
  r15.xyz = r2.zwy * float3(-0,-0,-1) + -r15.xyz;
  r16.xyz = r15.xyz * -r2.yzw;
  r2.yzw = -r2.wyz * r15.yzx + -r16.xyz;
  r15.xw = cb1[0].yy * float2(32.6650009,11.8149996) + v0.xy;
  r3.w = dot(r15.xw, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 0.5 + 0.75;
  r14.xyz = r14.xyz * r3.www;
  r16.x = dot(r15.zy, r14.xz);
  r16.y = dot(r2.yzw, r14.xyz);
  r14.x = dot(r15.zy, r8.xz);
  r14.y = dot(r2.yzw, r8.xyz);
  r8.x = dot(r15.zy, cb6[r0.x+3].xz);
  r8.y = dot(r2.yzw, cb6[r0.x+3].xyz);
  r2.yz = r14.xy + -r8.xy;
  r0.x = cb1[0].y * cb0[154].z;
  r0.x = frac(r0.x);
  r6.xw = r6.xw * cb0[154].ww + r0.xx;
  r2.yz = r2.yz + r16.xy;
  r8.xy = cb0[154].yy * r2.yz;
  r8.xy = r8.xy * cb0[156].zz + r6.xw;
  r0.x = t3.Sample(s11_s, r8.xy).x;
  r2.w = cmp(r0.x < 1);
  if (r2.w != 0) {
    r2.yz = r2.yz + r16.xy;
    r8.xy = cb0[154].yy * r2.yz;
    r8.xy = r8.xy * cb0[156].zz + r6.xw;
    r2.w = t3.Sample(s11_s, r8.xy).x;
    r0.x = r2.w + r0.x;
    r2.w = cmp(r0.x >= 1);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r2.yz = r2.yz + r16.xy;
    r2.yz = cb0[154].yy * r2.yz;
    r2.yz = r2.yz * cb0[156].zz + r6.xw;
    r2.y = t3.Sample(s11_s, r2.yz).x;
    r0.x = r2.y + r0.x;
  }
  r0.x = saturate(r0.x);
  r0.x = 0.00100000005 + r0.x;
  r2.y = cb0[156].y * cb0[153].w;
  r0.x = log2(r0.x);
  r0.x = r2.y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb0[154].x * r0.x;
  r0.x = cb0[156].w * r0.x;
  r0.x = 0.333999991 * r0.x;
  r2.y = 1 + -r6.z;
  r0.x = saturate(r2.y * r0.x);
  r0.x = 1 + -r0.x;
  r2.yzw = r13.xyz + -r10.yzw;
  r2.yzw = r7.www * r2.yzw + r10.yzw;
  r2.yzw = r2.yzw + -r12.xyz;
  r2.yzw = r0.xxx * r2.yzw + r12.xyz;
  r6.xzw = v8.xyz * r0.zzz;
  r6.xzw = v7.xyz * r0.yyy + r6.xzw;
  r6.xzw = v9.xyz * r0.www + r6.xzw;
  r0.x = rcp(r6.w);
  r6.xz = r6.xz * r0.xx;
  r0.x = (uint)cb0[137].x;
  r8.xy = cb1[0].yy * cb0[138].zw;
  r8.xy = frac(r8.xy);
  r8.xy = r5.xy * cb0[138].xy + r8.xy;
  r12.xyzw = t4.Sample(s8_s, r8.xy).xyzw;
  r0.x = dot(r12.xyzw, icb[r0.x+0].xyzw);
  r0.x = r0.x * 2 + -1;
  r0.x = r0.x * cb0[137].y + cb0[141].x;
  r5.xy = r6.xz * r0.xx + r5.xy;
  r0.x = (uint)cb0[139].y;
  r6.xz = cb1[0].yy * cb0[140].zw;
  r6.xz = frac(r6.xz);
  r5.xy = r5.xy * cb0[140].xy + r6.xz;
  r12.xyzw = t4.Sample(s8_s, r5.xy).xyzw;
  r0.x = dot(r12.xyzw, icb[r0.x+0].xyzw);
  r0.x = r0.x * v1.z + -cb0[141].y;
  r3.w = cb0[141].z + -cb0[141].y;
  r0.x = saturate(r0.x / r3.w);
  r6.xzw = t2.Sample(s9_s, r11.xw).xyz;
  r6.xzw = r6.xzw * cb0[147].zzz + -cb0[142].xyz;
  r6.xzw = r8.www * r6.xzw + cb0[142].xyz;
  r11.y = 0.200000003;
  r8.xyz = t2.Sample(s9_s, r11.xy).xyz;
  r8.xyz = r8.xyz * cb0[147].zzz + -cb0[146].xyz;
  r8.xyz = r8.www * r8.xyz + cb0[146].xyz;
  r8.xyz = r8.xyz + -r6.xzw;
  r6.xzw = r0.xxx * r8.xyz + r6.xzw;
  r0.x = saturate(cb0[139].x);
  r6.xzw = r6.xzw + -r2.yzw;
  r2.yzw = r0.xxx * r6.xzw + r2.yzw;
  r2.yzw = r2.yzw + -r9.xyz;
  r2.yzw = r10.xxx * r2.yzw + r9.xyz;
  r0.x = dot(-r0.yzw, r7.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r7.xyz * -r0.xxx + -r0.yzw;
  r0.w = abs(r0.y);
  r0.xyzw = t5.SampleLevel(s7_s, r0.xwz, 0).xyzw;
  r0.w = -1 + r0.w;
  r0.w = cb0[122].w * r0.w + 1;
  r0.w = log2(r0.w);
  r0.w = cb0[122].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb0[122].x * r0.w;
  r6.xzw = r0.www * r0.xyz;
  if (r5.z == 0) {
    r3.w = cmp(0.5 < v11.y);
    if (r3.w != 0) {
      r1.w = saturate(cb0[110].x * r1.w);
      r1.w = cb0[124].x * r1.w;
      r5.xy = r7.xz * r1.ww + r4.xy;
      r8.xyzw = t6.Sample(s6_s, r5.xy).xyzw;
      r1.w = r8.w * r7.y;
      r1.w = saturate(cb0[110].y * r1.w);
      r0.xyz = -r0.www * r0.xyz + r8.xyz;
      r6.xzw = r1.www * r0.xyz + r6.xzw;
    }
  }
  r0.xyz = r6.xzw * cb0[155].xyz + -r2.yzw;
  r0.xyz = r5.www * r0.xyz + r2.yzw;
  r0.xyz = r3.xyz * r6.yyy + r0.xyz;
  r2.yzw = r4.www * r0.xyz;
  r0.xyz = r2.yzw * cb0[152].xxx + r0.xyz;
  r0.xyz = r0.xyz * r2.xxx;
  r2.xyz = -cb1[5].xyz + r1.yzx;
  r3.x = cb3[9].z;
  r3.y = cb3[10].z;
  r3.z = cb3[11].z;
  r0.w = dot(r2.xyz, r3.xyz);
  r1.w = cmp(0.00999999978 < cb0[94].w);
  if (r1.w != 0) {
    r1.w = cmp(cb0[99].y < 0.5);
    if (r1.w != 0) {
      r3.xyz = -cb0[94].xyz + r1.yzx;
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = sqrt(r1.w);
      r1.w = saturate(r1.w * cb0[96].z + cb0[96].w);
      r1.w = 1 + -r1.w;
      r1.w = r1.w * r1.w;
      r2.w = cmp(cb0[81].z == 1.000000);
      r3.x = cmp(r3.y < 0);
      r2.w = r2.w ? r3.x : 0;
      r1.w = r2.w ? 0 : r1.w;
    } else {
      r2.w = -cb0[94].y + v8.w;
      r3.x = 1 / cb0[94].w;
      r2.w = saturate(r3.x * r2.w);
      r3.x = r2.w * -2 + 3;
      r2.w = r2.w * r2.w;
      r1.w = r3.x * r2.w;
    }
    r1.w = saturate(cb0[99].z * r1.w);
    r2.w = cmp(cb0[99].x >= 0.0500000007);
    r2.w = r2.w ? 1.000000 : 0;
    r2.w = r2.w * r1.w;
    r3.x = cmp(0.949999988 >= cb0[99].x);
    r3.x = r3.x ? 1.000000 : 0;
    r1.w = r3.x * r1.w;
  } else {
    r2.w = 0;
    r1.w = 0;
  }
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r3.x);
  r3.y = saturate(r3.x * cb0[86].z + cb0[86].w);
  r3.z = saturate(r3.x * cb0[97].z + cb0[97].w);
  r3.z = r3.z + -r3.y;
  r3.y = r2.w * r3.z + r3.y;
  r3.z = 2 + -r3.y;
  r5.x = r3.y * r3.z;
  r3.y = dot(cb0[93].xyzw, float4(1,1,1,1));
  r3.y = cmp(0.0500000007 < r3.y);
  if (r3.y != 0) {
    r1.xyz = -cb0[49].zxy + r1.xyz;
    r3.y = dot(r1.xyz, r1.xyz);
    r3.y = rsqrt(r3.y);
    r1.xyz = r3.yyy * r1.xyz;
    r3.y = abs(r1.y) + abs(r1.z);
    r3.y = r3.y + abs(r1.x);
    r1.xyz = r1.xyz / r3.yyy;
    r3.yz = float2(1,1) + -abs(r1.zy);
    r6.xyz = cmp(r1.xyz >= float3(0,0,0));
    r6.yz = r6.yz ? float2(1,1) : float2(-1,-1);
    r3.yz = r6.yz * r3.yz;
    r1.xy = r6.xx ? r1.yz : r3.yz;
    r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r1.xyz = t10.SampleLevel(s1_s, r1.xy, 0).xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r2.x = dot(r2.xz, r2.xz);
  r2.x = sqrt(r2.x);
  r5.y = saturate(r2.x * cb0[88].x + cb0[88].y);
  r6.y = saturate(cb1[5].y * cb0[88].z + cb0[88].w);
  r2.z = 0.999899983 * cb1[6].z;
  r0.w = cmp(-r0.w >= r2.z);
  r6.x = cb0[85].w * r5.x;
  r6.xy = r0.ww ? r6.xy : r5.xy;
  r0.w = -cb4[0].w + cb0[98].w;
  r0.w = r2.w * r0.w + cb4[0].w;
  r2.z = max(9.99999975e-05, r6.x);
  r2.z = log2(r2.z);
  r0.w = r2.z * r0.w;
  r0.w = exp2(r0.w);
  r2.z = cb0[92].x * cb0[84].w;
  r0.w = min(r2.z, r0.w);
  r0.w = min(1, r0.w);
  r2.z = saturate(v8.w * cb0[86].x + cb0[86].y);
  r3.y = 2 + -r2.z;
  r2.z = r3.y * r2.z;
  r3.yzw = r2.zzz * cb0[85].xyz + cb0[84].xyz;
  r5.xyw = cb0[98].xyz + -r3.yzw;
  r3.yzw = r2.www * r5.xyw + r3.yzw;
  r5.xyw = -r3.yzw + r1.xyz;
  r3.yzw = cb0[93].xxx * r5.xyw + r3.yzw;
  r2.z = -cb0[83].w + r3.x;
  r2.z = saturate(cb0[87].w * r2.z);
  r5.xyw = -cb0[87].xyz + r1.xyz;
  r5.xyw = cb0[93].yyy * r5.xyw + cb0[87].xyz;
  r5.xyw = r5.xyw + -r3.yzw;
  r3.yzw = r2.zzz * r5.xyw + r3.yzw;
  r6.z = saturate(r2.x * cb0[90].z + cb0[90].w);
  r2.x = cb0[95].w + -cb0[82].y;
  r2.x = r1.w * r2.x + cb0[82].y;
  r2.zw = cb0[82].xz * r2.yy;
  r5.xy = cmp(float2(0.00999999978,0.00999999978) < abs(r2.zw));
  r6.xw = -cb0[82].xz * r2.yy + cb0[91].yw;
  r6.xw = min(float2(80,80), r6.xw);
  r6.xw = float2(1.44269502,1.44269502) * r6.xw;
  r6.xw = exp2(r6.xw);
  r6.xw = cb0[91].xz + -r6.xw;
  r2.yz = r6.xw / r2.zw;
  r2.yz = r5.xy ? r2.yz : cb0[91].xz;
  r2.x = r3.x * r2.x;
  r2.x = -r2.y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.y = saturate(r3.x * cb0[83].x + cb0[83].y);
  r2.w = saturate(r3.x * cb0[96].x + cb0[96].y);
  r2.w = r2.w + -r2.y;
  r2.y = r1.w * r2.w + r2.y;
  r2.w = 2 + -r2.y;
  r4.w = cb0[97].x + -cb0[83].z;
  r4.w = r1.w * r4.w + cb0[83].z;
  r2.y = r2.y * r2.w + -1;
  r2.y = r4.w * r2.y + 1;
  r2.x = r2.x * r2.y;
  r2.x = min(cb0[84].w, r2.x);
  r2.w = cb0[82].w * r3.x;
  r2.z = -r2.z * r2.w;
  r2.z = exp2(r2.z);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r2.w = saturate(r3.x * cb0[90].x + cb0[90].y);
  r3.x = 2 + -r2.w;
  r2.w = r3.x * r2.w;
  r2.z = r2.z * r2.w;
  r2.y = min(cb0[92].y, r2.z);
  r2.zw = r2.xy * r6.yz;
  r5.xyw = -cb4[0].xyz + cb0[95].xyz;
  r5.xyw = r1.www * r5.xyw + cb4[0].xyz;
  r3.x = cb0[97].y + -cb0[93].z;
  r1.w = r1.w * r3.x + cb0[93].z;
  r7.xyz = -r5.xyw + r1.xyz;
  r5.xyw = r1.www * r7.xyz + r5.xyw;
  r7.xyz = r3.yzw * r0.www;
  r3.xyz = -r3.yzw * r0.www + r5.xyw;
  r3.xyz = r2.zzz * r3.xyz + r7.xyz;
  r0.w = 1 + -r0.w;
  r2.xy = -r2.xy * r6.yz + float2(1,1);
  r0.w = r2.x * r0.w;
  r1.xyz = -cb0[89].xyz + r1.xyz;
  r1.xyz = cb0[93].www * r1.xyz + cb0[89].xyz;
  r1.xyz = r1.xyz * r2.www + r3.xyz;
  r0.w = r0.w * r2.y;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  if (r5.z == 0) {
    r0.w = cmp(v5.w < 5);
    r1.x = 0.0250000004 * v5.w;
    r1.y = log2(v5.w);
    r1.y = r1.y * 0.150515005 + -0.34948501;
    r1.y = r1.y * 0.875 + 0.125;
    r4.z = r0.w ? r1.x : r1.y;
    r1.xyzw = t7.Sample(s2_s, r4.xyz).xyzw;
    r1.xyz = r1.www * r0.xyz + r1.xyz;
    r0.w = t11.SampleLevel(s3_s, r4.xy, 0).x;
    o0.xyz = r0.www * cb0[108].xyz + r1.xyz;
  } else {
    o0.xyz = r0.xyz;
  }
//  The line below controls the opacity of water, it ranges between 0-1. 0 is transparent while 1 is opaque.
  o0.w = 0.6;
//  The line below controls the color of water in the form of RGB, each value ranges between 0-1. You can uncomment the line below for a simple white color. Don't know why you would want that but know that the option is there.
//  o0.xyz = float3(1,1,1);
  return;
}
