.localvar 2 arguments

:[0]
pushbltn.v builtin.mouse_x
call.i round(argc=1)
pop.v.v self.x
pushbltn.v builtin.mouse_y
call.i round(argc=1)
pop.v.v self.y
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.mousebuffer
push.e 1
sub.i.v
pop.v.v self.mousebuffer
pushi.e 1
pop.v.i self.main_focus
pushi.e 918
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i self.main_focus

:[2]
push.v self.main_focus
conv.v.b
bf [30]

:[3]
pushi.e 1
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.mousebuffer
pushi.e 0
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [30]

:[7]
pushi.e 0
pop.v.i self.mouse_held
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e -3
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.obj_check
push.v self.obj_check
pushi.e -4
cmp.i.v NEQ
bf [18]

:[8]
pushi.e 0
pop.v.i self.visiblecheck
push.v self.show_invisible
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.visiblecheck
b [12]

:[10]
push.v self.obj_check
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.visiblecheck

:[12]
push.v self.visiblecheck
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.obj_check
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.obj_check
pop.v.v self.selected_object

:[17]
b [19]

:[18]
pushi.e -898
pop.v.i self.selected_object

:[19]
pushi.e 893
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[20]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 893
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.obj_check
push.v self.obj_check
pushi.e -4
cmp.i.v NEQ
bf [30]

:[21]
pushi.e 0
pop.v.i self.visiblecheck
push.v self.show_invisible
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i self.visiblecheck
b [25]

:[23]
push.v self.obj_check
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.visiblecheck

:[25]
push.v self.visiblecheck
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.obj_check
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.v self.obj_check
pop.v.v self.selected_object

:[30]
push.v self.main_focus
conv.v.b
bf [44]

:[31]
pushi.e 1
conv.i.v
call.i mouse_check_button(argc=1)
conv.v.b
bf [33]

:[32]
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [34]

:[33]
push.e 0

:[34]
bf [43]

:[35]
push.v self.mouse_held
push.e 1
add.i.v
pop.v.v self.mouse_held
pushi.e 5
pop.v.i self.mouse_held_minimum
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 893
cmp.i.v EQ
bf [37]

:[36]
pushi.e 15
pop.v.i self.mouse_held_minimum

:[37]
push.v self.mouse_held
push.v self.mouse_held_minimum
cmp.v.v GTE
bf [39]

:[38]
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.v self.x
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.selected_object
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.selected_object
pushi.e -9
pop.v.v [stacktop]self.y

:[42]
b [44]

:[43]
pushi.e 0
pop.v.i self.mouse_held

:[44]
pushi.e 34
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [49]

:[45]
push.v self.show_all_object_xy
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i self.show_all_object_xy
b [48]

:[47]
pushi.e 1
pop.v.i self.show_all_object_xy

:[48]
pushi.e 0
pop.v.i self.mouse_held

:[49]
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [51]

:[50]
pushi.e 80
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
not.b
b [52]

:[51]
push.e 0

:[52]
bf [63]

:[53]
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e -1
cmp.i.v NEQ
bf [63]

:[54]
push.v self.selected_object
pop.v.v self.os
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [56]

:[55]
push.v self.os
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.y

:[56]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [58]

:[57]
push.v self.os
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[58]
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [60]

:[59]
push.v self.os
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 1
add.i.v
pop.i.v [stacktop]self.y

:[60]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [62]

:[61]
push.v self.os
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x

:[62]
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
push.d 0.5
add.d.v
push.v self.os
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.os
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.os
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.os
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.os
pushi.e -9
push.v [stacktop]self.y
push.v self.os
pushi.e -9
push.v [stacktop]self.x
push.v self.os
pushi.e -9
push.v [stacktop]self.image_index
push.v self.os
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[63]
pushi.e 33
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [66]

:[64]
push.v self.xy_camera_relative
push.e 1
add.i.v
pop.v.v self.xy_camera_relative
push.v self.xy_camera_relative
pushi.e 3
cmp.i.v GTE
bf [66]

:[65]
pushi.e 0
pop.v.i self.xy_camera_relative

:[66]
pushi.e 46
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [71]

:[67]
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [71]

