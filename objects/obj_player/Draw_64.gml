//draw_text_transformed_color(10,10,string(floor(x) - 96) + " BEST: " + string(highscore),1,1,0,c_black,c_black,c_black,c_black,1)

//draw_text_transformed_color(10,25,"global.coins: " + string(coins),1,1,0,c_black,c_black,c_black,c_black,1)

draw_text_outline(10,10,"Score: " + string(floor(x) - 96) + " [Best: " + string(highscore) + "]",1,1,0,c_white,c_black,1,0)
//draw_text_outline(10,25,"global.coins: " + string(coins),1,1,0,c_white,c_black,1,0)

draw_sprite_ext(spr_hud_coin,0,10,30,1,1,0,c_white,1)
draw_text_outline(40,35,string(coins),1,1,0,c_white,c_black,1,0)

draw_sprite_ext(spr_hud_salts,0,600,10,1,1,0,c_white,1)
draw_text_outline(595 - string_width(string(backs)),20,string(backs),1,1,0,c_white,c_black,1,0)

var i;
for (i = 0; i < fallboost; i++)
{
	draw_sprite_ext(spr_hud_crayon,0,600 - (i * 35),50,1,1,0,c_white,1)
}
for (i = 0; i < objhits; i++)
{
	draw_sprite_ext(spr_hud_hits,0,600 - (i * 35),85,1,1,0,c_white,1)
}