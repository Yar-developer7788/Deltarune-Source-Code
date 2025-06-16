.localvar 2 arguments

:[0]
push.v self.target_char
pushi.e -4
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 276
pop.v.i self.second_char
push.v 276.sprite_index
pop.v.v self.second_sprite

:[5]
pushi.e 0
pop.v.i self.depth

:[6]
push.v self.copy_sprite
conv.v.b
bf [8]

:[7]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
b [17]

:[8]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.usprite
cmp.v.v EQ
bf [10]

:[9]
push.v self.usprite
pop.v.v self.sprite_index
b [17]

:[10]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.dsprite
cmp.v.v EQ
bf [12]

:[11]
push.v self.dsprite
pop.v.v self.sprite_index
b [17]

:[12]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.lsprite
cmp.v.v EQ
bf [14]

:[13]
push.v self.lsprite
pop.v.v self.sprite_index
b [17]

:[14]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.rsprite
cmp.v.v EQ
bf [16]

:[15]
push.v self.rsprite
pop.v.v self.sprite_index
b [17]

:[16]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index

:[17]
push.v self.second_char
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [27]

:[18]
push.v self.second_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.second_char
pushi.e -9
push.v [stacktop]self.usprite
cmp.v.v EQ
bf [20]

:[19]
pushi.e 752
pop.v.i self.second_sprite
b [27]

:[20]
push.v self.second_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.second_char
pushi.e -9
push.v [stacktop]self.dsprite
cmp.v.v EQ
bf [22]

:[21]
pushi.e 749
pop.v.i self.second_sprite
b [27]

:[22]
push.v self.second_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.second_char
pushi.e -9
push.v [stacktop]self.lsprite
cmp.v.v EQ
bf [24]

:[23]
pushi.e 750
pop.v.i self.second_sprite
b [27]

:[24]
push.v self.second_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.second_char
pushi.e -9
push.v [stacktop]self.rsprite
cmp.v.v EQ
bf [26]

:[25]
pushi.e 751
pop.v.i self.second_sprite
b [27]

:[26]
push.v self.second_char
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.second_sprite

:[27]
push.i 15763502
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 402
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
pushi.e 40
conv.i.v
pushi.e 298
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 702
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
pushi.e 80
conv.i.v
pushi.e 598
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 400
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
pushi.e 42
conv.i.v
pushi.e 300
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 700
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
pushi.e 82
conv.i.v
pushi.e 600
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
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
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 400
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
pushi.e 0
conv.i.v
pushi.e 300
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 700
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
pushi.e 0
conv.i.v
pushi.e 600
call.i gml_Script_camerax(argc=0)
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
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
push.v self.second_char
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bt [29]

:[28]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 18
sub.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
cmp.v.v LT
b [30]

:[29]
push.e 1

:[30]
bf [34]

:[31]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.color
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.outline
conv.v.b
bf [33]

:[32]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
sub.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
add.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[33]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 65535
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.second_char
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [41]

:[35]
push.v self.outline
conv.v.b
bf [37]

:[36]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
push.v self.second_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.second_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
push.v self.second_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.second_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
sub.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.x
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.second_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
add.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.x
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.second_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[37]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
push.v self.second_char
pushi.e -9
push.v [stacktop]self.x
push.v self.second_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.second_sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 18
sub.i.v
push.v self.second_char
pushi.e -9
push.v [stacktop]self.y
cmp.v.v GTE
bf [41]

:[38]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.color
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.outline
conv.v.b
bf [40]

:[39]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
sub.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
add.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[40]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v

:[41]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
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