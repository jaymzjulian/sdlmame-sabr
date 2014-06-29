SABR port to SDLMame
--------------------

A port of the the SABR3 shader by Joshua Street 
(See https://github.com/libretro/common-shaders/blob/master/sabr/sabr-v3.0.cg )

To use, add the following tio your mame.ini:

    gl_glsl                   1
    gl_glsl_filter            1
    glsl_shader_mame0       /home/user/.mame/osd/shader/glsl_plain
    glsl_shader_mame1         /home/user/.mame/sabr/sabr
