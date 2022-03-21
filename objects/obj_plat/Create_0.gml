used = 0
yoff = 0
movein = 0
ysin = 0
time = irandom_range(0,300)

if distance_to_object(obj_plat) < 100
	instance_destroy()
	
image_index = choose(0,1,2)