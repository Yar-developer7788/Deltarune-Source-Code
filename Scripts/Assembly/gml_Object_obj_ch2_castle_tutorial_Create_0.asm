.localvar 2 arguments
.localvar 36064 coody 17452
.localvar 36065 elegance 17453
.localvar 36066 mannequin 17454
.localvar 36067 addison 17455
.localvar 36068 music_shop 17456
.localvar 36069 music_shop_solid1 17457
.localvar 36070 music_shop_solid2 17458
.localvar 36071 music_door 17459

:[0]
pushi.e 0
conv.b.v
push.s "TILES_Checkboard"@36063
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 9
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [25]

:[4]
pushi.e 103
conv.i.v
pushi.e 194
conv.i.v
pushi.e 772
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.coody
pushi.e 1213
pushloc.v local.coody
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
pushloc.v local.coody
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushloc.v local.coody
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 103
conv.i.v
pushi.e 86
conv.i.v
pushi.e 494
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.elegance
pushi.e 1211
pushloc.v local.elegance
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
pushloc.v local.elegance
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushloc.v local.elegance
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [24]

:[9]
pushi.e 1
conv.b.v
push.s "TILES_Checkboard"@36063
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 103
conv.i.v
pushi.e 150
conv.i.v
pushi.e 834
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.mannequin
pushi.e 1269
pushloc.v local.mannequin
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.mannequin
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 103
conv.i.v
pushi.e 156
conv.i.v
pushi.e 900
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.addison
pushi.e 1237
pushloc.v local.addison
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.addison
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
bf [17]

:[14]
pushi.e 3128
conv.i.v
pushi.e 6
conv.i.v
pushi.e 605
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.music_shop
pushloc.v local.music_shop
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 1149
conv.i.v
pushi.e 112
conv.i.v
pushi.e 633
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.music_shop_solid1
push.d 0.525
pushloc.v local.music_shop_solid1
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
pushloc.v local.music_shop_solid1
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1149
conv.i.v
pushi.e 120
conv.i.v
pushi.e 710
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.music_shop_solid2
push.d 1.675
pushloc.v local.music_shop_solid2
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.3
pushloc.v local.music_shop_solid2
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 154
conv.i.v
pushloc.v local.music_shop
pushi.e -9
push.v [stacktop]self.y
pushi.e 120
add.i.v
pushloc.v local.music_shop
pushi.e -9
push.v [stacktop]self.x
pushi.e 35
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.music_door
pushi.e 4
pushloc.v local.music_door
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.music_door
pushi.e -9
pop.v.i [stacktop]self.image_yscale
b [24]

:[17]
pushi.e 110
conv.i.v
pushi.e 41
conv.i.v
pushi.e 598
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sweetnpc
pushi.e 1262
push.v self.sweetnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.sweetnpc
pushi.e -9
pushenv [19]

:[18]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 110
conv.i.v
pushi.e 74
conv.i.v
pushi.e 670
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capnnpc
pushi.e 1259
push.v self.capnnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.capnnpc
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 110
conv.i.v
pushi.e 28
conv.i.v
pushi.e 743
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kknpc
pushi.e 1260
push.v self.kknpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.kknpc
pushi.e -9
pushenv [23]

:[22]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[23]
popenv [22]

:[24]
b [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]