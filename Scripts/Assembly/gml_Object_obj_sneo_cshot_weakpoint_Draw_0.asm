.localvar 2 arguments

:[0]
push.v self.flash
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
pop.v.i self.flash
b [end]

:[2]
call.i draw_self(argc=0)
popz.v

:[end]