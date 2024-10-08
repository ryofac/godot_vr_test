RSRC                    Shader            ��������                                                  resource_local_to_scene    resource_name    code    script        $   res://shaders/highlight_shader.tres �          Shader          �  // NOTE: Shader automatically converted from Godot Engine 4.3.beta1's StandardMaterial3D.

shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_front, diffuse_burley, specular_schlick_ggx, unshaded;

uniform vec4 albedo : source_color;
uniform float grow : hint_range(-16.0, 16.0, 0.001);

uniform float specular : hint_range(0.0, 1.0, 0.01);
uniform float metallic : hint_range(0.0, 1.0, 0.01);
uniform float roughness : hint_range(0.0, 1.0);

void vertex() {
	// Standard grow along the normal will create seams
	VERTEX += normalize(VERTEX) * grow;
}

void fragment() {
	ALBEDO = albedo.rgb;

	METALLIC = metallic;
	SPECULAR = specular;
	ROUGHNESS = roughness;
}
       RSRC