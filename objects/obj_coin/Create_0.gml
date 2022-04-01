time = irandom_range(0,300)
yoff = 0
collected = 0
value = 1
if valubleitems
	value = choose(1,1,1,1,1,3,3,5)
switch value
{
	//case 1: { image_blend = c_white } break;
	case 3: { sprite_index = spr_coin2 } break;
	case 5: { sprite_index = spr_coin3 } break;
}

var stay = choose(0,1,1,1)
if !stay
	instance_destroy()