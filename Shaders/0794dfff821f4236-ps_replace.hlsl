// Floating crystal platform shader
// Makes them visible without having to go onto them, one down-side is that they are visible even when they have no collision.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[447];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(float2(0,0) != cb0[423].zx);
  if (r0.x != 0) {
    r0.xz = v2.xy * cb0[424].xy + cb0[424].zw;
    r1.x = cb1[0].y * cb0[430].y;
    r1.y = cb1[0].y * cb0[435].x;
    r1.xy = v6.xy * cb0[430].xx + r1.xy;
    r0.xz = r1.xy + r0.xz;
    r0.xzw = t0.Sample(s6_s, r0.xz).xyz;
    r0.xzw = r0.xzw * float3(2,2,2) + float3(-1,-1,-1);
    r0.xz = cb0[425].xx * r0.xz;
    r1.x = v9.x;
    r1.y = v10.x;
    r1.z = v4.x;
    r1.x = dot(r1.xyz, r0.xzw);
    r2.x = v9.y;
    r2.y = v10.y;
    r2.z = v4.y;
    r1.y = dot(r2.xyz, r0.xzw);
    r2.x = v9.z;
    r2.y = v10.z;
    r2.z = v4.z;
    r1.z = dot(r2.xyz, r0.xzw);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = rsqrt(r0.x);
    r0.xzw = r1.xyz * r0.xxx;
  } else {
    r0.xzw = v4.xyz;
  }
  r1.xy = v2.zw;
  r1.z = v6.z;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = abs(r1.x) + abs(r1.z);
  r1.w = rcp(r1.w);
  r1.x = r1.x * r1.w;
  r1.x = r1.x * 0.25 + 0.25;
  r1.z = cmp(0 < r1.z);
  r1.x = r1.z ? -r1.x : r1.x;
  r2.x = 0.5 + r1.x;
  r2.y = r1.y * 0.5 + 0.5;
  r1.x = rcp(v5.w);
  r1.xy = v5.xy * r1.xx;
  r1.z = cmp(0 != cb0[138].x);
  if (r1.z != 0) {
    r3.x = cb3[0].x;
    r3.y = cb3[1].x;
    r3.z = cb3[2].x;
    r1.z = dot(r3.xyz, r3.xyz);
    r3.x = cb3[0].y;
    r3.y = cb3[1].y;
    r3.z = cb3[2].y;
    r1.w = dot(r3.xyz, r3.xyz);
    r1.zw = sqrt(r1.zw);
    r1.z = r1.z + r1.w;
    r3.x = cb3[0].z;
    r3.y = cb3[1].z;
    r3.z = cb3[2].z;
    r1.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r1.w);
    r1.z = r1.z + r1.w;
    r1.z = 0.330000013 * r1.z;
  } else {
    r1.z = 1;
  }
  r3.xyzw = cmp(cb0[183].xxxx == float4(0,1,2,3));
  r2.zw = r3.ww ? float2(0,0) : v2.xy;
  r2.zw = r3.zz ? r1.xy : r2.zw;
  r2.zw = r3.yy ? r2.xy : r2.zw;
  r2.zw = r3.xx ? v2.xy : r2.zw;
  r1.zw = r2.zw * r1.zz;
  r1.zw = r1.zw * cb0[137].xy + cb0[137].zw;
  r3.x = cb1[0].y * cb0[143].z + cb0[153].x;
  r3.y = cb1[0].y * cb0[148].x + cb0[158].x;
  r2.zw = frac(r3.xy);
  r1.zw = r2.zw + r1.zw;
  r1.zw = v6.xy * cb0[143].xy + r1.zw;
  r3.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r4.xyzw = cmp(cb0[138].yyyy == float4(1,2,3,4));
  r5.xyz = r4.www ? r3.www : r3.xyz;
  r5.xyz = r4.zzz ? r3.zzz : r5.xyz;
  r4.yzw = r4.yyy ? r3.yyy : r5.xyz;
  r4.xyz = r4.xxx ? r3.xxx : r4.yzw;
  r5.xyz = cmp(cb0[138].zzz == float3(0,1,2));
  r1.z = r5.z ? r3.y : r3.z;
  r1.z = r5.y ? r3.x : r1.z;
  r1.z = r5.x ? r3.w : r1.z;
  r1.w = cb0[163].w * cb0[138].w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(cb0[138].y != 0.000000);
  r2.z = saturate(cb0[178].x * r4.x);
  r3.xyz = -cb0[173].xyz + cb0[168].xyz;
  r3.xyz = r2.zzz * r3.xyz + cb0[173].xyz;
  r3.xyz = r1.www ? r3.xyz : r4.xyz;
  r4.xyz = cb0[163].xyz * r3.xyz;
  r1.w = cmp(0 != cb0[183].z);
  r1.w = r1.w ? 0 : 1;
  r5.x = dot(v9.xyz, v3.xyz);
  r5.y = dot(v10.xyz, v3.xyz);
  r2.z = dot(r0.xzw, v3.xyz);
  r2.w = rcp(r2.z);
  r5.xy = r5.xy * r2.ww;
  r6.xyz = cb1[5].xyz + -v8.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r2.w);
  r7.xyzw = cmp(cb0[248].wwww == float4(0,1,2,3));
  r5.zw = r7.ww ? v7.zw : 0;
  r5.zw = r7.zz ? v7.xy : r5.zw;
  r5.zw = r7.yy ? v6.xy : r5.zw;
  r5.zw = r7.xx ? v2.xy : r5.zw;
  r5.zw = r5.zw * cb0[251].xy + cb0[251].zw;
  r4.w = cmp(0 != cb0[257].x);
  if (r4.w != 0) {
    r7.xy = cb1[0].yy * cb0[265].xy;
    r7.xy = frac(r7.xy);
    r4.w = (uint)cb0[260].y;
    r7.xy = r7.xy + r5.zw;
    r7.xyzw = t3.Sample(s3_s, r7.xy).xyzw;
    r4.w = dot(r7.xyzw, icb[r4.w+0].xyzw);
    r4.w = cb0[260].z * r4.w;
    r7.xy = cb1[0].yy * cb0[258].xy;
    r7.zw = cb1[0].yy * cb0[259].xy;
    r7.xyzw = frac(r7.xyzw);
    r7.xyzw = r4.wwww * cb0[260].xxxx + r7.xyzw;
  } else {
    r7.xyzw = float4(0,0,0,0);
  }
  r4.w = cb0[282].x + -r3.w;
  r4.w = saturate(0.100000001 * r4.w);
  r3.w = cb0[308].x + -r3.w;
  r3.w = saturate(0.100000001 * r3.w);
  r6.w = cmp(0 < r4.w);
  if (r6.w != 0) {
    r6.w = (uint)cb0[266].x;
    r8.xy = cb0[287].xx * r5.xy;
    r8.xy = r8.xy * r1.ww;
    r8.xy = r5.zw * cb0[277].xx + r8.xy;
    r7.xy = r8.xy + r7.xy;
    r8.xyzw = t3.Sample(s3_s, r7.xy).xyzw;
    r6.w = dot(r8.xyzw, icb[r6.w+0].xyzw);
    r8.xyz = -cb0[272].xyz + cb0[267].xyz;
    r8.xyz = r6.www * r8.xyz + cb0[272].xyz;
    r8.xyz = r8.xyz * r4.www;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r4.w = cmp(0 < r3.w);
  if (r4.w != 0) {
    r4.w = (uint)cb0[292].x;
    r5.xy = cb0[313].xx * r5.xy;
    r5.xy = r5.xy * r1.ww;
    r5.xy = r5.zw * cb0[303].xx + r5.xy;
    r5.xy = r5.xy + r7.zw;
    r5.xyzw = t3.Sample(s3_s, r5.xy).xyzw;
    r1.w = dot(r5.xyzw, icb[r4.w+0].xyzw);
    r5.xyz = -cb0[298].xyz + cb0[293].xyz;
    r5.xyz = r1.www * r5.xyz + cb0[298].xyz;
    r5.xyz = r5.xyz * r3.www;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r1.w = cmp(cb0[248].z == 2.000000);
  if (r1.w == 0) {
    r7.xyzw = cmp(cb0[248].xxxz == float4(0,1,2,0));
    r1.xy = r7.zz ? r1.xy : v2.xy;
    r1.xy = r7.yy ? r2.xy : r1.xy;
    r1.xy = r7.xx ? v2.xy : r1.xy;
    r1.xy = r1.xy * cb0[222].xy + cb0[222].zw;
    r2.x = cb1[0].y * cb0[233].z;
    r2.y = cb1[0].y * cb0[238].x;
    r2.xy = frac(r2.xy);
    r1.xy = r2.xy + r1.xy;
    r9.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
    r10.xyzw = cmp(cb0[233].yyyy == float4(0,1,2,3));
    r1.x = r10.w ? r9.w : 0;
    r1.x = r10.z ? r9.z : r1.x;
    r1.x = r10.y ? r9.y : r1.x;
    r1.x = r10.x ? r9.x : r1.x;
    r1.y = cb0[243].x * r1.x;
    r1.w = cmp(0 != cb0[233].x);
    r1.x = r1.x * cb0[243].x + 1;
    r1.x = r1.w ? r1.x : r1.y;
    r1.x = cb0[252].x * r1.x;
    r1.y = r2.z * cb0[323].x + -cb0[323].x;
    r1.y = exp2(r1.y);
    r1.y = r2.z * r1.y;
    r1.y = r1.x * r1.y + -r1.x;
    r1.x = cb0[318].x * r1.y + r1.x;
    r5.xyz = r8.xyz + r5.xyz;
    r1.y = saturate(r1.x);
    r3.xyz = -r3.xyz * cb0[163].xyz + r5.xyz;
    r3.xyz = r1.yyy * r3.xyz + r4.xyz;
    r1.xyw = r5.xyz * r1.xxx + r4.xyz;
    r4.xyz = r7.www ? r3.xyz : r1.xyw;
  }
  r1.x = (uint)cb0[328].y;
  r1.x = dot(v1.xyzw, icb[r1.x+0].xyzw);
  r1.x = saturate(cb0[328].w * r1.x);
  r1.y = cmp(cb0[328].z == 0.000000);
  if (r1.y != 0) {
    r3.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r1.xxx * r3.xyz + r4.xyz;
  } else {
    r1.yw = cmp(cb0[328].zz == float2(1,2));
    r5.xyz = cmp(float3(0.5,0.5,0.5) >= r4.xyz);
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r7.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = r5.xyz * r7.xyz + float3(1,1,1);
    r5.xyz = r5.xyz + -r4.xyz;
    r5.xyz = r1.xxx * r5.xyz + r4.xyz;
    r7.xyz = float3(1,1,1) + -r4.xyz;
    r7.xyz = r1.xxx * r7.xyz + r4.xyz;
    r5.xyz = r1.www ? r5.xyz : r7.xyz;
    r3.xyz = r1.yyy ? r4.xyz : r5.xyz;
  }
  r1.x = cmp(cb0[341].y == 0.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb0[341].x == 1.000000);
    r1.xyw = r1.xxx ? -v3.xyz : v3.xyz;
    r2.x = dot(r1.xyw, r0.xzw);
    r2.x = r2.x + r2.x;
    r1.xyw = r0.xzw * -r2.xxx + r1.xyw;
  } else {
    r4.xyz = cb3[5].xyz * v8.yyy;
    r4.xyz = cb3[4].xyz * v8.xxx + r4.xyz;
    r4.xyz = cb3[6].xyz * v8.zzz + r4.xyz;
    r4.xyz = cb3[7].xyz + r4.xyz;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r2.x = rsqrt(r2.w);
    r2.xyw = r6.xyz * r2.xxx;
    r5.xyz = cb3[5].xyz * -r2.yyy;
    r5.xyz = cb3[4].xyz * -r2.xxx + r5.xyz;
    r2.xyw = cb3[6].xyz * -r2.www + r5.xyz;
    r3.w = dot(r2.xyw, r2.xyw);
    r3.w = rsqrt(r3.w);
    r2.xyw = r3.www * r2.xyw;
    r5.xyz = cb0[342].xyz + -r4.xyz;
    r3.w = dot(r5.xyz, r2.xyw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = -cb0[343].x * cb0[343].x + r4.w;
    r4.w = r3.w * r3.w + -r4.w;
    r5.x = cmp(r4.w >= 0);
    r4.w = sqrt(r4.w);
    r3.w = r4.w + r3.w;
    r2.xyw = r2.xyw * r3.www + r4.xyz;
    r2.xyw = -cb0[342].xyz + r2.xyw;
    r3.w = dot(r2.xyw, r2.xyw);
    r3.w = rsqrt(r3.w);
    r2.xyw = r3.www * r2.xyw;
    r1.xyw = r5.xxx ? r2.xyw : float3(0,1,0);
  }
  r1.xyw = t4.Sample(s4_s, r1.xyw).xyz;
  r1.xyw = r1.xyw * cb0[336].xxx + r3.xyz;
  r2.xyw = r0.xzw * cb0[363].xxx + cb2[0].xyz;
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = rsqrt(r3.x);
  r2.xyw = r3.xxx * r2.xyw;
  r2.x = saturate(dot(v3.xyz, -r2.xyw));
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = log2(r2.x);
  r2.x = cb0[368].x * r2.x;
  r2.x = exp2(r2.x);
  r2.yw = v2.xy * cb0[351].xy + cb0[351].zw;
  r3.xy = cb1[0].yy * cb0[352].xy;
  r3.xy = frac(r3.xy);
  r2.yw = r3.xy + r2.yw;
  r2.y = t5.Sample(s5_s, r2.yw).x;
  r2.y = cb0[353].x * r2.y;
  r3.xyz = cb0[358].xyz * r1.xyw;
  r2.x = r2.x * cb0[373].x + cb0[378].x;
  r3.xyz = r3.xyz * r2.xxx;
  r2.xyw = r3.xyz * r2.yyy;
  r1.xyw = r2.xyw * cb0[383].xxx + r1.xyw;
  r2.x = dot(cb2[0].xyz, -v3.xyz);
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = log2(r2.x);
  r2.x = cb0[388].x * r2.x;
  r2.x = exp2(r2.x);
  r2.y = cmp(0 != cb0[393].x);
  r3.xyz = r2.yyy ? cb0[2].xyz : float3(1,1,1);
  r2.xyw = r3.xyz * r2.xxx;
  r2.xyw = cb0[394].xyz * r2.xyw;
  r3.x = v3.y * -v3.y + 1;
  r1.xyw = r2.xyw * r3.xxx + r1.xyw;
  r2.x = min(1, abs(r2.z));
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = log2(r2.x);
  r2.x = cb0[399].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(cb0[404].x * r2.x);
  r2.yzw = cmp(float3(0,0,0) != cb0[414].yxz);
  r3.x = 1 + -r2.x;
  r2.x = r2.y ? r3.x : r2.x;
  r3.xyz = cb0[409].xyz + r1.xyw;
  r4.xyz = cb0[409].xyz * r1.xyw;
  r3.xyz = r2.zzz ? r3.xyz : r4.xyz;
  r3.xyz = r3.xyz + -r1.xyw;
  r1.xyw = r2.xxx * r3.xyz + r1.xyw;
  r1.z = r2.w ? r2.x : r1.z;
  r2.xyzw = cmp(float4(0,0,0,0) != cb0[16].yyyz);
  r2.xyzw = r2.xyzw ? v1.xyzw : float4(1,1,1,1);
  r1.xyw = r2.xyz * r1.xyw;
  r1.xyw = cb0[17].xyz * r1.xyw;
  r2.x = cmp(0 != cb0[27].z);
  r2.y = saturate(v3.w * 0.300000012 + -0.699999988);
  r2.x = r2.x ? r2.y : 1;
  r1.z = r2.x * r1.z;
  r1.z = r1.z * r2.w;
  r1.z = saturate(cb0[22].x * r1.z);
  r2.xz = float2(0.0416660011,0.0416660011) * cb0[66].ww;
  r2.y = 0.5;
  r3.xyz = t6.Sample(s0_s, r2.xy).xyz;
  r3.xyz = r3.xyz * r1.xyw;
  r2.w = 0.0078125 * cb0[440].x;
  r1.x = t7.Sample(s0_s, r2.zw).x;
  r1.x = r1.x * cb0[440].y + cb0[440].z;
  r1.x = -1 + r1.x;
  r1.x = cb0[441].x * r1.x + 1;
  r1.x = r1.z * r1.x + -0.0399999991;
  r1.y = cmp(r1.x < 0.949999988);
  if (r1.y != 0) {
    r1.yz = v5.yx / v5.ww;
    r1.yz = cb1[7].yx * r1.yz;
    r1.yz = float2(0.25,0.25) * r1.yz;
    r2.xy = cmp(r1.yz >= -r1.yz);
    r1.yz = frac(abs(r1.yz));
    r1.yz = r2.xy ? r1.yz : -r1.yz;
    r1.yz = float2(4,4) * r1.yz;
    r1.yz = (uint2)r1.yz;
    r2.x = dot(cb0[9].xyzw, icb[r1.z+0].xyzw);
    r2.y = dot(cb0[10].xyzw, icb[r1.z+0].xyzw);
    r2.z = dot(cb0[11].xyzw, icb[r1.z+0].xyzw);
    r2.w = dot(cb0[12].xyzw, icb[r1.z+0].xyzw);
    r1.y = dot(r2.xyzw, icb[r1.y+0].xyzw);
    r1.x = r1.x * 17 + -r1.y;
    r1.x = -0.00999999978 + r1.x;
    r1.x = cmp(r1.x < 0);
    // Uncomment the line below to make them act like normal
    // if (r1.x != 0) discard;  
  }
  r1.x = max(r3.y, r3.z);
  r1.w = max(r3.x, r1.x);
  r2.x = cmp(1 < r1.w);
  r1.xyz = r3.xyz / r1.www;
  r3.w = 1;
  r1.xyzw = r2.xxxx ? r1.xyzw : r3.xyzw;
  r1.w = saturate(0.0500000007 * r1.w);
  r1.w = sqrt(r1.w);
  r1.w = cb0[27].x * r1.w;
  o1.w = saturate(1 + -cb0[446].x);
  o1.xyz = cb0[27].yyy * r3.xyz;
  o0.xyz = r0.xzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = 0.00392156886 * cb0[423].y;
  o2.z = r0.y ? r0.x : r1.z;
  o0.w = 0;
  o2.xyw = r1.xyw;
  o3.x = 0.0509803928;
  o4.x = r1.w;
  o5.x = 0;
  return;
}
