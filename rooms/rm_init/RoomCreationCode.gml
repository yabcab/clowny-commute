globalvar coins; coins = 0
globalvar max_obj_hits; max_obj_hits = 0
globalvar can_rightboost; can_rightboost = 0
globalvar extraboost; extraboost = 0

globalvar purchased; purchased = []
var i;
for (i = 0; i < 50; i++)
	purchased[i] = 0

room_goto(rm_game)