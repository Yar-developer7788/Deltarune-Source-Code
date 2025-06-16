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
pushi.e -1
pop.v.i self.chargeshot_sound
pushi.e 1
pop.v.i self.canmove
pushi.e 364
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.boundaryup
pushi.e 0
pop.v.i self.color
pushi.e 0
pop.v.i self.z_hold
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.z_charge
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.z_hold_f
pushi.e 0
pop.v.i self.chargeshot_delay
pushi.e 0
pop.v.i self.superchargetimer
pushi.e 0
pop.v.i self.chargeshotcount
pushi.e 0
pop.v.i self.disableslow
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.disableslow

:[2]
pushi.e 40
pop.v.i self.remove_slow_z_buffer

:[end]