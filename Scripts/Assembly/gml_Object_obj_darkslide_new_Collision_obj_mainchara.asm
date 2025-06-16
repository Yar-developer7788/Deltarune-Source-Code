.localvar 2 arguments
.localvar 15571 solidcheck 7163

:[0]
pushi.e 0
pop.v.i local.solidcheck
pushi.e 0
pop.v.i self.cancollide
push.v self.sliding
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [17]

:[4]
push.v 82.y
push.v self.y
push.v self.sprite_height
add.v.v
push.v 82.sprite_height
sub.v.v
cmp.v.v LT
bf [16]

:[5]
pushi.e 82
pushenv [8]

:[6]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i local.solidcheck

:[8]
popenv [6]
pushloc.v local.solidcheck
pushi.e 0
cmp.i.v EQ
bf [15]

:[9]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [11]

:[10]
pushi.e 237
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [12]

:[11]
pushi.e 237
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.slide_noise

:[12]
pushi.e 82
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.sliding
pushi.e 1
pop.v.i self.fun
pushi.e 656
pop.v.i self.sprite_index

:[14]
popenv [13]
pushi.e 1
pop.v.i self.sliding

:[15]
b [17]

:[16]
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 48
sub.i.v
pop.v.v 82.y

:[17]
push.v self.sliding
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
pushi.e 1
pop.v.i self.collide
pushi.e 1
pop.v.i global.interact
push.v other.y
pushi.e 12
add.i.v
pop.v.v other.y
pushi.e 1
pop.v.i self.collidetimer
push.v self.collider
pushi.e 1
add.i.v
pop.v.v self.collider
push.v self.slidetimer
pushi.e 0
cmp.i.v EQ
bf [22]

:[19]
pushi.e 215
conv.i.v
push.v 82.y
pushi.e 30
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.dust
pushi.e -9
pushenv [21]

:[20]
pushi.e -6
pop.v.i self.vspeed
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[21]
popenv [20]
pushi.e -3
pop.v.i self.slidetimer

:[22]
push.v self.slidetimer
pushi.e 1
add.i.v
pop.v.v self.slidetimer
push.v self.slidetimer
pushi.e 1
cmp.i.v GTE
bf [24]

:[23]
pushi.e -3
pop.v.i self.slidetimer

:[24]
push.v self.move_lr_enabled
conv.v.b
bf [end]

:[25]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [30]

:[26]
pushi.e 82
pushenv [29]

:[27]
pushi.e -6
pop.v.i self._px
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self._px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [29]

:[28]
push.v self.x
push.v self._px
add.v.v
pop.v.v self.x

:[29]
popenv [27]

:[30]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [35]

:[31]
pushi.e 82
pushenv [34]

:[32]
pushi.e 6
pop.v.i self._px
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self._px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [34]

:[33]
push.v self.x
push.v self._px
add.v.v
pop.v.v self.x

:[34]
popenv [32]

:[35]
pushi.e 0
pop.v.i local.solidcheck
pushi.e 82
pushenv [38]

:[36]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [38]

:[37]
pushi.e 1
pop.v.i local.solidcheck

:[38]
popenv [36]
pushloc.v local.solidcheck
pushi.e 1
cmp.i.v EQ
bf [end]

:[39]
pushi.e 1
pop.v.i self.instant_end_sliding

:[end]