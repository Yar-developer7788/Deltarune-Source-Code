.localvar 2 arguments
.localvar 6229 offset 16823

:[0]
push.v self.head_init
conv.v.b
bf [end]

:[1]
push.v self.static_happened
conv.v.b
bf [3]

:[2]
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
pushi.e 123
conv.i.v
pushi.e 252
conv.i.v
pushi.e 0
conv.i.v
pushi.e 343
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
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
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 360
add.i.v
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
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
push.v self.head_y_pos
push.v self.head_x_pos
push.v self.anim_index
push.v self.head_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.v self.static_start
conv.v.b
not.b
bf [end]

:[4]
push.v self.head_sprite
pushi.e 2557
cmp.i.v EQ
bf [6]

:[5]
pushi.e 5
conv.i.v
b [7]

:[6]
pushi.e 0
conv.i.v

:[7]
pop.v.v local.offset
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
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
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 360
add.i.v
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
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
push.v self.head_y_pos
pushloc.v local.offset
add.v.v
push.v self.head_x_pos
push.v self.anim_index
pushi.e 263
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
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
push.v self.damagedfx
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.pilot_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.head_y_pos
pushi.e 160
add.i.v
pushloc.v local.offset
add.v.v
push.v self.head_x_pos
pushi.e 167
add.i.v
push.v self.anim_index
push.v self.pilot_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.pilot_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.head_y_pos
push.v self.head_x_pos
push.v self.anim_index
pushi.e 262
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]