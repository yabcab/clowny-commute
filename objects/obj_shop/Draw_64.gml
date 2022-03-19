var item
for (item = 0; item < sprite_get_number(sprite_index); item++)
{
	if purchased[item]
		draw_sprite_ext(sprite_index,item,320 + (item * 80) - scroll,180,1,1,0,c_gray,1)
	else
		draw_sprite_ext(sprite_index,item,320 + (item * 80) - scroll,180,1,1,0,c_white,1)
}
draw_text_transformed_color(320 - (string_width(cost) / 2),100,string(cost),1,1,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_color(320 - (string_width(name) / 2),225,name,1,1,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_color(320 - (string_width(desc) / 4),250,desc,0.5,0.5,0,c_white,c_white,c_white,c_white,1)