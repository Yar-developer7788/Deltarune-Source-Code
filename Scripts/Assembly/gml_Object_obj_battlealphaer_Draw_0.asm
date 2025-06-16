.localvar 2 arguments
.localvar 107 i 8280

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.fadeplease
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.i 777777
pop.v.i self.tile_layer_amount
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.v self.tile_layer_amount
call.i gml_Script_tile_get_ids_at_depth(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [5]

:[4]
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
b [3]

:[5]
push.v self.battlealpha
pop.v.v self.cur_alpha
push.v self.autobattle
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 255
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i 82.battlemode
b [9]

:[8]
pushi.e 0
pop.v.i 82.battlemode

:[9]
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
push.v self.battlealpha
push.d 0.5
cmp.d.v LT
bf [12]

:[11]
push.v self.battlealpha
push.d 0.04
add.d.v
pop.v.v self.battlealpha

:[12]
b [15]

:[13]
push.v self.battlealpha
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.battlealpha
push.d 0.04
sub.d.v
pop.v.v self.battlealpha

:[15]
push.v self.tile_fade
pushi.e 1
cmp.i.v EQ
bf [20]

:[16]
push.v self.cur_alpha
push.v self.battlealpha
cmp.v.v NEQ
bf [20]

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [20]

:[19]
push.v self.battlealpha
pushi.e 2
mul.i.v
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
b [18]

:[20]
push.v self.battlealpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 540
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 740
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[21]
push.v self.battlealpha
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v 276.image_blend
push.v self.battlealpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[22]
push.i 16777215
pop.v.i 276.image_blend

:[end]