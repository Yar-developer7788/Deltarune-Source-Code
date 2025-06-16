.localvar 2 arguments
.localvar 107 i 8408

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.darkamt
pushi.e 82
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.battlemode

:[2]
popenv [1]
push.i 231462
setowner.e
pushi.e 82
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
push.l 9999999999
cmp.l.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.i 99999
pop.v.i self.tile_layer_choice
push.v self.tile_layer_choice
call.i gml_Script_tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[5]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i gml_Script_tile_set_alpha(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[end]