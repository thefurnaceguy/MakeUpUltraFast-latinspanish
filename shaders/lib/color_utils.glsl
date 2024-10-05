/* MakeUp - color_utils.glsl
Usefull data for color manipulation.

Javier Garduño - GNU Lesser General Public License v3.0
*/

uniform float day_moment;
uniform float day_mixer;
uniform float night_mixer;
uniform int moonPhase;

#ifdef UNKNOWN_DIM
  uniform vec3 fogColor;
  uniform vec3 skyColor;
#endif

#define NIGHT_BRIGHT_PHASE (NIGHT_BRIGHT + (NIGHT_BRIGHT * (abs(4.0 - moonPhase) * 0.25)))

#if COLOR_SCHEME == 0  // Ethereal
  #define OMNI_TINT 0.4
  #define LIGHT_SUNSET_COLOR vec3(0.887528, 0.443394, 0.301044)
  #define LIGHT_DAY_COLOR vec3(0.90, 0.84, 0.79)
  #define LIGHT_NIGHT_COLOR vec3(0.0317353, 0.0467353, 0.0637353) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.2617647, 0.33529412, 0.52352941)
  #define ZENITH_DAY_COLOR vec3(0.0785098, 0.24352941, 0.54901961)
  #define ZENITH_NIGHT_COLOR vec3(0.0168, 0.0228, 0.03) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(1.0, 0.6, 0.394)
  #define HORIZON_DAY_COLOR vec3(0.65, 0.91, 1.3)
  #define HORIZON_NIGHT_COLOR vec3(0.02556, 0.03772, 0.05244) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.05, 0.1, 0.11)
#elif COLOR_SCHEME == 1  // New shoka
  #define OMNI_TINT 0.25
  #define LIGHT_SUNSET_COLOR vec3(1.0, 0.588, 0.3555)
  #define LIGHT_DAY_COLOR vec3(0.90, 0.84, 0.79)
  #define LIGHT_NIGHT_COLOR vec3(0.04786874, 0.05175001, 0.06112969) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.143, 0.24394118, 0.36450981)
  #define ZENITH_DAY_COLOR vec3(0.143, 0.24394118, 0.36450981)
  #define ZENITH_NIGHT_COLOR vec3(0.014, 0.019, 0.025) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(1.0, 0.648, 0.37824)
  #define HORIZON_DAY_COLOR vec3(0.65, 0.91, 1.3)
  #define HORIZON_NIGHT_COLOR vec3(0.0213, 0.0306, 0.0387) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.05, 0.1, 0.11)
#elif COLOR_SCHEME == 2  // Shoka
  #define OMNI_TINT 0.5
  #define LIGHT_SUNSET_COLOR vec3(0.70656, 0.44436, 0.2898)
  #define LIGHT_DAY_COLOR vec3(0.91640625, 0.91640625, 0.635375)
  #define LIGHT_NIGHT_COLOR vec3(0.04786874, 0.05175001, 0.06112969) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.104, 0.17741177, 0.26509804)
  #define ZENITH_DAY_COLOR vec3(0.13, 0.22176471, 0.33137255)
  #define ZENITH_NIGHT_COLOR vec3(0.014, 0.019, 0.025) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(0.715 , 0.5499, 0.416)
  #define HORIZON_DAY_COLOR vec3(0.364 , 0.6825, 0.91)
  #define HORIZON_NIGHT_COLOR vec3(0.0213, 0.0306, 0.0387) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.01647059, 0.13882353, 0.16470588)
#elif COLOR_SCHEME == 3  // Legacy
  #define OMNI_TINT 0.5
  #define LIGHT_SUNSET_COLOR vec3(0.96876, 0.4356254, 0.26002448)
  #define LIGHT_DAY_COLOR vec3(0.88504, 0.88504, 0.8372)
  #define LIGHT_NIGHT_COLOR vec3(0.04693014, 0.0507353 , 0.05993107) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.09410295, 0.20145588, 0.34905882)
  #define ZENITH_DAY_COLOR vec3(0.182, 0.351, 0.754)
  #define ZENITH_NIGHT_COLOR vec3(0.00841175, 0.01651763, 0.025) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(0.81, 0.44165647, 0.25293529)
  #define HORIZON_DAY_COLOR vec3(0.572, 1.014, 1.248)
  #define HORIZON_NIGHT_COLOR vec3(0.01078431, 0.02317647, 0.035) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.01647059, 0.13882353, 0.16470588)

