.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.cancollide
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.collide
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.cancollide

:[5]
push.v self.cancollide
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.abovey
pushi.e 0
cmp.i.v EQ
bf [13]

:[7]
push.v 82.y
push.v self.y
cmp.v.v LT
bf [11]

:[8]
pushi.e 1
pop.v.i self.abovey
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 237
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.slide_noise
pushi.e 82
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.fun
pushi.e 656
pop.v.i self.sprite_index

:[10]
popenv [9]

:[11]
push.v 82.y
push.v self.y
cmp.v.v GT
bf [13]

:[12]
pushi.e -1
pop.v.i self.abovey

:[13]
pushi.e 1
pop.v.i self.collide
pushi.e 1
pop.v.i global.interact
push.v other.y
pushi.e 12
add.i.v
pop.v.v other.y
pushi.e 3
pop.v.i self.collidetimer
push.v self.collider
pushi.e 1
add.i.v
pop.v.v self.collider
push.v self.slidetimer
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.abovey
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
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
pushenv [19]

:[18]
pushi.e -6
pop.v.i self.vspeed
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[19]
popenv [18]
pushi.e -6
pop.v.i self.slidetimer

:[20]
push.v self.slidetimer
pushi.e 1
add.i.v
pop.v.v self.slidetimer
push.v self.move_lr_enabled
conv.v.b
bf [22]

:[21]
push.v 82.px
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [29]

:[25]
pushi.e 82
pushenv [28]

:[26]
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
bf [28]

:[27]
push.v self.x
push.v self._px
add.v.v
pop.v.v self.x

:[28]
popenv [26]

:[29]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [end]

:[30]
pushi.e 82
pushenv [33]

:[31]
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
bf [33]

:[32]
push.v self.x
push.v self._px
add.v.v
pop.v.v self.x

:[33]
popenv [31]

:[end]