.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.direction
pushi.e 180
sub.i.v
pop.v.v self.image_angle
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 4
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.i
cmp.v.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.1
conv.d.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.i 233521
setowner.e
pushi.e 8
conv.i.v
call.i random(argc=1)
pushi.e 697
pushi.e 5
pop.v.v [array]self.partx
push.i 231357
setowner.e
pushi.e 8
conv.i.v
call.i random(argc=1)
pushi.e 697
pushi.e 5
pop.v.v [array]self.party

:[end]