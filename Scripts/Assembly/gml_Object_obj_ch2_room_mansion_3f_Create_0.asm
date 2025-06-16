.localvar 2 arguments
.localvar 36113 sign_1f 17517
.localvar 36114 floor_dir_1f 17518
.localvar 36115 sign_4f 17519
.localvar 36116 floor_dir_4f 17520
.localvar 36119 exit_collider 17522
.localvar 36120 icon_npc 17523

:[0]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v NEQ
bf [end]

:[1]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [3]

:[2]
pushglb.v global.plot
pushi.e 125
cmp.i.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
b [9]

:[6]
pushi.e 670
conv.i.v
pushi.e 165
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.berdly_marker
push.v self.berdly_marker
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 0
pop.v.b self.berdly_exit
pushi.e 0
pop.v.i self.berdly_shadow
pushi.e 0
pop.v.b self.susie_exit
pushi.e 0
pop.v.i self.susie_shadow

:[9]
pushi.e 2863
conv.i.v
pushi.e 80
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.door
push.i 999999
push.v self.door
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -5
pushi.e 392
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 590
conv.i.v
b [15]

:[14]
pushi.e 520
conv.i.v

:[15]
pop.v.v self.bookcase_x
pushi.e 105
conv.i.v
pushi.e 80
conv.i.v
push.v self.bookcase_x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bookcase
pushi.e 2892
push.v self.bookcase
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 899999
push.v self.bookcase
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2863
conv.i.v
pushi.e 80
conv.i.v
pushi.e 250
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.door_left
push.i 999999
push.v self.door_left
pushi.e -9
pop.v.i [stacktop]self.depth
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [17]

:[16]
pushi.e 180
conv.i.v
b [18]

:[17]
pushi.e 250
conv.i.v

:[18]
pop.v.v self.bookcase_x_left
pushi.e 105
conv.i.v
pushi.e 80
conv.i.v
push.v self.bookcase_x_left
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bookcase_left
pushi.e 2892
push.v self.bookcase_left
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 899999
push.v self.bookcase_left
pushi.e -9
pop.v.i [stacktop]self.depth
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [28]

:[19]
pushi.e 2936
conv.i.v
pushi.e 40
conv.i.v
pushi.e 250
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.sign_1f
pushi.e 0
pushloc.v local.sign_1f
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.sign_1f
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 2949
conv.i.v
pushi.e 0
conv.i.v
pushi.e 250
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.floor_dir_1f
pushi.e 0
pushloc.v local.floor_dir_1f
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
pushloc.v local.floor_dir_1f
pushi.e -9
pop.v.i [stacktop]self.image_index
pushloc.v local.floor_dir_1f
pushi.e -9
pushenv [23]

:[22]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 2936
conv.i.v
pushi.e 40
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.sign_4f
pushi.e 0
pushloc.v local.sign_4f
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 3
pushloc.v local.sign_4f
pushi.e -9
pop.v.i [stacktop]self.image_index
pushloc.v local.sign_4f
pushi.e -9
pushenv [25]

:[24]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 2949
conv.i.v
pushi.e 0
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.floor_dir_4f
pushi.e 0
pushloc.v local.floor_dir_4f
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.floor_dir_4f
pushi.e -9
pushenv [27]

:[26]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[27]
popenv [26]

:[28]
pushi.e 0
pop.v.b self.hide_entrance
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 1
conv.i.v
push.s "Tiles_ExitBlock"@36118
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1144
conv.i.v
pushi.e 360
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.exit_collider
pushi.e 2
pushloc.v local.exit_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[30]
pushi.e -5
pushi.e 345
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[31]
pushi.e 103
conv.i.v
pushi.e 150
conv.i.v
pushi.e 1047
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.icon_npc
pushi.e 1159
pushloc.v local.icon_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]