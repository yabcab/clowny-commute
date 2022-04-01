//draw_sprite_ext(spr_whiteman,0,320,180,1000,1000,0,c_black,overlayalpha)
draw_sprite_ext(spr_titlebuttons,0,320 - opt1_off,200,1,1,0,sel1,opt1_a)
draw_sprite_ext(spr_titlebuttons,1,320 - opt2_off,250,1,1,0,sel2,opt2_a)
//draw_sprite_ext(spr_lostmenuicons,2,320 - opt3_off,300,1,1,0,sel3,opt3_a)
draw_sprite_ext(spr_title,0,320 - hs_off,100,1,1,0,c_white,hs_a)

if !instance_exists(obj_intro)
	draw_text_outline(10,325,"Z: Select",1,1,0,c_white,c_black,1,0)