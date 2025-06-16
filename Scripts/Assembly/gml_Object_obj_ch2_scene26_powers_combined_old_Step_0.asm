.localvar 2 arguments
.localvar 6706 d 16698
.localvar 33137 dialog 16699

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.d 0.15
conv.d.v
pushi.e 1
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.9
cmp.d.v GTE
bf [6]

:[2]
pushi.e 893
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e 893
pushenv [5]

:[4]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha

:[5]
popenv [4]

:[6]
push.v self.image_alpha
push.d 0.95
cmp.d.v GTE
bf [8]

:[7]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.image_alpha
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Step_0_gml_16_0"@33134
conv.s.v
push.s "\\EJ* With a splendid base.../%"@33135
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [14]

:[12]
push.d 0.15
conv.d.v
pushi.e 1
conv.i.v
push.v self.color_lerp
call.i lerp(argc=3)
pushi.e 100
mul.i.v
call.i round(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.color_lerp
push.v self.color_lerp
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.color_lerp
push.d 0.95
cmp.d.v GTE
bf [14]

:[13]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.image_blend

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [47]

:[15]
push.v self.current_index
pushi.e -1
cmp.i.v GT
bf [46]

:[16]
push.v self.recruit_con
pushi.e 0
cmp.i.v EQ
bf [20]

:[17]
pushi.e 1
pop.v.i self.recruit_con
push.v self.current_index
push.v self.recruit
call.i array_get(argc=2)
push.v self.recruit_dialog_map
call.i ds_map_find_value(argc=2)
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [19]

:[18]
push.v self.current_index
push.v self.recruit
call.i array_get(argc=2)
push.v self.recruit_dialog_map
call.i ds_map_find_value(argc=2)
pop.v.v local.dialog
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushloc.v local.dialog
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
b [20]

:[19]
push.s "could not find recruit info for "@33138
pushi.e -1
push.v self.current_index
conv.v.i
push.v [array]self.recruit
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[20]
push.v self.recruit_con
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [28]

:[24]
pushi.e 2
pop.v.i self.recruit_con
push.v self.current_index
push.v self.recruit
call.i array_get(argc=2)
push.v self.recruit_sprite_map
call.i ds_map_find_value(argc=2)
push.v self.y
push.v self.x
push.v self.current_side
pushi.e 80
mul.i.v
add.v.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.current_sprite
push.v self.depth
pushi.e 100
sub.i.v
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.current_side
pushi.e -1
cmp.i.v EQ
bf [26]

:[25]
pushi.e -3
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_xscale
b [27]

:[26]
pushi.e 3
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[27]
pushi.e 3
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[28]
push.v self.recruit_con
pushi.e 2
cmp.i.v EQ
bf [34]

:[29]
push.v self.current_side
pushi.e -1
cmp.i.v EQ
bf [31]

:[30]
push.d 0.15
conv.d.v
pushi.e -2
conv.i.v
push.v self.current_sprite
pushi.e -9
push.v [stacktop]self.image_xscale
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_xscale
b [32]

:[31]
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.current_sprite
pushi.e -9
push.v [stacktop]self.image_xscale
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[32]
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.current_sprite
pushi.e -9
push.v [stacktop]self.image_yscale
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.d 0.15
conv.d.v
pushi.e 1
conv.i.v
push.v self.current_sprite
pushi.e -9
push.v [stacktop]self.image_alpha
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.current_sprite
pushi.e -9
push.v [stacktop]self.image_alpha
push.v self.x
push.v self.current_side
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.current_side
pushi.e 80
mul.i.v
add.v.v
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.current_sprite
pushi.e -9
push.v [stacktop]self.image_alpha
push.d 0.95
cmp.d.v GTE
bf [34]

:[33]
pushi.e 3
pop.v.i self.recruit_con
pushi.e 0
pop.v.i self.color_lerp
pushi.e 1
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.start_color
push.i 16777215
pop.v.i self.end_color
pushi.e 1
pop.v.b self.fade_in_out

:[34]
push.v self.recruit_con
pushi.e 3
cmp.i.v EQ
bf [40]

:[35]
push.d 0.35
conv.d.v
pushi.e 1
conv.i.v
push.v self.color_lerp
call.i lerp(argc=3)
pushi.e 100
mul.i.v
call.i round(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.color_lerp
push.v self.color_lerp
push.v self.x
push.v self.x
push.v self.current_side
pushi.e 20
mul.i.v
add.v.v
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.current_side
pushi.e -1
cmp.i.v EQ
bf [37]

:[36]
push.v self.color_lerp
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_xscale
b [38]

:[37]
push.v self.color_lerp
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[38]
push.v self.color_lerp
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.color_lerp
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
push.v self.current_sprite
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.color_lerp
push.d 0.95
cmp.d.v GTE
bf [40]

:[39]
pushi.e 4
pop.v.i self.recruit_con
pushi.e 0
pop.v.i self.color_lerp
pushi.e 0
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 16777215
pop.v.i self.start_color
pushi.e 0
pop.v.i self.end_color

:[40]
push.v self.recruit_con
pushi.e 4
cmp.i.v EQ
bf [45]

:[41]
push.d 0.35
conv.d.v
pushi.e 1
conv.i.v
push.v self.color_lerp
call.i lerp(argc=3)
pushi.e 100
mul.i.v
call.i round(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.color_lerp
push.v self.color_lerp
push.d 0.95
cmp.d.v GTE
bf [45]

:[42]
pushi.e 0
pop.v.b self.fade_in_out
pushi.e 5
pop.v.i self.recruit_con
pushi.e 0
pop.v.i self.color_lerp
pushi.e 0
pop.v.i self.image_blend
push.v self.current_sprite
call.i instance_destroy(argc=1)
popz.v
push.v self.current_index
push.e 1
add.i.v
pop.v.v self.current_index
push.v self.orb_count
push.e 1
add.i.v
pop.v.v self.orb_count
push.v self.spin_speed
push.d 0.5
add.d.v
pop.v.v self.spin_speed
pushi.e 0
pop.v.i self.orb_ease
push.v self.current_index
push.v self.recruit
call.i array_length_1d(argc=1)
cmp.v.v GTE
bf [44]

:[43]
pushi.e -1
pop.v.i self.current_index
pushi.e 0
pop.v.i self.current_side
b [45]

:[44]
pushi.e 0
pop.v.i self.recruit_con
push.v self.current_side
pushi.e -1
mul.i.v
pop.v.v self.current_side

:[45]
b [47]

:[46]
pushi.e 3
pop.v.i self.con

:[47]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [64]

:[51]
push.v self.thrash_con
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.thrash_con
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_powers_combined_old_slash_Step_0_gml_167_0"@33153
conv.s.v
push.s "* And...^1. mosteth of all.../"@33154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Step_0_gml_160_0"@33141
conv.s.v
push.s "\\E6* Whatevereth this thingeth is!!!/%"@33142
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[53]
push.v self.thrash_con
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [61]

:[57]
push.v self.thrash
pushi.e -4
cmp.i.v EQ
bf [59]

:[58]
pushi.e 730
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 220
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.thrash
pushi.e 6
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.s
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.animate
pushi.e 150
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.override_color
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.glow

:[59]
push.d 0.1
conv.d.v
pushi.e 3
conv.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
call.i lerp(argc=3)
pushi.e 100
mul.i.v
call.i round(argc=1)
pushi.e 100
conv.i.d
div.d.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.d 3.25
cmp.d.v LTE
bf [61]

:[60]
pushi.e 3
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.s
pushi.e 1
pop.v.i self.orb_con
pushi.e 2
pop.v.i self.thrash_con
pushi.e 0
pop.v.i self.color_lerp
pushi.e 1
pop.v.b self.fade_in_out
pushi.e 0
pop.v.i self.start_color
push.i 16777215
pop.v.i self.end_color

:[61]
push.v self.thrash_con
pushi.e 2
cmp.i.v EQ
bf [64]

:[62]
push.d 0.35
conv.d.v
pushi.e 1
conv.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.glow
call.i lerp(argc=3)
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.glow
push.d 0.35
conv.d.v
pushi.e 1
conv.i.v
push.v self.color_lerp
call.i lerp(argc=3)
pushi.e 100
mul.i.v
call.i round(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.color_lerp
push.v self.color_lerp
push.d 0.95
cmp.d.v GTE
bf [64]

:[63]
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.glow
pushi.e 1
pop.v.i self.color_lerp
pushi.e 3
pop.v.i self.thrash_con
push.i 16777215
pop.v.i self.image_blend
push.v self.id
pushi.e 202
conv.i.v
call.i gml_Script_scr_following_afterimage(argc=2)
pop.v.v local.d
pushloc.v local.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 40
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.pivotx
pushi.e 10
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.pivoty
push.i 68097
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[64]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[65]
pushi.e 99
pop.v.i self.con
pushi.e 977
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[66]
pushi.e 977
pushenv [68]

:[67]
pushi.e 15
pop.v.i self.con

:[68]
popenv [67]

:[end]