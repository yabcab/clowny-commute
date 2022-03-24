function new_gamemusic()
{
	randomize()
	var i = irandom_range(1,4)
	switch i {
		case 1: { levelmusic = audio_play_sound(mu_game_1,1,0) } break;
		case 2: { levelmusic = audio_play_sound(mu_game_2,1,0) } break;
		case 3: { levelmusic = audio_play_sound(mu_game_3,1,0) } break;
		case 4: { levelmusic = audio_play_sound(mu_game_4,1,0) } break;
	}
	audio_sound_gain(levelmusic,0,0)
}

function pal_swap_set() {
	shader_set(global.Pal_Shader)
	var _pal_sprite = argument[0]
	var _pal_index = argument[1]
	if (!argument[2])
	{
	    var tex = sprite_get_texture(_pal_sprite, 0)
	    var UVs = sprite_get_uvs(_pal_sprite, 0)
	    texture_set_stage(global.Pal_Texture, tex)
	    texture_set_interpolation_ext(global.Pal_Texture, 1)
	    var texel_x = texture_get_texel_width(tex)
	    var texel_y = texture_get_texel_height(tex)
	    var texel_hx = (texel_x * 0.5)
	    var texel_hy = (texel_y * 0.5)
	    shader_set_uniform_f(global.Pal_Texel_Size, texel_x, texel_y)
	    shader_set_uniform_f(global.Pal_UVs, (UVs[0] + texel_hx), (UVs[1] + texel_hy), (UVs[2] + texel_hx), (UVs[3] + texel_hy))
	    shader_set_uniform_f(global.Pal_Index, _pal_index)
	}
	else
	{
	    tex = surface_get_texture(_pal_sprite)
	    texture_set_stage(global.Pal_Texture, tex)
	    texture_set_interpolation_ext(global.Pal_Texture, 1)
	    texel_x = texture_get_texel_width(tex)
	    texel_y = texture_get_texel_height(tex)
	    texel_hx = (texel_x * 0.5)
	    texel_hy = (texel_y * 0.5)
	    shader_set_uniform_f(global.Pal_Texel_Size, texel_x, texel_y)
	    shader_set_uniform_f(global.Pal_UVs, texel_hx, texel_hy, (1 + texel_hx), (1 + texel_hy))
	    shader_set_uniform_f(global.Pal_Index, _pal_index)
	}
}

function pal_swap_init_system() {
	global.Pal_Shader = argument[0]
	global.Pal_Texel_Size = shader_get_uniform(argument[0], "texel_size")
	global.Pal_UVs = shader_get_uniform(argument[0], "palette_UVs")
	global.Pal_Index = shader_get_uniform(argument[0], "palette_index")
	global.Pal_Texture = shader_get_sampler_index(argument[0], "palette_texture")
	if ((argument_count > 1) && argument[1])
	    global.Pal_Map = ds_map_create()
}

function texture_set_interpolation_ext(argument0, argument1) {
	gpu_set_texfilter_ext(argument0, argument1)
}

function draw_self_shadowed() {
	pal_swap_set(spr_effectpal,effects.shadow,0)
	draw_sprite_ext(sprite_index,image_index,x - 4,y + 4,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	shader_reset()
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

function draw_text_outline(x,y,str,xs,ys,rot,out_col,in_col,out_size,corners)
{
	var col = draw_get_color()
	draw_set_color(out_col)
	draw_text_transformed(x + out_size,y,str,xs,ys,rot)
	draw_text_transformed(x - out_size,y,str,xs,ys,rot)
	draw_text_transformed(x,y + out_size,str,xs,ys,rot)
	draw_text_transformed(x,y - out_size,str,xs,ys,rot)
	if corners
	{
		draw_text_transformed(x + out_size,y + out_size,str,xs,ys,rot)
		draw_text_transformed(x - out_size,y + out_size,str,xs,ys,rot)
		draw_text_transformed(x + out_size,y - out_size,str,xs,ys,rot)
		draw_text_transformed(x - out_size,y - out_size,str,xs,ys,rot)
	}
	draw_set_color(in_col)
	draw_text_transformed(x,y,str,xs,ys,rot)
	draw_set_color(col)
}