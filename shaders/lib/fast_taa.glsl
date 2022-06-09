/* MakeUp - fast_taa.glsl
Temporal antialiasing functions.

Javier Garduño - GNU Lesser General Public License v3.0
*/

vec3 fast_taa(vec3 current_color, vec2 texcoord_past, vec2 velocity) {
  // Verificamos si proyección queda fuera de la pantalla actual
  if (clamp(texcoord_past, 0.0, 1.0) != texcoord_past) {
    return current_color;
  } else {
    vec3 neighbourhood[5];

    neighbourhood[0] = texture(colortex1, texcoord + vec2(-pixel_size_x, -pixel_size_y)).rgb;
    neighbourhood[1] = texture(colortex1, texcoord + vec2(pixel_size_x, -pixel_size_y)).rgb;
    neighbourhood[2] = current_color;
    neighbourhood[3] = texture(colortex1, texcoord + vec2(-pixel_size_x, pixel_size_y)).rgb;
    neighbourhood[4] = texture(colortex1, texcoord + vec2(pixel_size_x, pixel_size_y)).rgb;

    vec3 nmin = neighbourhood[0];
    vec3 nmax = nmin;
    for(int i = 1; i < 5; ++i) {
      nmin = min(nmin, neighbourhood[i]);
      nmax = max(nmax, neighbourhood[i]);
    }

    // Muestra del pasado
    vec3 previous = texture(colortex3, texcoord_past).rgb;
    vec3 past_sample = clamp(previous, nmin, nmax);

    // Reducción de ghosting por velocidad
    float blend = exp(-length(velocity * vec2(viewWidth, viewHeight))) * 0.2 + 0.7;

    return mix(current_color, past_sample, clamp(blend, 0.0, 1.0));
  }
}

vec4 fast_taa_depth(vec4 current_color, vec2 texcoord_past, vec2 velocity) {
  // Verificamos si proyección queda fuera de la pantalla actual
  if (clamp(texcoord_past, 0.0, 1.0) != texcoord_past) {
    return current_color;
  } else {
    vec4 neighbourhood[5];

    neighbourhood[0] = texture(colortex1, texcoord + vec2(-pixel_size_x, -pixel_size_y));
    neighbourhood[1] = texture(colortex1, texcoord + vec2(pixel_size_x, -pixel_size_y));
    neighbourhood[2] = current_color;
    neighbourhood[3] = texture(colortex1, texcoord + vec2(-pixel_size_x, pixel_size_y));
    neighbourhood[4] = texture(colortex1, texcoord + vec2(pixel_size_x, pixel_size_y));

    vec4 nmin = neighbourhood[0];
    vec4 nmax = nmin;
    for(int i = 1; i < 5; ++i) {
      nmin = min(nmin, neighbourhood[i]);
      nmax = max(nmax, neighbourhood[i]);
    }

    // Muestra del pasado
    vec4 previous = texture(colortex3, texcoord_past);
    vec4 past_sample = clamp(previous, nmin, nmax);

    // Reducción de ghosting por velocidad
    float blend = exp(-length(velocity * vec2(viewWidth, viewHeight))) * 0.2 + 0.7;

    return mix(current_color, past_sample, clamp(blend, 0.0, 1.0));
  }
}

const float quality[12] = float[12] (1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.5f, 2.0f, 2.0f, 2.0f, 2.0f, 4.0f, 8.0f);
