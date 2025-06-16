.localvar 2 arguments
.localvar 36523 _buffer 18097
.localvar 36527 _sideways 18099
.localvar 11051 __x 18100
.localvar 11052 __y 18101
.localvar 112 __yy 18102
.localvar 111 __xx 18103
.localvar 9183 _xx 18104
.localvar 9185 _yy 18105
.localvar 36528 _currentState 18106
.localvar 36529 _easedLerp 18107
.localvar 36530 sprite_pos_left 18108
.localvar 36533 move_text 18109
.localvar 36534 sprite_pos 18110
.localvar 10449 _sprite 18111
.localvar 36537 rotate_text 18112

:[0]
push.v self.setupComplete
conv.v.b
not.b
bf [2]

:[1]
push.v self.puzzleSize
push.v self.puzzleSize
call.i surface_create(argc=2)
pop.v.v self.puzzleSurfState
push.v self.puzzleSurfState
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.puzzleSize
push.v self.puzzleSize
mul.v.v
pushi.e 4
mul.i.v
call.i buffer_create(argc=3)
pop.v.v local._buffer
pushi.e 0
conv.i.v
push.v self.puzzleSurfState
pushloc.v local._buffer
call.i buffer_get_surface(argc=3)
popz.v
pushloc.v local._buffer
call.i buffer_get_size(argc=1)
pushi.e 0
conv.i.v
pushloc.v local._buffer
call.i buffer_md5(argc=3)
pop.v.v self.bufferGoal
pushloc.v local._buffer
call.i buffer_delete(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 1
pop.v.b self.setupComplete

:[2]
push.v self.insideOnly
conv.v.b
bf [6]

:[3]
push.v self.setupComplete
conv.v.b
bf [6]

:[4]
push.v self.goalCheck
conv.v.b
bf [6]

:[5]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [29]

:[8]
pushi.e 1109
pushenv [28]

:[9]
push.v self.image_index
pushi.e 6
cmp.i.v EQ
bf [21]

:[10]
push.v self.image_angle
pushi.e 180
mod.i.v
pushi.e 0
cmp.i.v NEQ
pop.v.b local._sideways
push.v self.x
pop.v.v local.__x
push.v self.y
pop.v.v local.__y
push.v self.y
pop.v.v local.__yy
push.v self.x
pop.v.v local.__xx
pushloc.v local._sideways
conv.v.b
bf [12]

:[11]
push.v self.x
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 20
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.__x
push.v self.y
push.v self.image_angle
pushi.e 108
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.__yy
push.v self.x
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 106
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.__xx
b [13]

:[12]
push.v self.y
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 20
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.__y
push.v self.x
push.v self.image_angle
pushi.e 108
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.__xx
push.v self.y
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 106
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.__yy

:[13]
pushloc.v local.__x
pushloc.v local.__xx
call.i min(argc=2)
push.v other.x
cmp.v.v LT
bt [17]

:[14]
pushloc.v local.__x
pushloc.v local.__xx
call.i max(argc=2)
push.v other.x
push.v other.puzzleSize
add.v.v
cmp.v.v GT
bt [17]

:[15]
pushloc.v local.__y
pushloc.v local.__yy
call.i min(argc=2)
push.v other.y
cmp.v.v LT
bt [17]

:[16]
pushloc.v local.__y
pushloc.v local.__yy
call.i max(argc=2)
push.v other.y
push.v other.puzzleSize
add.v.v
cmp.v.v GT
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 0
pop.v.b other.goalCheck

:[20]
b [28]

:[21]
push.v self.x
push.v other.x
cmp.v.v LT
bt [25]

:[22]
push.v self.x
push.v other.x
push.v other.puzzleSize
add.v.v
cmp.v.v GT
bt [25]

:[23]
push.v self.y
push.v other.y
cmp.v.v LT
bt [25]

:[24]
push.v self.y
push.v other.y
push.v other.puzzleSize
add.v.v
cmp.v.v GT
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 0
pop.v.b other.goalCheck

:[28]
popenv [9]

:[29]
push.v self.setupComplete
conv.v.b
bf [31]

:[30]
push.v self.goalCheck
conv.v.b
b [32]

:[31]
push.e 0

:[32]
bf [53]

:[33]
push.v self.puzzleSurfState
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [35]

:[34]
push.v self.puzzleSize
push.v self.puzzleSize
call.i surface_create(argc=2)
pop.v.v self.puzzleSurfState

:[35]
push.v self.x
pop.v.v local._xx
push.v self.y
pop.v.v local._yy
push.v self.puzzleSurfState
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 1109
pushenv [37]

:[36]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local._yy
sub.v.v
push.v self.x
pushloc.v local._xx
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[37]
popenv [36]
call.i surface_reset_target(argc=0)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.puzzleSize
push.v self.puzzleSize
mul.v.v
pushi.e 4
mul.i.v
call.i buffer_create(argc=3)
pop.v.v local._buffer
pushi.e 0
conv.i.v
push.v self.puzzleSurfState
pushloc.v local._buffer
call.i buffer_get_surface(argc=3)
popz.v
pushloc.v local._buffer
call.i buffer_get_size(argc=1)
pushi.e 0
conv.i.v
pushloc.v local._buffer
call.i buffer_md5(argc=3)
pop.v.v local._currentState
pushloc.v local._currentState
push.v self.bufferGoal
cmp.v.v EQ
bf [52]

:[38]
pushi.e 45
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.b self.goalHit
pushi.e 0
pop.v.b self.goalCheck
pushi.e 1109
pushenv [40]

:[39]
pushi.e 1
pop.v.b self.slowOff

:[40]
popenv [39]
pushbltn.v builtin.room
pushi.e 163
cmp.i.v EQ
bf [44]

:[41]
pushi.e 960
pushenv [43]

:[42]
pushi.e 20
pop.v.i self.con

:[43]
popenv [42]

:[44]
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bf [48]

:[45]
pushi.e 961
pushenv [47]

:[46]
pushi.e 20
pop.v.i self.con

:[47]
popenv [46]

:[48]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
bf [52]

:[49]
pushi.e 962
pushenv [51]

:[50]
pushi.e 20
pop.v.i self.con

:[51]
popenv [50]

:[52]
pushloc.v local._buffer
call.i buffer_delete(argc=1)
popz.v

:[53]
push.d 0.25
conv.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.goalHit
conv.v.b
bf [60]

:[54]
push.d 0.2
conv.d.v
push.d 0.7
conv.d.v
push.v self.finalGlow
call.i lerp(argc=3)
pop.v.v self.finalGlow
push.v self.finalGlow
push.d 0.69
cmp.d.v GT
bf [56]

:[55]
push.d 0.7
pop.v.d self.finalGlow

:[56]
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.v self.finalGlow
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1109
pushenv [59]

:[57]
push.v self.slowOff
conv.v.b
not.b
bf [59]

:[58]
pushi.e 0
pop.v.b self.visible

:[59]
popenv [57]

:[60]
push.v self.instructionLerp
pushi.e 0
cmp.i.v GT
bt [62]

:[61]
push.v self.inUse
conv.v.b
b [63]

:[62]
push.e 1

:[63]
bf [end]

:[64]
push.v self.goalHit
conv.v.b
bf [66]

:[65]
pushi.e 0
pop.v.i self.instructionLerp
b [73]

:[66]
push.v self.instructionLerp
pushi.e 1
cmp.i.v LT
bf [68]

:[67]
push.v self.inUse
conv.v.b
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.instructionLerp
push.d 0.1
add.d.v
pop.v.v self.instructionLerp
b [73]

:[71]
push.v self.inUse
conv.v.b
not.b
bf [73]

:[72]
push.v self.instructionLerp
push.d 0.1
sub.d.v
pop.v.v self.instructionLerp

:[73]
pushi.e 3
conv.i.v
push.v self.instructionLerp
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v local._easedLerp
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bt [75]

:[74]
push.v 1112.gamepad_active
conv.v.b
b [76]

:[75]
push.e 1

:[76]
bf [78]

:[77]
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
add.v.v
pop.v.v local.sprite_pos_left
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushi.e 2
add.i.v
pushloc.v local.sprite_pos_left
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 3
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushi.e 2
add.i.v
pushloc.v local.sprite_pos_left
pushi.e 26
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 0
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushi.e 2
add.i.v
pushloc.v local.sprite_pos_left
pushi.e 52
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 2
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushi.e 2
add.i.v
pushloc.v local.sprite_pos_left
pushi.e 78
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 1
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
push.s "obj_shapepuzzle_slash_Draw_0_gml_181_0"@36531
conv.s.v
push.s "#Move"@36532
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.move_text
pushloc.v local.move_text
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
add.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
sub.v.v
pushi.e 125
sub.i.v
pop.v.v local.sprite_pos
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 4
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pop.v.v local._sprite
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushi.e 2
add.i.v
pushloc.v local.sprite_pos
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 5
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pop.v.v local._sprite
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushi.e 32
add.i.v
pushloc.v local.sprite_pos
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_shapepuzzle_slash_Draw_0_gml_192_0"@36535
conv.s.v
push.s "Rotate#Quit"@36536
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.rotate_text
pushloc.v local.rotate_text
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
pushloc.v local.sprite_pos
pushi.e 35
add.i.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
b [end]

:[78]
push.s "obj_shapepuzzle_slash_Draw_0_gml_171_0"@36538
conv.s.v
push.s "[Arrows]#Move"@36539
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
add.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_shapepuzzle_slash_Draw_0_gml_173_0"@36540
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1 Rotate#~2 Quit"@36541
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
pushloc.v local._easedLerp
pushi.e 100
mul.i.v
sub.v.v
call.i gml_Script_scr_84_draw_text_outline(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]