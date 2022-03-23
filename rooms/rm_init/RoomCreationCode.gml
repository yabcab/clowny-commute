randomize()

globalvar coins; coins = 999
globalvar max_obj_hits; max_obj_hits = 0
globalvar can_rightboost; can_rightboost = 0
globalvar extraboost; extraboost = 0
globalvar backboosts; backboosts = 0
globalvar boberton; boberton = 0
globalvar brakingpower; brakingpower = 0
globalvar dropspeed; dropspeed = 0
globalvar angrysalt; angrysalt = 0
globalvar valubleitems; valubleitems = 0
globalvar highscore; highscore = 0
globalvar duck; duck = 0
globalvar canduck; canduck = 0

ini_open("save.lmao")
highscore = ini_read_real("data","highscore",0)
ini_close()

globalvar purchased; purchased = []
var i;
for (i = 0; i < 50; i++)
	purchased[i] = 0

pal_swap_init_system(shd_pal)
room_goto(rm_game)

enum effects 
{
	shadow = 1,
	spd = 2
}