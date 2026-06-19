shader_type canvas_item;

// Hint screen_texture allows reading everything behind this node
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;
uniform float scanline_count : hint_range(10.0, 1080.0) = 300.0;
uniform float scanline_opacity : hint_range(0.0, 1.0) = 0.3;

void fragment() {
    // Read the actual pixels from your game screen
    vec4 color = texture(screen_texture, SCREEN_UV);
    
    // Generate the lines vertically
    float scanline = sin(SCREEN_UV.y * scanline_count * 3.14159);
    scanline = smoothstep(0.0, 0.5, abs(scanline));
    
    // Mix the screen colors with the dark lines
    color.rgb = mix(color.rgb, color.rgb * scanline, scanline_opacity);
    
    COLOR = color;
}
