.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 1299
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.i 86200
pop.v.i self.depth
b [end]

:[2]
pushbltn.v builtin.room
pushi.e 196
cmp.i.v EQ
bf [4]

:[3]
push.i 1000000
pop.v.i self.depth
b [end]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]