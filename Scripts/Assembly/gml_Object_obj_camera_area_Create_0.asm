.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [3]

:[1]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
pushbltn.v builtin.room_width
pushi.e 2
mul.i.v
pop.v.v self.x
pushbltn.v builtin.room_height
pushi.e 2
mul.i.v
pop.v.v self.y
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.inside
pushi.e -1
pop.v.i self.ignorebuffer
push.v self.id
pop.v.v self.checkid
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1158
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[4]
pushi.e 1158
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.advancedcamera
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.advancedcamera
pushi.e -9
pushenv [6]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]

:[end]