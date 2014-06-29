uniform vec2 color_texture_sz;
uniform vec2 color_texture_pow2_sz;

varying vec2 tc;
varying vec4 xyp_1_2_3;
varying vec4 xyp_5_10_15;
varying vec4 xyp_6_7_8;
varying vec4 xyp_9_14_9;
varying vec4 xyp_11_12_13;
varying vec4 xyp_16_17_18;
varying vec4 xyp_21_22_23;
void main() {
gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
float x = 1.0 / color_texture_sz.x;
float y = 1.0 / color_texture_sz.y;
/*
Mask for algorhithm
+-----+-----+-----+-----+-----+
| | 1 | 2 | 3 | |
+-----+-----+-----+-----+-----+
| 5 | 6 | 7 | 8 | 9 |
+-----+-----+-----+-----+-----+
| 10 | 11 | 12 | 13 | 14 |
+-----+-----+-----+-----+-----+
| 15 | 16 | 17 | 18 | 19 |
+-----+-----+-----+-----+-----+
| | 21 | 22 | 23 | |
+-----+-----+-----+-----+-----+
*/
tc = gl_MultiTexCoord0.xy;
xyp_1_2_3 = tc.xxxy + vec4( -x, 0.0, x, -2.0 * y);
xyp_6_7_8 = tc.xxxy + vec4( -x, 0.0, x, -y);
xyp_11_12_13 = tc.xxxy + vec4( -x, 0.0, x, 0.0);
xyp_16_17_18 = tc.xxxy + vec4( -x, 0.0, x, y);
xyp_21_22_23 = tc.xxxy + vec4( -x, 0.0, x, 2.0 * y);
xyp_5_10_15 = tc.xyyy + vec4(-2.0 * x, -y, 0.0, y);
xyp_9_14_9 = tc.xyyy + vec4( 2.0 * x, -y, 0.0, y);
}