:[68]
push.v self.selected_object
pushi.e -9
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
pushi.e -999
pop.v.i self.selected_object

:[71]
pushi.e 86
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [75]

:[72]
push.v self.show_invisible
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
pop.v.i self.show_invisible
b [75]

:[74]
pushi.e 0
pop.v.i self.show_invisible

:[75]
push.v self.siner
pushi.e 5
cmp.i.v GTE
bf [77]

:[76]
pushi.e 3
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
b [78]

:[77]
push.e 0

:[78]
bf [82]

:[79]
call.i instance_destroy(argc=0)
popz.v
pushi.e 918
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]

:[82]
push.v self.show_all_object_xy
pushi.e 1
cmp.i.v EQ
bf [107]

:[83]
pushi.e 0
pop.v.i self.i

:[84]
push.v self.i
pushbltn.v builtin.instance_count
cmp.v.v LT
bf [107]

:[85]
push.v self.i
call.i instance_id_get(argc=1)
pop.v.v self.findo
push.v self.findo
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [106]

:[86]
pushi.e 0
pop.v.i self.visiblecheck
push.v self.show_invisible
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
pushi.e 1
pop.v.i self.visiblecheck
b [90]

:[88]
push.v self.findo
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
pop.v.i self.visiblecheck

:[90]
push.v self.visiblecheck
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.v self.findo
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e -1
cmp.i.v NEQ
b [93]

:[92]
push.e 0

:[93]
bf [106]

:[94]
push.v self.findo
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.fox
push.v self.findo
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.foy
push.v self.xy_camera_relative
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.v self.fox
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self.fox
push.v self.foy
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self.foy

:[96]
push.v self.xy_camera_relative
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.v self.fox
push.v self.findo
pushi.e -9
push.v [stacktop]self.xstart
sub.v.v
pop.v.v self.fox
push.v self.foy
push.v self.findo
pushi.e -9
push.v [stacktop]self.ystart
sub.v.v
pop.v.v self.foy

:[98]
pushi.e 1
pop.v.b self.draw_info
push.v self.findo
pushi.e -9
push.v [stacktop]self.object_index
push.v self.object_index
cmp.v.v EQ
bf [100]

:[99]
pushi.e 0
pop.v.b self.draw_info

:[100]
push.v self.findo
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 248
cmp.i.v EQ
bf [102]

:[101]
pushi.e 0
pop.v.b self.draw_info

:[102]
push.v self.findo
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 364
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
pop.v.b self.draw_info

:[104]
push.v self.draw_info
pushi.e 1
cmp.b.v EQ
bf [106]

