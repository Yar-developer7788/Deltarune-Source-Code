.localvar 2 arguments

:[0]
pushi.e 4
pop.v.i global.sp
pushglb.v global.sp
pop.v.v self.wspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fly
pushi.e 1
pop.v.i self.darken
pushi.e 0
pop.v.i self.darkamt
pushi.e 0
pop.v.i self.dmgnoise
pushi.e 1527
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 0
pop.v.i self.boundaryup
pushi.e 0
pop.v.i self.disableslow
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 1
pop.v.i self.disableslow

:[end]