#elif COLOR_SCHEME == 4  // Captain
  #define OMNI_TINT 0.5
  #define LIGHT_SUNSET_COLOR vec3(0.84456, 0.52992, 0.26496001)
  #define LIGHT_DAY_COLOR vec3(0.83064961, 0.93448079, 1.1032065)
  #define LIGHT_NIGHT_COLOR vec3(0.02597646, 0.05195295, 0.069) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.18135 , 0.230256, 0.332592)
  #define ZENITH_DAY_COLOR vec3(0.104, 0.26, 0.507)
  #define ZENITH_NIGHT_COLOR vec3(0.004 ,0.01, 0.0195) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(1.3, 0.8632, 0.3952)
  #define HORIZON_DAY_COLOR vec3(0.65, 0.91, 1.3)
  #define HORIZON_NIGHT_COLOR vec3(0.025, 0.035, 0.05) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.05, 0.1, 0.11)
#elif COLOR_SCHEME == 5  // Psychedelic
  #define OMNI_TINT 0.45
  #define LIGHT_SUNSET_COLOR vec3(0.85 , 0.47058824, 0.17921569)
  #define LIGHT_DAY_COLOR vec3(0.91021875, 0.95771875, 0.6)
  #define LIGHT_NIGHT_COLOR vec3(0.04223712, 0.04566177, 0.05393796) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.18135 , 0.230256, 0.332592)
  #define ZENITH_DAY_COLOR vec3(0.104, 0.26, 0.507)
  #define ZENITH_NIGHT_COLOR vec3(0.004 ,0.01, 0.0195) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(1.3, 0.8632, 0.3952)
  #define HORIZON_DAY_COLOR vec3(0.65, 0.91, 1.3)
  #define HORIZON_NIGHT_COLOR vec3(0.025, 0.035, 0.05) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.018, 0.12 , 0.18)
#elif COLOR_SCHEME == 6  // Cocoa
  #define OMNI_TINT 0.4
  #define LIGHT_SUNSET_COLOR vec3(0.918528, 0.5941728, 0.2712528)
  #define LIGHT_DAY_COLOR vec3(0.897, 0.897, 0.5718375)
  #define LIGHT_NIGHT_COLOR vec3(0.04693014, 0.0507353, 0.05993107) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(0.117, 0.26, 0.494)
  #define ZENITH_DAY_COLOR vec3(0.234, 0.403, 0.676)
  #define ZENITH_NIGHT_COLOR vec3(0.014, 0.019, 0.031) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(1.183, 0.858, 0.611)
  #define HORIZON_DAY_COLOR vec3(0.52, 0.975, 1.3)
  #define HORIZON_NIGHT_COLOR vec3(0.022, 0.029, 0.049) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(0.018, 0.12 , 0.18)
#elif COLOR_SCHEME == 99 // Custom
  #define OMNI_TINT OMNI_TINT_CUSTOM
  #define LIGHT_SUNSET_COLOR vec3(LIGHT_SUNSET_COLOR_R, LIGHT_SUNSET_COLOR_G, LIGHT_SUNSET_COLOR_B)
  #define LIGHT_DAY_COLOR vec3(LIGHT_DAY_COLOR_R, LIGHT_DAY_COLOR_G, LIGHT_DAY_COLOR_B)
  #define LIGHT_NIGHT_COLOR vec3(LIGHT_NIGHT_COLOR_R, LIGHT_NIGHT_COLOR_G, LIGHT_NIGHT_COLOR_B) * NIGHT_BRIGHT_PHASE

  #define ZENITH_SUNSET_COLOR vec3(ZENITH_SUNSET_COLOR_R, ZENITH_SUNSET_COLOR_G, ZENITH_SUNSET_COLOR_B)
  #define ZENITH_DAY_COLOR vec3(ZENITH_DAY_COLOR_R, ZENITH_DAY_COLOR_G, ZENITH_DAY_COLOR_B)
  #define ZENITH_NIGHT_COLOR vec3(ZENITH_NIGHT_COLOR_R, ZENITH_NIGHT_COLOR_G, ZENITH_NIGHT_COLOR_B) * NIGHT_BRIGHT_PHASE

  #define HORIZON_SUNSET_COLOR vec3(HORIZON_SUNSET_COLOR_R, HORIZON_SUNSET_COLOR_G, HORIZON_SUNSET_COLOR_B)
  #define HORIZON_DAY_COLOR vec3(HORIZON_DAY_COLOR_R, HORIZON_DAY_COLOR_G, HORIZON_DAY_COLOR_B)
  #define HORIZON_NIGHT_COLOR vec3(HORIZON_NIGHT_COLOR_R, HORIZON_NIGHT_COLOR_G, HORIZON_NIGHT_COLOR_B) * NIGHT_BRIGHT_PHASE

  #define WATER_COLOR vec3(WATER_COLOR_R, WATER_COLOR_G, WATER_COLOR_B)
#endif

#define NV_COLOR vec3(NV_COLOR_R, NV_COLOR_G, NV_COLOR_B)

#if BLOCKLIGHT_TEMP == 0
  #define CANDLE_BASELIGHT vec3(0.29975, 0.15392353, 0.0799)