:[105]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.y
push.v self.findo
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
add.i.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.y
pushi.e 32
sub.i.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.x
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.object_index
call.i object_get_name(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.findo
pushi.e -9
push.v [stacktop]self.y
pushi.e 32
sub.i.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.x
call.i draw_text(argc=3)
popz.v
push.v self.fox
call.i string(argc=1)
push.s " , "@29801
add.s.v
push.v self.foy
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.findo
pushi.e -9
push.v [stacktop]self.y
pushi.e 16
sub.i.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.x
call.i draw_text(argc=3)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.findo
pushi.e -9
push.v [stacktop]self.bbox_bottom
push.v self.findo
pushi.e -9
push.v [stacktop]self.bbox_right
push.v self.findo
pushi.e -9
push.v [stacktop]self.bbox_top
push.v self.findo
pushi.e -9
push.v [stacktop]self.bbox_left
call.i draw_rectangle(argc=5)
popz.v

:[106]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [84]

:[107]
push.v self.show_all_object_xy
pushi.e 1
cmp.i.v EQ
bf [113]

:[108]
push.v self.x
pop.v.v self.fox
push.v self.y
pop.v.v self.foy
push.v self.xy_camera_relative
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.v self.fox
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self.fox
push.v self.foy
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self.foy

:[110]
push.v self.xy_camera_relative
pushi.e 2
cmp.i.v EQ
bf [112]

:[111]
push.v self.fox
push.v self.xstart
sub.v.v
pop.v.v self.fox
push.v self.foy
push.v self.ystart
sub.v.v
pop.v.v self.foy

:[112]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
push.v self.x
pushi.e 60
add.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.fox
call.i string(argc=1)
push.s " , "@29801
add.s.v
push.v self.foy
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v

:[113]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 5
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i draw_line_width(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 3
add.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.siner
pushi.e 6
mul.i.v
call.i make_color_hsv(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 3
add.i.v
push.v self.y
pushi.e 7
add.i.v
push.v self.x
pushi.e 7
add.i.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 0
pop.v.i self.old_right_click
push.v self.old_right_click
conv.v.b
not.b
bf [124]

:[114]
pushi.e 2
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
bf [124]

:[115]
pushi.e 0
pop.v.i self.main_focus
pushi.e 918
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [121]

:[116]
pushi.e 918
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [118]

:[117]
pushi.e 1
pop.v.i 918.type

:[118]
pushi.e 918
pushenv [120]

:[119]
pushi.e 15
conv.i.v
call.i event_user(argc=1)
popz.v

:[120]
popenv [119]
b [124]

:[121]
pushi.e 918
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]

:[124]
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[125]
push.v self.selected_object
pop.v.v self.so
push.v self.so
pushi.e -9
push.v [stacktop]self.object_index
call.i object_get_parent(argc=1)
pushi.e 392
cmp.i.v EQ
bf [136]

:[126]
push.v self.enable_mouse_wheel
conv.v.b
bf [136]

:[127]
call.i mouse_wheel_up(argc=0)
conv.v.b
bt [129]

:[128]
call.i mouse_wheel_down(argc=0)
conv.v.b
b [130]

:[129]
push.e 1

:[130]
bf [136]

:[131]
push.v self.so
pushi.e -9
pushenv [135]

:[132]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [134]

:[133]
pushi.e 3
pop.v.i self.state
pushi.e 2
pop.v.i self.shakex
pushi.e 10
pop.v.i self.hurttimer
b [135]

:[134]
pushi.e 0
pop.v.i self.state

:[135]
popenv [132]

:[136]
push.v self.so
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 893
cmp.i.v EQ
bf [end]

:[137]
call.i mouse_wheel_up(argc=0)
conv.v.b
bf [139]

:[138]
push.v self.enable_mouse_wheel
conv.v.b
b [140]

:[139]
push.e 0

:[140]
bf [146]

:[141]
push.v self.so
pushi.e -9
pushenv [145]

:[142]
push.v self.specialspriteno
pushi.e 9
cmp.i.v LT
bf [144]

:[143]
push.v self.specialspriteno
push.e 1
add.i.v
pop.v.v self.specialspriteno
pushi.e -1
push.v self.specialspriteno
conv.v.i
push.v [array]self.specialsprite
pop.v.v self.sprite_index
b [145]

:[144]
pushi.e 0
pop.v.i self.specialspriteno
push.v self.dsprite
pop.v.v self.sprite_index

:[145]
popenv [142]

:[146]
call.i mouse_wheel_down(argc=0)
conv.v.b
bf [148]

:[147]
push.v self.enable_mouse_wheel
conv.v.b
b [149]

:[148]
push.e 0

:[149]
bf [155]

:[150]
push.v self.so
pushi.e -9
pushenv [154]

:[151]
push.v self.specialspriteno
pushi.e 0
cmp.i.v GT
bf [153]

:[152]
push.v self.specialspriteno
push.e 1
sub.i.v
pop.v.v self.specialspriteno
pushi.e -1
push.v self.specialspriteno
conv.v.i
push.v [array]self.specialsprite
pop.v.v self.sprite_index
b [154]

:[153]
pushi.e 9
pop.v.i self.specialspriteno
pushi.e -1
push.v self.specialspriteno
conv.v.i
push.v [array]self.specialsprite
pop.v.v self.sprite_index

:[154]
popenv [151]

:[155]
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [157]

:[156]
pushi.e 1
pop.v.i self.cardinal_grid_align
b [158]

:[157]
pushi.e 0
pop.v.i self.cardinal_grid_align

:[158]
push.v self.old_right_click
conv.v.b
bf [164]

:[159]
pushi.e 2
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
bf [161]

:[160]
push.v self.mousebuffer
pushi.e 0
cmp.i.v LT
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
pushi.e 0
pop.v.i self.cardinal_grid_align
push.s "d"@6706
pop.v.s self.thiscardinal
push.v self.so
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.actor_debug_xstart
push.v self.so
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.actor_debug_ystart

:[164]
push.v self.old_right_click
conv.v.b
bf [183]

:[165]
pushi.e 2
conv.i.v
call.i mouse_check_button(argc=1)
conv.v.b
bf [167]

:[166]
push.v self.mousebuffer
pushi.e 0
cmp.i.v LT
b [168]

:[167]
push.e 0

:[168]
bf [183]

:[169]
push.v self.y
push.v self.x
push.v self.so
pushi.e -9
push.v [stacktop]self.y
push.v self.so
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pop.v.v self.dir_from_actor
push.v self.dir_from_actor
call.i gml_Script_scr_get_cardinal_direction(argc=1)
pop.v.v self.thiscardinal
push.v self.cardinal_grid_align
pushi.e 1
cmp.i.v EQ
bf [180]

:[170]
push.v self.thiscardinal
push.s "d"@6706
cmp.s.v EQ
bt [172]

:[171]
push.v self.thiscardinal
push.s "u"@6708
cmp.s.v EQ
b [173]

:[172]
push.e 1

:[173]
bf [175]

:[174]
push.v self.so
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x

:[175]
push.v self.thiscardinal
push.s "r"@6696
cmp.s.v EQ
bt [177]

:[176]
push.v self.thiscardinal
push.s "l"@6707
cmp.s.v EQ
b [178]

:[177]
push.e 1

:[178]
bf [180]

:[179]
push.v self.so
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[180]
push.v self.x
pop.v.v self.actor_debug_x
push.v self.y
pop.v.v self.actor_debug_y
push.v self.thiscardinal
push.v self.so
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.cardinal_grid_align
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[182]
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
push.v self.so
pushi.e -9
push.v [stacktop]self.y
push.v self.so
pushi.e -9
push.v [stacktop]self.x
call.i draw_arrow(argc=5)
popz.v
push.d 0.5
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.so
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.so
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.so
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.so
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.y
push.v self.x
push.v self.so
pushi.e -9
push.v [stacktop]self.image_index
push.v self.so
pushi.e -9
push.v [stacktop]self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[183]
push.v self.old_right_click
conv.v.b
bf [205]

:[184]
pushi.e 2
conv.i.v
call.i mouse_check_button_released(argc=1)
conv.v.b
bf [186]

:[185]
push.v self.mousebuffer
pushi.e 0
cmp.i.v LT
b [187]

:[186]
push.e 0

:[187]
bf [205]

:[188]
push.v self.y
push.v self.x
push.v self.so
pushi.e -9
push.v [stacktop]self.y
push.v self.so
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pop.v.v self.dir_from_actor
push.v self.dir_from_actor
call.i gml_Script_scr_get_cardinal_direction(argc=1)
pop.v.v self.thiscardinal
push.v self.cardinal_grid_align
pushi.e 1
cmp.i.v EQ
bf [199]

:[189]
push.v self.thiscardinal
push.s "d"@6706
cmp.s.v EQ
bt [191]

:[190]
push.v self.thiscardinal
push.s "u"@6708
cmp.s.v EQ
b [192]

:[191]
push.e 1

:[192]
bf [194]

:[193]
push.v self.so
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x

:[194]
push.v self.thiscardinal
push.s "r"@6696
cmp.s.v EQ
bt [196]

:[195]
push.v self.thiscardinal
push.s "l"@6707
cmp.s.v EQ
b [197]

:[196]
push.e 1

:[197]
bf [199]

:[198]
push.v self.so
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[199]
push.v self.actor_previously_selected
push.v self.so
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [201]

:[200]
push.v self.totalstring
push.s "c_sel("@29810
push.v self.so
pushi.e -9
push.v [stacktop]self.number
call.i string(argc=1)
add.v.s
push.s ") //select "@29811
add.s.v
push.v self.so
pushi.e -9
push.v [stacktop]self.name
add.v.v
push.s " \\n"@29812
add.s.v
add.v.v
pop.v.v self.totalstring

:[201]
push.v self.so
pushi.e -9
push.v [stacktop]self.number
pop.v.v self.actor_previously_selected
pushi.e 4
pop.v.i self._speed
pushi.e 40
pop.v.i self._time
push.v self.y
push.v self.x
push.v self.so
pushi.e -9
push.v [stacktop]self.y
push.v self.so
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pop.v.v self._realdist
push.v self._realdist
push.v self._speed
div.v.v
pop.v.v self._realtime
push.v self.cardinal_grid_align
pushi.e 1
cmp.i.v EQ
bf [203]

:[202]
push.v self.totalstring
push.s "c_walk_wait(\""@29817
push.v self.thiscardinal
add.v.s
push.s "\""@14552
add.s.v
push.s ","@6157
add.s.v
push.v self._speed
call.i string(argc=1)
add.v.v
push.s ","@6157
add.s.v
push.v self._realtime
call.i string(argc=1)
add.v.v
push.s ") //move "@29818
add.s.v
push.v self.so
pushi.e -9
push.v [stacktop]self.name
add.v.v
push.s " "@353
add.s.v
push.v self._realdist
call.i string(argc=1)
add.v.v
push.s " pixels\\n"@29819
add.s.v
add.v.v
pop.v.v self.totalstring
b [204]

:[203]
push.v self.totalstring
push.s "c_walkdirect_wait("@29820
push.v self.x
call.i string(argc=1)
add.v.s
push.s ","@6157
add.s.v
push.v self.y
call.i string(argc=1)
add.v.v
push.s ","@6157
add.s.v
push.v self._realtime
call.i ceil(argc=1)
call.i string(argc=1)
add.v.v
push.s ")//move"@29821
add.s.v
push.v self.so
pushi.e -9
push.v [stacktop]self.name
add.v.v
push.s " \\n"@29812
add.s.v
add.v.v
pop.v.v self.totalstring

:[204]
push.v self.totalstring
call.i clipboard_set_text(argc=1)
popz.v
push.v self.thiscardinal
push.v self.so
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
push.v self.x
push.v self.so
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.so
pushi.e -9
pop.v.v [stacktop]self.y
push.s "Copied to clipboard"@29823
pop.v.s self.copymessage
pushi.e 15
pop.v.i self.copybuffer
pushi.e 3
pop.v.i self.mousebuffer

:[205]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [207]

:[206]
push.v self.totalstring
push.s "c_wait(30)\\n"@29825
add.s.v
pop.v.v self.totalstring
push.s "Wait command copied"@29826
pop.v.s self.copymessage
pushi.e 15
pop.v.i self.copybuffer

:[207]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [209]

:[208]
push.v self.totalstring
push.s "c_msgset(0,\"* Text/%\")\\nc_talk_wait()\\n"@29827
add.s.v
pop.v.v self.totalstring
push.s "Dialogue command copied"@29828
pop.v.s self.copymessage
pushi.e 15
pop.v.i self.copybuffer

:[209]
pushi.e 81
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [213]

:[210]
push.v self.actor_previously_selected
push.v self.so
pushi.e -9
push.v [stacktop]self.number
cmp.v.v NEQ
bf [212]

:[211]
push.v self.totalstring
push.s "c_sel("@29810
push.v self.so
pushi.e -9
push.v [stacktop]self.number
call.i string(argc=1)
add.v.s
push.s ") //select "@29811
add.s.v
push.v self.so
pushi.e -9
push.v [stacktop]self.name
add.v.v
push.s " \\n"@29812
add.s.v
add.v.v
pop.v.v self.totalstring

:[212]
push.v self.so
pushi.e -9
push.v [stacktop]self.number
pop.v.v self.actor_previously_selected
push.v self.totalstring
push.s "c_specialsprite("@29829
push.v self.so
pushi.e -9
push.v [stacktop]self.specialspriteno
call.i string(argc=1)
add.v.s
push.s ")\\n"@29830
add.s.v
add.v.v
pop.v.v self.totalstring
push.s "Sprite change copied"@29831
pop.v.s self.copymessage
pushi.e 15
pop.v.i self.copybuffer

:[213]
pushi.e 80
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [217]

:[214]
call.i gml_Script_camerax(argc=0)
pop.v.v self.panremx
call.i gml_Script_cameray(argc=0)
pop.v.v self.panremy
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [217]

:[215]
push.v 82.cutscene
pushi.e 0
cmp.i.v EQ
bf [217]

:[216]
pushi.e 1
pop.v.i 82.cutscene
push.v self.totalstring
push.s "c_pannable(1)\\n"@29832
add.s.v
pop.v.v self.totalstring
push.s "Panning enabled!"@29833
pop.v.s self.copymessage
pushi.e 5
pop.v.i self.copybuffer

:[217]
pushi.e 80
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [229]

:[218]
pushi.e 0
pop.v.i self.cameraxadd
pushi.e 0
pop.v.i self.camerayadd
pushi.e 2
pop.v.i self.cameraspeed
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [220]

:[219]
pushi.e 4
pop.v.i self.cameraspeed

:[220]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [222]

:[221]
push.v self.cameraspeed
pop.v.v self.cameraxadd

:[222]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [224]

:[223]
push.v self.cameraspeed
neg.v
pop.v.v self.cameraxadd

:[224]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [226]

:[225]
push.v self.cameraspeed
neg.v
pop.v.v self.camerayadd

:[226]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [228]

:[227]
push.v self.cameraspeed
pop.v.v self.camerayadd

:[228]
call.i gml_Script_camerax(argc=0)
push.v self.cameraxadd
add.v.v
call.i gml_Script_camerax_set(argc=1)
popz.v
call.i gml_Script_cameray(argc=0)
push.v self.camerayadd
add.v.v
call.i gml_Script_cameray_set(argc=1)
popz.v

:[229]
pushi.e 80
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [235]

:[230]
call.i gml_Script_camerax(argc=0)
push.v self.panremx
cmp.v.v NEQ
bt [232]

:[231]
call.i gml_Script_cameray(argc=0)
push.v self.panremy
cmp.v.v NEQ
b [233]

:[232]
push.e 1

:[233]
bf [235]

:[234]
call.i gml_Script_camerax(argc=0)
push.v self.panremx
sub.v.v
pop.v.v self.pandiffx
call.i gml_Script_cameray(argc=0)
push.v self.panremy
sub.v.v
pop.v.v self.pandiffy
push.v self.totalstring
push.s "c_panspeed_wait("@29839
push.v self.pandiffx
pushi.e 40
conv.i.d
div.d.v
call.i string(argc=1)
add.v.s
push.s ","@6157
add.s.v
push.v self.pandiffy
pushi.e 40
conv.i.d
div.d.v
call.i string(argc=1)
add.v.v
push.s ",40) //pan amount: "@29840
add.s.v
push.v self.pandiffx
call.i string(argc=1)
add.v.v
push.s ","@6157
add.s.v
push.v self.pandiffy
call.i string(argc=1)
add.v.v
add.v.v
pop.v.v self.totalstring
push.v self.totalstring
push.s " // panned to: "@29841
call.i gml_Script_camerax(argc=0)
call.i string(argc=1)
add.v.s
push.s ","@6157
add.s.v
call.i gml_Script_cameray(argc=0)
call.i string(argc=1)
add.v.v
push.s "  \\n"@29842
add.s.v
add.v.v
pop.v.v self.totalstring
push.s "Pan copied!"@29843
pop.v.s self.copymessage
pushi.e 15
pop.v.i self.copybuffer
call.i gml_Script_camerax(argc=0)
pop.v.v self.panremx
call.i gml_Script_cameray(argc=0)
pop.v.v self.panremy

:[235]
push.v self.copybuffer
pushi.e 0
cmp.i.v GT
bf [end]

:[236]
push.v self.copybuffer
pushi.e 15
cmp.i.v EQ
bf [238]

:[237]
push.v self.totalstring
call.i clipboard_set_text(argc=1)
popz.v

:[238]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.copybuffer
pushi.e 1
sub.i.v
pop.v.v self.copybuffer
push.v self.copymessage
call.i string_hash_to_newline(argc=1)
push.v self.y
push.v self.x
call.i draw_text(argc=3)
popz.v

:[end]