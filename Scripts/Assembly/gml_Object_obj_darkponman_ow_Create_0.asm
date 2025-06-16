.localvar 2 arguments
.localvar 107 i 8368

:[0]
push.i 231462
setowner.e
pushi.e 82
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -5
pushi.e 1
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -5
pushi.e 2
pop.v.v [array]self.charinstance
pushi.e 0
pop.v.i self.boss
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.boss
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[2]
pushi.e 0
pop.v.i self.battlealpha
pushi.e 1
pop.v.i self.max_battlealpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.rot
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.eyer
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.rotspeed
pushi.e 0
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice
pushbltn.v builtin.room
push.v self.room_forest_area2
cmp.v.v EQ
bf [6]

:[3]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [5]

:[4]
pushi.e -4
pop.v.i self.rotspeed
pushi.e 180
pop.v.i self.rot

:[5]
pushi.e 1
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice

:[6]
pushi.e 8
pop.v.i self.bmax
pushi.e 0
pop.v.i self.made
pushi.e 30
pop.v.i self.offx
pushi.e 30
pop.v.i self.offy
pushi.e 300
pop.v.i self.xrange
pushi.e 240
pop.v.i self.yrange
pushbltn.v builtin.room
push.v self.room_forest_area5
cmp.v.v EQ
bf [8]

:[7]
push.d 2.5
pop.v.d self.rotspeed
pushi.e 11
pop.v.i self.bmax
pushi.e 300
pop.v.i self.xrange
pushi.e 280
pop.v.i self.yrange
pushi.e 1
pop.v.i self.tile_fade
push.i 222222
pop.v.i self.tile_layer_choice

:[8]
push.v self.tile_fade
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.boss
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.v self.tile_layer_choice
call.i gml_Script_tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[13]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [15]

:[14]
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
b [13]

:[15]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
pushi.e 0
pop.v.i self.siner

:[end]