#elif BLOCKLIGHT_TEMP == 1
  #define CANDLE_BASELIGHT vec3(0.27475, 0.17392353, 0.0899)
#elif BLOCKLIGHT_TEMP == 2
  #define CANDLE_BASELIGHT vec3(0.24975, 0.19392353, 0.0999)
#elif BLOCKLIGHT_TEMP == 3
  #define CANDLE_BASELIGHT vec3(0.22, 0.19, 0.14)
#else
  #define CANDLE_BASELIGHT vec3(0.19, 0.19, 0.19)
#endif

vec3 day_blend(vec3 sunset, vec3 day, vec3 night) {
  // f(x) = min(-((x-.25)^2)∙20 + 1.25, 1)
  // g(x) = min(-((x-.75)^2)∙50 + 3.125, 1)

  vec3 day_color = mix(sunset, day, day_mixer);
  vec3 night_color = mix(sunset, night, night_mixer);

  return mix(day_color, night_color, step(0.5, day_moment));
}

float day_blend_float(float sunset, float day, float night) {
  // f(x) = min(-((x-.25)^2)∙20 + 1.25, 1)
  // g(x) = min(-((x-.75)^2)∙50 + 3.125, 1)

  float day_value = mix(sunset, day, day_mixer);
  float night_value = mix(sunset, night, night_mixer);

  return mix(day_value, night_value, step(0.5, day_moment));
}

#if defined SIMPLE_AUTOEXP
  // Ambient color luma per hour in exposure calculation
  #if !defined UNKNOWN_DIM
    #define EXPOSURE_DAY 1.0
    #define EXPOSURE_SUNSET 1.0
    #define EXPOSURE_NIGHT 0.01
  #else
    #define EXPOSURE_DAY 1.0
    #define EXPOSURE_SUNSET 1.0
    #define EXPOSURE_NIGHT 1.0
  #endif
#endif

// Fog parameter per hour
#if VOL_LIGHT == 1 || (VOL_LIGHT == 2 && defined SHADOW_CASTING) || defined UNKNOWN_DIM
    #define FOG_DENSITY 3.0
#else
  #define FOG_DAY 3.0
  #define FOG_SUNSET 2.0
  #define FOG_NIGHT 3.0
#endif

// Color conversion

vec3 rgb_to_xyz(vec3 rgb) {
    vec3 xyz;
    vec3 rgb2 = rgb;
    vec3 mask = vec3(greaterThan(rgb, vec3(0.04045)));
    rgb2 = mix(rgb2 / 12.92, pow((rgb2 + 0.055) / 1.055, vec3(2.4)), mask);
    
    const mat3 rgb_to_xyz_matrix = mat3(
        0.4124564, 0.3575761, 0.1804375,
        0.2126729, 0.7151522, 0.0721750,
        0.0193339, 0.1191920, 0.9503041
    );
    
    xyz = rgb_to_xyz_matrix * rgb2;
    return xyz;
}

vec3 xyz_to_lab(vec3 xyz) {
    vec3 xyz2 = xyz / vec3(0.95047, 1.0, 1.08883);
    vec3 mask = vec3(greaterThan(xyz2, vec3(0.008856)));
    xyz2 = mix(7.787 * xyz2 + 16.0 / 116.0, pow(xyz2, vec3(1.0 / 3.0)), mask);
    
    float L = 116.0 * xyz2.y - 16.0;
    float a = 500.0 * (xyz2.x - xyz2.y);
    float b = 200.0 * (xyz2.y - xyz2.z);
    
    return vec3(L, a, b);
}

vec3 lab_to_xyz(vec3 lab) {
    float L = lab.x;
    float a = lab.y;
    float b = lab.z;
    
    float y = (L + 16.0) / 116.0;
    float x = a / 500.0 + y;
    float z = y - b / 200.0;
    
    vec3 xyz = vec3(x, y, z);
    vec3 mask = vec3(greaterThan(xyz, vec3(0.2068966)));
    xyz = mix((xyz - 16.0 / 116.0) / 7.787, xyz * xyz * xyz, mask);
    
    return xyz * vec3(0.95047, 1.0, 1.08883);
}

vec3 xyz_to_rgb(vec3 xyz) {
    const mat3 xyz_to_rgb_matrix = mat3(
        3.2404542, -1.5371385, -0.4985314,
       -0.9692660,  1.8760108,  0.0415560,
        0.0556434, -0.2040259,  1.0572252
    );
    
    vec3 rgb = xyz_to_rgb_matrix * xyz;
    vec3 mask = vec3(greaterThan(rgb, vec3(0.0031308)));
    rgb = mix(12.92 * rgb, 1.055 * pow(rgb, vec3(1.0 / 2.4)) - 0.055, mask);
    
    return clamp(rgb, 0.0, 1.0);
}
