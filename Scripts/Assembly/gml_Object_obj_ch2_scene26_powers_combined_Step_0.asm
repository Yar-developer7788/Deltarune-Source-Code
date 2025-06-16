.localvar 2 arguments
.localvar 6706 d 16673
.localvar 33137 dialog 16674

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
bf [25]

:[21]
pushi.e 2
pop.v.i self.recruit_con
pushi.e -1
push.v self.current_index
conv.v.i
push.v [array]self.recruit_color
pop.v.v self.recruit_col
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
bf [23]

:[22]
pushi.e -3
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_xscale
b [24]

:[23]
pushi.e 3
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[24]
pushi.e 3
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.current_sprite
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[25]
push.v self.recruit_con
pushi.e 2
cmp.i.v EQ
bf [34]

:[26]
push.v self.current_side
pushi.e -1
cmp.i.v EQ
bf [28]

:[27]
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
b [29]

:[28]
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

:[29]
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
bf [31]

:[30]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
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
pushi.e 0
pop.v.i self.miniflash

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
bf [71]

:[48]
push.v self.thrash_con
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.d 0.5
pop.v.d self.thrash_con
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Step_0_gml_159_0"@33139
conv.s.v
push.s "* And...^1. mosteth of all.../%"@33140
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

:[50]
push.v self.thrash_con
push.d 0.5
cmp.d.v EQ
bf [52]

:[51]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 1
pop.v.i self.thrash_con

:[55]
push.v self.thrash_con
pushi.e 1
cmp.i.v EQ
bf [63]

:[56]
push.v self.thrash
pushi.e -4
cmp.i.v EQ
bf [58]

:[57]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_powers_combined_slash_Step_0_gml_160_0"@33141
conv.s.v
push.s "\\E6* Whatevereth this thingeth is!!!/%"@33142
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
pushi.e 1
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

:[58]
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
bf [60]

:[59]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
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

:[63]
push.v self.thrash_con
pushi.e 2
cmp.i.v EQ
bf [71]

:[64]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.glow
pushi.e 1
cmp.i.v LT
bf [66]

:[65]
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

:[66]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.glow
push.d 0.99
cmp.d.v GTE
bf [68]

:[67]
push.v self.thrash_con
pushi.e 2
cmp.i.v LTE
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.glow
push.d 2.5
pop.v.d self.thrash_con
pushi.e 6
conv.i.v
push.v self.y
pushi.e 26
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 151
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 695
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.big_square
pushi.e 1
push.v self.big_square
pushi.e -9
pop.v.i [stacktop]self.blend_mode
push.i 16777215
push.v self.big_square
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[71]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [74]

:[72]
push.v self.thrash_con
pushi.e 3
cmp.i.v EQ
bf [74]

:[73]
push.v self.thrash
call.i instance_destroy(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.v self.big_square
call.i instance_destroy(argc=1)
popz.v
pushi.e 982
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.thrash
push.v self.depth
pushi.e 30
sub.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 3
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 4
pop.v.i self.thrash_con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[74]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [77]

:[75]
push.v self.thrash_con
pushi.e 4
cmp.i.v EQ
bf [77]

:[76]
pushi.e 140
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i self.thrash_con
pushi.e 3
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.max_index
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.b [stacktop]self.image_play
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[77]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [80]

:[78]
push.v self.thrash_con
pushi.e 5
cmp.i.v EQ
bf [80]

:[79]
pushi.e 140
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 6
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.max_index
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.b [stacktop]self.image_play
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index
pushi.e 6
pop.v.i self.thrash_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[80]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [83]

:[81]
push.v self.thrash_con
pushi.e 6
cmp.i.v EQ
bf [83]

:[82]
pushi.e 140
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.b [stacktop]self.image_play
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index
pushi.e 9
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.max_index
pushi.e 7
pop.v.i self.thrash_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[83]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [86]

:[84]
push.v self.thrash_con
pushi.e 7
cmp.i.v EQ
bf [86]

:[85]
pushi.e 11
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.max_index
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index
pushi.e 30
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -2.5
push.v self.thrash
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 270
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 8
pop.v.i self.thrash_con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[86]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [89]

:[87]
push.v self.thrash_con
pushi.e 8
cmp.i.v EQ
bf [89]

:[88]
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index
pushi.e 9
pop.v.i self.thrash_con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[89]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [92]

:[90]
push.v self.thrash_con
pushi.e 9
cmp.i.v EQ
bf [92]

:[91]
pushi.e 13
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.max_index
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.thrash_con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[92]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [95]

:[93]
push.v self.thrash_con
pushi.e 10
cmp.i.v EQ
bf [95]

:[94]
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index
pushi.e 11
pop.v.i self.thrash_con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[95]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [end]

:[96]
pushi.e 99
pop.v.i self.con
pushi.e 977
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[97]
pushi.e 977
pushenv [99]

:[98]
pushi.e 15
pop.v.i self.con

:[99]
popenv [98]

:[end]