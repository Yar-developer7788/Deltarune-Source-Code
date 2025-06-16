.localvar 2 arguments
.localvar 107 i 20161

:[0]
pushi.e 0
pop.v.i self.con
pushbltn.v builtin.room
pushi.e 383
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v builtin.room
pushi.e 384
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
push.i 99999
conv.i.v
call.i gml_Script_tile_get_ids_at_depth_ch1(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [7]

:[6]
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
b [5]

:[7]
pushbltn.v builtin.room
pushi.e 383
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.con

:[9]
pushbltn.v builtin.room
pushi.e 384
cmp.i.v EQ
bf [11]

:[10]
pushi.e 20
pop.v.i self.con

:[11]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [13]

:[12]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e 20
pop.v.i self.dmax
pushi.e 0
pop.v.i self.siner

:[end]