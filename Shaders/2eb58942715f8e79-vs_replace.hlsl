// Minimap placement shader
cbuffer cb2 : register(b2)
{
  float4 cb2[21];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}

void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float3 v4 : NORMAL0,
  float4 v5 : TANGENT0, 
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD2)
{
  float4 r0,r1,r2,r3,r4;

  r0.x = cb0[7].x;
  r0.y = cb0[8].y;
  r0.xy = float2(0.5, 0.5) / r0.xy;
  r0.zw = -cb0[10].xy * r0.xy;
  r1.xy = r0.zw - r0.xy;
  r1.z = dot(v4.xy, v4.xy);
  r1.w = rsqrt(r1.z);
  r2.x = sqrt(r1.z);
  r1.zw = v4.xy * r1.ww;
  r3.x = dot(r1.zw, r1.xy);
  r2.z = dot(v5.xy, v5.xy);
  r2.w = rsqrt(r2.z);
  r2.y = sqrt(r2.z);
  r2.zw = v5.xy * r2.ww;
  r3.y = dot(r2.zw, r1.xy);
  r1.xy = r0.zw + r0.zw;
  r0.zw = r0.zw * float2(3,3) + r0.xy;
  r4.xyzw = r0.xyxy * float4(-1,1,1,-1) + r1.xyxy;
  r0.x = dot(r1.zw, r1.xy);
  r0.y = dot(r2.zw, r1.xy);
  r1.xy = min(r0.xy, r3.xy);
  r0.xy = max(r0.xy, r3.xy);
  r3.x = dot(r1.zw, r4.xy);
  r3.y = dot(r2.zw, r4.xy);
  r1.xy = min(r3.xy, r1.xy);
  r0.xy = max(r3.xy, r0.xy);
  r3.x = dot(r1.zw, r0.zw);
  r3.y = dot(r2.zw, r0.zw);
  r0.zw = min(r3.xy, r1.xy);
  r0.xy = max(r3.xy, r0.xy);
  r1.x = dot(r1.zw, r4.zw);
  r1.y = dot(r2.zw, r4.zw);
  r0.zw = min(r1.xy, r0.zw);
  r0.xy = max(r1.xy, r0.xy);
  r1.x = dot(r1.zw, v0.xy);
  r1.y = dot(r2.zw, v0.xy);
  r0.zw = max(r1.xy, r0.zw);
  r0.xy = min(r0.zw, r0.xy);
  r0.zw = r0.yy * r2.zw;
  r0.zw = r0.xx * r1.zw + r0.zw;
  r0.xy = r0.xy + -r1.xy;
  r0.xy = v3.xy * r0.xy;
  r0.xy = r0.xy / r2.xy;
  o1.xy = v2.xy + r0.xy ;
  r1.xyzw = cb1[1].xyzw * r0.wwww;
  r1.xyzw = cb1[0].xyzw * r0.zzzz + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r2.xyzw = cb2[18].xyzw * r1.yyyy;
  r2.xyzw = cb2[17].xyzw * r1.xxxx + r2.xyzw;
  r2.xyzw = cb2[19].xyzw * r1.zzzz + r2.xyzw;
  o0.xyzw = cb2[20].xyzw * r1.wwww + r2.xyzw;
  o0.xy = o0.xy + float2(-0.062 + 0.187, 0.031 - 0.385);
  return;
}
