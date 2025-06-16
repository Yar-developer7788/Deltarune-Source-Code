.localvar 2 arguments

:[0]
push.s "No object!#MouseL:Choose&Drag#MouseR:Drag From Anchor"@29767
pop.v.s self._selected_string
push.v self.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[1]
push.v self.selected_object
pop.v.v self.so
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.sox
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.soy
push.v self.xy_camera_relative
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.sox
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self.sox

:[3]
push.v self.xy_camera_relative
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.soy
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v self.soy

:[5]
push.v self.xy_camera_relative
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.sox
push.v self.so
pushi.e -9
push.v [stacktop]self.xstart
sub.v.v
pop.v.v self.sox

:[7]
push.v self.xy_camera_relative
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.soy
push.v self.so
pushi.e -9
push.v [stacktop]self.ystart
sub.v.v
pop.v.v self.soy

:[9]
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.object_index
call.i object_get_name(argc=1)
pop.v.v self._selected_string
push.v self._selected_string
push.s " X: "@29771
push.v self.sox
call.i string(argc=1)
add.v.s
push.s " Y: "@29772
add.s.v
push.v self.soy
call.i string(argc=1)
add.v.v
add.v.v
pop.v.v self._selected_string
push.v self._selected_string
push.s "#Depth: "@29773
push.v self.selected_object
pushi.e -9
push.v [stacktop]self.depth
call.i string(argc=1)
add.v.s
add.v.v
pop.v.v self._selected_string
push.v self._selected_string
push.s "#Arrows: Move Precisely"@29774
add.s.v
pop.v.v self._selected_string

:[10]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 120
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self._selected_string
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "obj_debug_xy_slash_Draw_74_gml_26_0"@29775
conv.s.v
push.s "PgDown: Show All Info"@29776
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 330
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_debug_xy_slash_Draw_74_gml_27_0"@29777
conv.s.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i string(argc=1)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i string(argc=1)
push.s "CameraX: ~1 CameraY: ~2"@29778
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
pushi.e 20
conv.i.v
pushi.e 330
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.show_invisible
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_debug_xy_slash_Draw_74_gml_28_0"@29779
conv.s.v
push.s "Show Invisible"@29780
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 40
conv.i.v
pushi.e 330
conv.i.v
call.i draw_text(argc=3)
popz.v

:[12]
push.s "obj_debug_xy_slash_Draw_74_gml_29_0_b"@29781
conv.s.v
pushbltn.v builtin.instance_count
call.i string(argc=1)
push.s "instance_count: ~1"@29783
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 60
conv.i.v
pushi.e 330
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_debug_xy_slash_Draw_74_gml_29_0"@29784
conv.s.v
push.s "PgUp: XY Camera-Relative"@29785
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.xy_camera_relative
pushi.e 1
cmp.i.v GTE
bf [end]

:[13]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.xy_camera_relative
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_debug_xy_slash_Draw_74_gml_33_0"@29786
conv.s.v
push.s "XY is camera-relative!"@29787
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 20
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v

:[15]
push.v self.xy_camera_relative
pushi.e 2
cmp.i.v EQ
bf [end]

:[16]
push.s "obj_debug_xy_slash_Draw_74_gml_34_0"@29788
conv.s.v
push.s "XY is StartXY relative!"@29789
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 20
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]