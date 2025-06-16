.localvar 2 arguments

:[0]
push.v self.black_silhouette
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[2]
push.v self.white_silhouette
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[4]
call.i draw_self(argc=0)
popz.v
push.v self.black_silhouette
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[6]
push.v self.white_silhouette
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]