.localvar 2 arguments

:[0]
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
call.i clamp(argc=3)
pop.v.v self.image_index
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[1]
push.v 868.destroy
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]