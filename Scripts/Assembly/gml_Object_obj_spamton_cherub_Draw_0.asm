.localvar 2 arguments
.localvar 25489 _sparkle 12314
.localvar 6706 d 12315

:[0]
push.v self.timer
push.v self.target
cmp.v.v EQ
bf [2]

:[1]
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v local._sparkle
push.d 1.1
push.v self.target
push.d 0.2
mul.d.v
add.v.d
pushloc.v local._sparkle
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[2]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 24
cmp.i.v GTE
bf [12]

:[3]
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
push.v self.timer
pushi.e 24
cmp.i.v EQ
bf [5]

:[4]
pushi.e 128
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
push.v self.sprite_index
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[5]
push.v self.healer
conv.v.b
not.b
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v
b [11]

:[7]
push.v self.timer
pushi.e 48
cmp.i.v EQ
bf [9]

:[8]
push.v self.heal_state
call.i gml_Script_scr_spamton_heal(argc=1)
popz.v
b [11]

:[9]
push.v self.timer
pushi.e 63
cmp.i.v GTE
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
b [end]

:[12]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [14]

:[13]
push.v self.timer
pushi.e 24
cmp.i.v LTE
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 25
conv.i.d
div.d.v
call.i clamp(argc=3)
push.v self.xstart
push.v self.xoff
add.v.v
push.v self.xspawn
call.i lerp(argc=3)
pop.v.v self.x
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 25
conv.i.d
div.d.v
call.i clamp(argc=3)
push.v self.ystart
push.v self.yoff
add.v.v
push.v self.yspawn
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [end]

:[17]
pushi.e 128
conv.i.v
push.v self.y
push.v self.timer
pushi.e 3
conv.i.d
div.d.v
push.v self.offset
add.v.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.timer
pushi.e 3
conv.i.d
div.d.v
push.v self.offset
add.v.v
call.i cos(argc=1)
pushi.e 20
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 2475
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
pushloc.v local.d
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 65280
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 2
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]