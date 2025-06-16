.localvar 2 arguments
.localvar 30846 car_ypos 16139
.localvar 10175 car 16140

:[0]
push.v self.release_car
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.b self.release_car
pushi.e 320
conv.i.v
pushi.e 240
conv.i.v
call.i choose(argc=2)
pop.v.v local.car_ypos
pushi.e 949
conv.i.v
pushloc.v local.car_ypos
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
pushi.e 100
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.car
push.i 68097
setowner.e
push.v self.release_rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]