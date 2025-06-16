.localvar 2 arguments
.localvar 25485 colo 12447
.localvar 9190 _minx 12448
.localvar 9193 _maxy 12449
.localvar 9191 _miny 12450

:[0]
call.i draw_get_color(argc=0)
pop.v.v local.colo
push.v self.inhalespeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.inhale
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.inhale
push.v self.inhalespeed
add.v.v
call.i clamp(argc=3)
pop.v.v self.inhale

:[5]
push.v self.inhale
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
pushi.e 8
sub.i.v
push.v self.minx
call.i lerp(argc=3)
pop.v.v local._minx
push.v self.inhale
push.v self.suckpower
push.v self.lower_sucky
push.v self.maxy
call.i lerp(argc=3)
pushi.e 8
add.i.v
push.v self.maxy
call.i lerp(argc=3)
pop.v.v local._maxy
push.v self.inhale
push.v self.suckpower
push.v self.upper_sucky
push.v self.miny
call.i lerp(argc=3)
pushi.e 8
sub.i.v
push.v self.miny
call.i lerp(argc=3)
pop.v.v local._miny
push.i 49152
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.suckpower
push.v self.lower_sucky
pushloc.v local._maxy
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
push.v self.suckpower
push.v self.upper_sucky
pushloc.v local._miny
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
pushloc.v local._miny
pushloc.v local._minx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.i.v
push.v self.suckpower
push.v self.lower_sucky
pushloc.v local._maxy
call.i lerp(argc=3)
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
pushloc.v local._maxy
pushloc.v local._minx
pushloc.v local._miny
pushloc.v local._minx
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
pushloc.v local._maxy
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
pushloc.v local._miny
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
pushloc.v local._miny
pushi.e 4
add.i.v
pushloc.v local._minx
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
pushloc.v local._maxy
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
pushloc.v local._maxy
pushi.e 4
sub.i.v
pushloc.v local._minx
pushi.e 4
add.i.v
pushloc.v local._miny
pushi.e 4
add.i.v
pushloc.v local._minx
pushi.e 4
add.i.v
call.i draw_triangle(argc=7)
popz.v
pushloc.v local.colo
call.i draw_set_colour(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [12]

:[6]
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [8]

:[7]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer

:[8]
push.v self.timer
pushi.e 59
cmp.i.v GTE
bf [10]

:[9]
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.suckpower
b [11]

:[10]
pushi.e 3
conv.i.v
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pop.v.v self.suckpower

:[11]
b [end]

:[12]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [15]

:[14]
pushi.e 30
pop.v.i self.timer

:[15]
push.v self.snapback
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e -1
pop.v.i self.snapback

:[17]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer

:[19]
pushi.e -2
conv.i.v
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pop.v.v self.suckpower

:[end]