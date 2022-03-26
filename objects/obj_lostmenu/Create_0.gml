sel1 = c_white
sel2 = c_white
sel3 = c_white
overlayalpha = 0

bring_opt1 = 0
bring_opt2 = 0
bring_opt3 = 0
bring_hs = 0
opt1_off = -50
opt2_off = -50
opt3_off = -50
hs_off = -50
opt1_a = 0
opt2_a = 0
opt3_a = 0
hs_a = 0
nolanoffset = 0
do_nolan = 0
if nolanterrigino
	do_nolan = 1


control = 0
got_hs = 0

alarm[0] = 80
alarm[1] = 90
alarm[2] = 100
alarm[3] = 120
alarm[4] = 50

if nolanterrigino
	audio_play_sound(choose(va_phil1,va_phil2,va_phil3,va_phil4,va_phil5,va_phil6,va_phil7,va_phil8),1,0)