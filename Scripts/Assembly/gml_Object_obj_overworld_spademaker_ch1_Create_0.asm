.localvar 2 arguments
.localvar 107 i 20941

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.darkamt
pushi.e 1351
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.battlemode

:[2]
popenv [1]
push.i 231462
setowner.e
pushi.e 1351
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.side
pushi.e 0
pop.v.i self.homing
pushbltn.v builtin.room
pushi.e 324
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.homing

:[4]
pushbltn.v builtin.room
pushi.e 383
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.homing

:[6]
pushbltn.v builtin.room
pushi.e 384
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.homing

:[8]
push.i 168944
setowner.e
push.l 4732847832
conv.l.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sidespade
push.l 4732847832
conv.l.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sidespade
pushi.e 0
pop.v.i self.intensity
pushi.e 0
pop.v.i self.tile_fade
pushbltn.v builtin.room
pushi.e 383
cmp.i.v EQ
bt [11]

:[9]
pushbltn.v builtin.room
pushi.e 384
cmp.i.v EQ
bt [11]

:[10]
pushbltn.v builtin.room
pushi.e 323
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [end]

:[13]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.i 99999
pop.v.i self.tile_layer_choice
push.v self.tile_layer_choice
call.i gml_Script_tile_get_ids_at_depth_ch1(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[15]
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
b [14]

:[end]