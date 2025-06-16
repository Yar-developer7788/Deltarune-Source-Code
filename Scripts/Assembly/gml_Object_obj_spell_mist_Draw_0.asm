.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.myself
pushi.e 0
cmp.i.v GTE
bf [5]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.success

:[5]
push.v self.initdelay
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 251
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.v self.success
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 250
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[8]
push.v self.initdelay
push.e 1
sub.i.v
pop.v.v self.initdelay
push.v self.initdelay
pushi.e 0
cmp.i.v LTE
bf [end]

:[9]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
sub.d.v
push.v self.success
push.d 0.3
mul.d.v
add.v.v
pop.v.v self.image_alpha
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
pop.v.v self.amp
push.v self.image_alpha
push.d 0.8
mul.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.amp
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amp
mul.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.d 0.8
mul.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.amp
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amp
mul.v.v
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.stimer
push.e 1
add.i.v
pop.v.v self.stimer
push.v self.siner
pushi.e 12
cmp.i.v EQ
bf [14]

:[10]
push.v self.success
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
push.v self.target
pushi.e -9
pushenv [13]

:[12]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v

:[13]
popenv [12]

:[14]
push.v self.stimer
pushi.e 3
cmp.i.v GTE
bf [16]

:[15]
push.v self.siner
pushi.e 24
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [20]

:[18]
pushi.e 0
pop.v.i self.stimer
push.v self.success
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 388
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.sprite_height
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.sprite_width
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hex
push.d 0.5
push.v self.hex
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
push.v self.hex
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1
push.v self.hex
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 5
conv.i.v
call.i random(argc=1)
push.v self.hex
pushi.e -9
pop.v.v [stacktop]self.rotspeed
pushi.e 2223
push.v self.hex
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[20]
push.v self.siner
pushi.e 40
cmp.i.v GTE
bf [end]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[end]