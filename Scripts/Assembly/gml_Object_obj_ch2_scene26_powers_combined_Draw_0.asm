.localvar 2 arguments

:[0]
push.v self.glow_in_out
pushi.e 0
cmp.i.v NEQ
bf [9]

:[1]
push.d 0.35
conv.d.v
pushi.e 1
conv.i.v
push.v self.glow_lerp
call.i lerp(argc=3)
pushi.e 100
mul.i.v
call.i round(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.glow_lerp
push.v self.glow_in_out
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.glow_lerp
push.v self.recruit_col
pushi.e 2
conv.i.v
call.i gml_Script_scr_draw_outline(argc=3)
popz.v
b [4]

:[3]
pushi.e 1
push.v self.glow_lerp
sub.v.i
push.v self.recruit_col
pushi.e 2
conv.i.v
call.i gml_Script_scr_draw_outline(argc=3)
popz.v

:[4]
push.v self.glow_lerp
push.d 0.95
cmp.d.v GTE
bf [9]

:[5]
push.v self.glow_in_out
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
pop.v.i self.glow_in_out
b [8]

:[7]
pushi.e 0
pop.v.i self.glow_in_out

:[8]
pushi.e 0
pop.v.i self.glow_lerp

:[9]
push.v self.fade_in_out
conv.v.b
bf [16]

:[10]
pushi.e 1
conv.i.v
push.v self.color_lerp
push.v self.end_color
push.v self.start_color
call.i merge_color(argc=3)
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
push.v self.glow_in_out
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.color_lerp
push.d 0.35
cmp.d.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.glow_in_out
pushi.e 0
pop.v.i self.glow_lerp

:[15]
b [17]

:[16]
call.i draw_self(argc=0)
popz.v

:[17]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [23]

:[18]
push.v self.big_square
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[19]
push.v self.shine_timer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_clamp01(argc=1)
push.v self.big_square
pushi.e -9
pop.v.v [stacktop]self.image_alpha
b [21]

:[20]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
popz.v

:[21]
push.v self.shine_timer
push.e 1
add.i.v
pop.v.v self.shine_timer
push.v self.shine_timer
pushi.e 30
cmp.i.v EQ
bf [23]

:[22]
pushi.e 3
pop.v.i self.thrash_con

:[23]
push.v self.con
pushi.e 5
cmp.i.v GTE
bt [28]

:[24]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.v self.shine_timer
pushi.e 40
cmp.i.v GTE
b [27]

:[26]
push.e 0

:[27]
b [29]

:[28]
push.e 1

:[29]
bf [end]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
popz.v
push.v self.streak_timer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 15379086
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
sub.i.v
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.depth

:[32]
push.v self.streak_timer
pushi.e 24
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [34]

:[33]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 15379086
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
sub.i.v
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.depth

:[34]
push.v self.streak_timer
pushi.e 44
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 15379086
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
sub.i.v
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.depth

:[36]
push.v self.streak_timer
pushi.e 14
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [38]

:[37]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 620
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 15379086
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
sub.i.v
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.depth

:[38]
push.v self.streak_timer
pushi.e 34
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [40]

:[39]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 620
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 15379086
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
sub.i.v
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.depth

:[40]
push.v self.streak_timer
pushi.e 44
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [42]

:[41]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 620
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 15379086
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
sub.i.v
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.depth

:[42]
push.v self.streak_timer
push.e 1
add.i.v
pop.v.v self.streak_timer
push.v self.streak_timer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [end]

:[43]
pushi.e 0
pop.v.i self.streak_timer

:[end]