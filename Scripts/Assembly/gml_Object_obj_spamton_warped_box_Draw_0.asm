.localvar 2 arguments
.localvar 25485 colo 12303

:[0]
call.i draw_get_color(argc=0)
pop.v.v local.colo
push.i 49152
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.suckpower
push.v self.lower_sucky
push.v self.maxy
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
push.v self.suckpower
push.v self.upper_sucky
push.v self.miny
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
push.v self.miny
push.v self.minx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.i.v
push.v self.suckpower
push.v self.lower_sucky
push.v self.maxy
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
push.v self.maxy
push.v self.minx
push.v self.miny
push.v self.minx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.suckpower
push.v self.lower_sucky
pushi.e 3
sub.i.v
push.v self.maxy
pushi.e 4
sub.i.v
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
pushi.e 4
sub.i.v
push.v self.maxx
pushi.e 4
sub.i.v
call.i lerp(argc=3)
push.v self.suckpower
push.v self.upper_sucky
pushi.e 3
add.i.v
push.v self.miny
pushi.e 4
add.i.v
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
pushi.e 4
sub.i.v
push.v self.maxx
pushi.e 4
sub.i.v
call.i lerp(argc=3)
push.v self.miny
pushi.e 4
add.i.v
push.v self.minx
pushi.e 4
add.i.v
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.i.v
push.v self.suckpower
push.v self.lower_sucky
pushi.e 3
sub.i.v
push.v self.maxy
pushi.e 4
sub.i.v
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
pushi.e 4
sub.i.v
push.v self.maxx
pushi.e 4
sub.i.v
call.i lerp(argc=3)
push.v self.maxy
pushi.e 4
sub.i.v
push.v self.minx
pushi.e 4
add.i.v
push.v self.miny
pushi.e 4
add.i.v
push.v self.minx
pushi.e 4
add.i.v
call.i draw_triangle(argc=7)
popz.v
pushloc.v local.colo
call.i draw_set_colour(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GT
bf [8]

:[1]
push.v self.timer
pushi.e 60
cmp.i.v LT
bf [3]

:[2]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [4]

:[3]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer

:[4]
push.v self.timer
pushi.e 59
cmp.i.v GTE
bf [6]

:[5]
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.suckpower
b [7]

:[6]
pushi.e 3
conv.i.v
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pop.v.v self.suckpower

:[7]
b [end]

:[8]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [10]

:[9]
pushi.e 30
pop.v.i self.timer

:[10]
push.v self.snapback
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pop.v.i self.snapback

:[12]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer

:[14]
pushi.e -2
conv.i.v
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pop.v.v self.suckpower

:[end]