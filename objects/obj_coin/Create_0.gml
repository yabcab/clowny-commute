time = irandom_range(0,300)
yoff = 0
collected = 0
value = 1
if valubleitems
	value = choose(1,1,1,1,1,3,3,5)
switch value
{
	case 1: { image_blend = c_white } break;
	case 3: { image_blend = c_blue } break;
	case 5: { image_blend = c_red } break;
}

var stay = choose(0,1,1,1)
if !stay
	instance_destroy()