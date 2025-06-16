.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.s "reference"@37890
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
pop.v.i self.init
pushi.e -5
pushi.e 542
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [6]

:[1]
pushi.e 240
conv.i.v
pushi.e 500
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatch
push.v self.swatch
pushi.e -9
pushenv [3]

:[2]
pushi.e 64
pop.v.i self.myencounter
pushi.e 558
pop.v.i self.encounterflag
pushi.e 1254
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.cancelwalk
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.eraser

:[3]
popenv [2]
pushi.e 240
conv.i.v
pushi.e 500
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tasque
push.v self.tasque
pushi.e -9
pushenv [5]

:[4]
pushi.e 52
pop.v.i self.myencounter
pushi.e 558
pop.v.i self.encounterflag
pushi.e 1669
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.cancelwalk
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.eraser

:[5]
popenv [4]
b [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushi.e 0
pop.v.i self.pathProg
pushi.e 0
pop.v.i self.timer

:[end]