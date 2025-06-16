.localvar 2 arguments
.localvar 33124 _color_index 16659
.localvar 107 i 16660
.localvar 33125 recruit_id 16661

:[0]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.color_lerp
pushi.e 0
pop.v.i self.glow_lerp
pushi.e 0
pop.v.i self.glow_in_out
pushi.e 0
pop.v.i self.recruit_con
pushi.e 0
pop.v.i self.thrash_con
pushi.e -4
pop.v.i self.thrash
push.i 173528
setowner.e
pushi.e 630
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.recruit_ids
pushi.e 631
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.recruit_ids
pushi.e 632
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.recruit_ids
pushi.e 633
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.recruit_ids
pushi.e 634
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.recruit_ids
pushi.e 635
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.recruit_ids
pushi.e 636
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.recruit_ids
pushi.e 642
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.recruit_ids
push.i 16777215
pop.v.i self.recruit_col
push.i 173530
setowner.e
push.i 13041038
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.recruit_color
push.i 11164401
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.recruit_color
push.i 14876191
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.recruit_color
push.i 14867541
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.recruit_color
push.i 14586879
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.recruit_color
push.i 9662062
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.recruit_color
push.i 14438399
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.recruit_color
push.i 2366701
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.recruit_color
push.i 14867541
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.recruit_color
push.i 62207
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.recruit_color
call.i ds_map_create(argc=0)
pop.v.v self.recruit_sprite_map
pushi.e 296
conv.i.v
pushi.e 500
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 285
conv.i.v
pushi.e 630
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 286
conv.i.v
pushi.e 631
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 290
conv.i.v
pushi.e 632
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 287
conv.i.v
pushi.e 633
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 289
conv.i.v
pushi.e 634
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 288
conv.i.v
pushi.e 635
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 291
conv.i.v
pushi.e 636
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 292
conv.i.v
pushi.e 642
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 293
conv.i.v
pushi.e 900
conv.i.v
push.v self.recruit_sprite_map
call.i ds_map_set(argc=3)
popz.v
call.i ds_map_create(argc=0)
pop.v.v self.recruit_dialog_map
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_43_0"@33103
conv.s.v
push.s "* My strongest JPEGs!/%"@33104
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 500
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_44_0"@33105
conv.s.v
push.s "* Flashing lights!/%"@33106
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 630
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_45_0"@33107
conv.s.v
push.s "* HAPPI... BRAVARY.../%"@33108
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 631
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_46_0"@33109
conv.s.v
push.s "* (meow noise)/%"@33110
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 632
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_47_0"@33111
conv.s.v
push.s "* My energy!/%"@33112
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 633
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_48_0"@33113
conv.s.v
push.s "* (squeak noise)/%"@33114
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 634
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_49_0"@33115
conv.s.v
push.s "* Tender loving care!/%"@33116
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 635
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_50_0"@33117
conv.s.v
push.s "* Fresh cooking!/%"@33118
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 636
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_51_0"@33119
conv.s.v
push.s "* Organization!/%"@33120
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 642
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Create_0_gml_52_0"@33121
conv.s.v
push.s "* Star Walker/%"@33122
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 900
conv.i.v
push.v self.recruit_dialog_map
call.i ds_map_set(argc=3)
popz.v
pushi.e -1
pop.v.i self.current_sprite
pushi.e -1
pop.v.i self.current_index
pushi.e 0
pop.v.i self.recruit_index
pushi.e 0
pop.v.i local._color_index
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.current_index
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.current_index

:[3]
push.i 166855
setowner.e
pushi.e 500
conv.i.v
pushi.e -1
push.v self.recruit_index
conv.v.i
pop.v.v [array]self.recruit
push.v self.recruit_index
push.e 1
add.i.v
pop.v.v self.recruit_index
push.v local._color_index
push.e 1
add.i.v
pop.v.v local._color_index

:[4]
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.recruit_ids
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [14]

:[6]
pushi.e -5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.recruit_ids
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[7]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.recruit_ids
pop.v.v local.recruit_id
pushloc.v local.recruit_id
push.v self.recruit_sprite_map
call.i ds_map_find_value(argc=2)
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [13]

:[8]
push.v self.current_index
pushi.e -1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.current_index

:[10]
pushloc.v local._color_index
pushloc.v local.i
pushi.e 1
add.i.v
cmp.v.v LT
bf [12]

:[11]
push.i 173530
setowner.e
pushi.e -1
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.recruit_color
pushi.e -1
pushloc.v local._color_index
conv.v.i
pop.v.v [array]self.recruit_color

:[12]
push.v local._color_index
push.e 1
add.i.v
pop.v.v local._color_index
push.i 166855
setowner.e
pushloc.v local.recruit_id
pushi.e -1
push.v self.recruit_index
conv.v.i
pop.v.v [array]self.recruit
push.v self.recruit_index
push.e 1
add.i.v
pop.v.v self.recruit_index

:[13]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[14]
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
push.v self.current_index
pushi.e -1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.current_index

:[17]
pushi.e 900
conv.i.v
pushi.e -1
push.v self.recruit_index
conv.v.i
pop.v.v [array]self.recruit
push.i 173530
setowner.e
pushi.e -1
pushi.e 9
push.v [array]self.recruit_color
pushi.e -1
pushloc.v local._color_index
conv.v.i
pop.v.v [array]self.recruit_color

:[18]
pushi.e 0
pop.v.b self.fade_in_out
pushi.e 0
pop.v.i self.start_color
push.i 16777215
pop.v.i self.end_color
pushi.e 0
pop.v.i self.flicker_timer
pushi.e 5
pop.v.i self.spin_speed
pushi.e 1
pop.v.i self.current_side
pushi.e 0
pop.v.i self.shine_timer
pushi.e 0
pop.v.i self.miniflash
pushi.e 2
pop.v.i self.f
pushi.e -4
pop.v.i self.big_square
pushi.e 0
pop.v.i self.streak_timer

:[end]