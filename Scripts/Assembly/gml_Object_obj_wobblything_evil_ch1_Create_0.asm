.localvar 2 arguments
.localvar 107 i 20753

:[0]
push.i 231462
setowner.e
pushi.e 1351
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.wobbled
pushbltn.v builtin.room
pushi.e 320
cmp.i.v EQ
bf [end]

:[1]
push.i 777777
conv.i.v
call.i gml_Script_tile_get_ids_at_depth_ch1(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[3]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i gml_Script_tile_set_alpha_ch1(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[end]