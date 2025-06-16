.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushbltn.v builtin.room
pushi.e 172
cmp.i.v EQ
bf [2]

:[1]
push.i 88000
pop.v.i self.depth
b [end]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]