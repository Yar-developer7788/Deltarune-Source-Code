.localvar 2 arguments
.localvar 26984 easespeed 14008
.localvar 14253 easedlerp 14009

:[0]
push.v self.timer
pushi.e 90
cmp.i.v LTE
bf [9]

:[1]
push.v self.timer
pushi.e 20
cmp.i.v LTE
bf [5]

:[2]
pushi.e 2
conv.i.v
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
pop.v.v local.easespeed
pushi.e -1
conv.i.v
pushloc.v local.easespeed
call.i gml_Script_scr_ease_in(argc=2)
push.v self.maxx
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.x
pushi.e 7
conv.i.v
pushloc.v local.easespeed
call.i gml_Script_scr_ease_out(argc=2)
push.v self.maxy
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.y
pushi.e 471
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i 471.dontcreatemouse

:[4]
b [8]

:[5]
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [8]

:[6]
pushi.e 2
conv.i.v
push.v self.timer
pushi.e 60
sub.i.v
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
pop.v.v local.easedlerp
pushloc.v local.easedlerp
push.v self.memory
pushi.e -9
push.v self.followindex
conv.v.i
push.v [array]self.xpos
push.v self.maxx
call.i lerp(argc=3)
pop.v.v self.x
pushloc.v local.easedlerp
push.v self.memory
pushi.e -9
push.v self.followindex
conv.v.i
push.v [array]self.ypos
push.v self.maxy
call.i lerp(argc=3)
pop.v.v self.y
pushi.e 471
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 0
pop.v.i 471.dontcreatemouse

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [10]

:[9]
push.v self.memory
pushi.e -9
push.v self.followindex
conv.v.i
push.v [array]self.xpos
pop.v.v self.x
push.v self.memory
pushi.e -9
push.v self.followindex
conv.v.i
push.v [array]self.ypos
pop.v.v self.y
push.v self.followindex
push.e 1
add.i.v
pop.v.v self.followindex

:[10]
pushi.e 470
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[end]