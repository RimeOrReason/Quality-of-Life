// Wind barrier shader.
// This shader override turns them into cyan cylinders, allowing you to see how tall they actually are; so that you can go above and into them.

void main(out float4 o0 : SV_Target0) {
// Each number below ranges from 0 to 1 and all 4 of them combined describe the RGBA color of the barrier. The color I've picked is #3ab4d6 with an alpha of 0.08 as I couldn't find the original color.
  o0.xyzw = float4(0.22745098039, 0.70588235294, 0.83921568627, 0.08);  
  return;
}
