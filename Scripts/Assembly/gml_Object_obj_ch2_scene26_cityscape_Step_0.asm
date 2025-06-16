.localvar 2 arguments

:[0]
push.v self.fade_away
conv.v.b
bf [4]

:[1]
push.v self.main_alpha
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.main_alpha
push.d 0.1
sub.d.v
pop.v.v self.main_alpha
b [4]

:[3]
pushi.e 0
pop.v.b self.fade_away
pushi.e 0
pop.v.i self.beam_offset
pushi.e 0
pop.v.b self.show_laser_outline
pushi.e 0
pop.v.b self.show_laser_beam

:[4]
push.v self.show_lightners
conv.v.b
bf [6]

:[5]
pushi.e 0
pop.v.b self.show_lightners
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
push.v self.screen_offset
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kris_screen
pushi.e 38
push.v self.kris_screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.kris_screen
pushi.e -9
pop.v.i [stacktop]self.aligned
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
push.v self.screen_offset
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sus_screen
pushi.e 39
push.v self.sus_screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.sus_screen
pushi.e -9
pop.v.i [stacktop]self.aligned
pushi.e 263
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
push.v self.screen_offset
pushi.e 3
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_screen
pushi.e 7
push.v self.no_screen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.no_screen
pushi.e -9
pop.v.i [stacktop]self.aligned

:[6]
push.v self.merge_lightners
conv.v.b
bf [12]

:[7]
pushi.e 1
pop.v.b self.make_new
pushi.e 0
pop.v.b self.merge_lightners
pushi.e 0
pop.v.i self.beam_offset
push.v self.kris_screen
pushi.e -9
pushenv [9]

:[8]
push.v other.merge_timer
push.v other.sus_screen
pushi.e -9
push.v [stacktop]self.y
push.v other.sus_screen
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[9]
popenv [8]
push.v self.no_screen
pushi.e -9
pushenv [11]

:[10]
push.v other.merge_timer
push.v other.sus_screen
pushi.e -9
push.v [stacktop]self.y
push.v other.sus_screen
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[11]
popenv [10]

:[12]
push.v self.make_new
conv.v.b
bf [15]

:[13]
push.v self.merge_timer
push.e 1
sub.i.v
pop.v.v self.merge_timer
push.v self.merge_timer
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
pushi.e 0
pop.v.b self.make_new
pushi.e 1
pop.v.b self.fade_screens
pushi.e 0
pop.v.b self.show_mini_fountains
pushi.e 1
pop.v.i self.main_alpha
pushi.e 0
pop.v.i self.beam_offset
pushi.e 1
pop.v.b self.show_laser_beam
pushi.e 1
pop.v.b self.show_laser_outline

:[15]
push.v self.fade_screens
conv.v.b
bf [22]

:[16]
push.v self.screen_alpha
push.d 0.1
sub.d.v
pop.v.v self.screen_alpha
pushi.e 263
pushenv [18]

:[17]
push.v other.screen_alpha
pop.v.v self.image_alpha

:[18]
popenv [17]
push.v self.screen_alpha
pushi.e 0
cmp.i.v LTE
bf [22]

:[19]
pushi.e 0
pop.v.b self.fade_screens
pushi.e 263
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]

:[22]
push.v self.show_hands
conv.v.b
bf [end]

:[23]
push.v self.hand_init
conv.v.b
not.b
bf [25]

:[24]
pushi.e 1
pop.v.b self.hand_init
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
pop.v.v self.hand_right_xpos

:[25]
push.v self.hand_both_reveal
conv.v.b
bf [28]

:[26]
push.d 0.2
conv.d.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 60
add.i.v
push.v self.hand_right_xpos
call.i lerp(argc=3)
pop.v.v self.hand_right_xpos
push.v self.hand_right_xpos
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 60
add.i.v
cmp.v.v LTE
bf [28]

:[27]
pushi.e 0
pop.v.b self.hand_both_reveal
pushi.e 1
pop.v.b self.hand_both_reveal_finish

:[28]
push.v self.knife_reveal
conv.v.b
bf [31]

:[29]
push.d 0.2
conv.d.v
pushi.e 1
conv.i.v
push.v self.knife_alpha
call.i lerp(argc=3)
pop.v.v self.knife_alpha
push.d 0.2
conv.d.v
pushi.e 10
conv.i.v
push.v self.knife_ypos
call.i lerp(argc=3)
pop.v.v self.knife_ypos
push.v self.knife_ypos
pushi.e 9
cmp.i.v GTE
bf [31]

:[30]
pushi.e 0
pop.v.b self.knife_reveal
pushi.e 1
pop.v.b self.knife_hover

:[31]
push.v self.knife_hover
conv.v.b
bf [33]

:[32]
push.v self.knife_siner
push.d 0.075
add.d.v
pop.v.v self.knife_siner
pushi.e 10
push.v self.knife_siner
push.d 0.65
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.i
pop.v.v self.knife_ypos

:[33]
push.v self.knife_stab
conv.v.b
bf [41]

:[34]
pushi.e 0
pop.v.b self.knife_hover
push.v self.stab_timer
push.d 0.05
add.d.v
pop.v.v self.stab_timer
pushi.e -1
conv.i.v
push.v self.stab_timer
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 200
conv.i.v
push.v self.knife_ypos
call.i gml_Script_lerp_ease_ext(argc=6)
pop.v.v self.knife_ypos
push.v self.stab_timer
push.d 0.5
cmp.d.v GTE
bf [36]

:[35]
push.v self.hand_retreat
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 1
pop.v.b self.hand_retreat

:[39]
push.v self.stab_timer
pushi.e 1
cmp.i.v GTE
bf [41]

:[40]
pushi.e 0
pop.v.i self.stab_timer
pushi.e 0
pop.v.b self.knife_stab
pushi.e 1
pop.v.b self.show_laser_beam

:[41]
push.v self.hand_retreat
conv.v.b
bf [end]

:[42]
push.v self.retreat_timer
push.d 0.05
add.d.v
pop.v.v self.retreat_timer
pushi.e 4
conv.i.v
push.v self.retreat_timer
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
push.v self.hand_right_xpos
call.i gml_Script_lerp_ease_ext(argc=6)
pop.v.v self.hand_right_xpos
push.v self.retreat_timer
pushi.e 1
cmp.i.v GTE
bf [end]

:[43]
pushi.e 0
pop.v.i self.retreat_timer
pushi.e 0
pop.v.b self.hand_retreat
pushi.e 0
pop.v.b self.show_hands

:[end]