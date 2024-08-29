// Square minimap shader
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  o0 = t0.Sample(s0_s, v1);
  return;
}
