#version 120
/* MakeUp Ultra Fast - gbuffers_skybasic.vsh
Render: Sky

Javier Garduño - GNU Lesser General Public License v3.0
*/

#include "/lib/config.glsl"

// 'Global' constants from system
uniform mat4 gbufferModelView;

// Varyings (per thread shared variables)
varying vec3 up_vec;
varying vec4 star_data;

#if TAA == 1
  #include "/src/taa_offset.glsl"
#endif

void main() {
  gl_Position = ftransform();
  #if TAA == 1
    gl_Position.xy += offsets[frame8] * gl_Position.w * texelSize;
  #endif

  up_vec = normalize(gbufferModelView[1].xyz);
  star_data = vec4(gl_Color.rgb, float(gl_Color.r == gl_Color.g && gl_Color.g == gl_Color.b && gl_Color.r > 0.0));
}
