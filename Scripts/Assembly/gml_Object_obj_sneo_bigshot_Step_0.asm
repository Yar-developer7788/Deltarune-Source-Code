.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 2028
cmp.i.v EQ
bf [15]

:[1]
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.timer2
pushi.e 11
cmp.i.v LT
bf [5]

:[2]
pushi.e 643
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 643.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[4]
b [7]

:[5]
pushi.e 643
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 643.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[7]
push.v self.timer2
pushi.e 16
cmp.i.v LT
bf [9]

:[8]
push.v self.timer2
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer2
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[9]
push.v self.timer2
pushi.e 15
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
pop.v.i self.hspeed
push.d -0.05
pop.v.d self.friction

:[11]
push.v self.x
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
cmp.v.v LT
bf [14]

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.playerhit
pushi.e 0
pop.v.i self.damage
pushi.e 643
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 2
pop.v.i 643.endattack

:[14]
b [16]

:[15]
push.d 0.2
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale

:[16]
push.v self.timer
pushi.e 0
cmp.i.v NEQ
bf [18]

:[17]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[18]
push.v self.timer
pushi.e 13
cmp.i.v GT
bf [end]

:[19]
pushi.e 4
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 70
conv.i.v
pushi.e 0
conv.i.v
pushi.e 223
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 70
pop.v.i 697.stoprumblesfx

:[end]