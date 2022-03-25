//draw_text_transformed_color(10,10,string(floor(x) - 96) + " BEST: " + string(highscore),1,1,0,c_black,c_black,c_black,c_black,1)

//draw_text_transformed_color(10,25,"global.coins: " + string(coins),1,1,0,c_black,c_black,c_black,c_black,1)

draw_text_outline(10,10,"Score: " + string(floor(x) - 96) + " [Best: " + string(highscore) + "]",1,1,0,c_white,c_black,1,0)
draw_text_outline(10,25,"global.coins: " + string(coins),1,1,0,c_white,c_black,1,0)