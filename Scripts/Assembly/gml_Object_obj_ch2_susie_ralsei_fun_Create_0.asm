.localvar 2 arguments
.localvar 70 susie 17504
.localvar 72 ralsei 17505

:[0]
pushglb.v global.plot
pushi.e 95
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 144
conv.i.v
pushi.e 190
conv.i.v
pushi.e 415
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.susie
push.d 0.1
pushloc.v local.susie
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushloc.v local.susie
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 816
conv.i.v
pushi.e 205
conv.i.v
pushi.e 340
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.ralsei
push.d 0.1
pushloc.v local.ralsei
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushloc.v local.ralsei
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]

:[end]