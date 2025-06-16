.localvar 2 arguments

:[0]
pushi.e 1112
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.gamepad_active
pushi.e 0
pop.v.i self.gamepad_id
pushi.e 0
pop.v.i self.gamepad_shoulderlb_reassign
pushi.e 0
pop.v.i self.gamepad_type

:[end]