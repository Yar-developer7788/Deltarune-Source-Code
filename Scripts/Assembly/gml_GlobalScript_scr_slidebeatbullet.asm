.localvar 2 arguments
.localvar 11629 _lane 3230
.localvar 11539 _frames 3231
.localvar 11540 _targetBeat 3232
.localvar 11632 _positionX 3235

:[0]
b [4]

> gml_Script_scr_slidebeatbullet (locals=4, argc=3)
:[1]
push.v arg.argument0
pop.v.v local._lane
push.v arg.argument1
pop.v.v local._frames
push.v arg.argument2
pop.v.v local._targetBeat
push.v self.lanesX
pushloc.v local._lane
push.v self.lanesWidth
mul.v.v
add.v.v
push.v self.lanesWidth
push.d 0.5
mul.d.v
add.v.v
pop.v.v local._positionX
pushi.e 1101
conv.i.v
pushi.e 0
conv.i.v
pushi.e -30
conv.i.v
pushloc.v local._positionX
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [3]

:[2]
pushi.e 999
pop.v.i self.framesAway
pushloc.v local._frames
pop.v.v self.frames
pushloc.v local._targetBeat
pop.v.v self.targetBeat
pushi.e 0
pop.v.i self.image_alpha

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_slidebeatbullet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_slidebeatbullet
popz.v

:[end]