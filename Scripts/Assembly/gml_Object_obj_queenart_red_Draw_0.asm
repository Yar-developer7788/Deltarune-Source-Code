.localvar 2 arguments

:[0]
push.v self.flip
pushi.e 0
cmp.b.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
push.v self.flip
pushi.e 1
cmp.b.v EQ
bf [20]

:[3]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v self.flipcon
pushi.e 0
cmp.i.v EQ
bf [11]

:[4]
push.d 0.2
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 120
add.i.v
pushi.e 2
sub.i.v
push.v self.x
pushi.e 38
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 38
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.flipped
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
add.i.v
push.v self.image_index
push.v self.spriteindex2
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
add.i.v
push.v self.image_index
push.v self.spriteindex2
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.flipped
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
add.i.v
push.v self.image_index
push.v self.spriteindex1
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
add.i.v
push.v self.image_index
push.v self.spriteindex1
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_xscale
push.d 0.1
cmp.d.v GT
bf [10]

:[9]
push.v self.image_xscale
push.v self.flipfactor
mul.v.v
pop.v.v self.image_xscale
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_xscale
call.i clamp(argc=3)
pop.v.v self.image_xscale
b [11]

:[10]
pushi.e 1
pop.v.i self.flipcon
push.d 0.1
pop.v.d self.image_xscale
pushi.e 0
pop.v.i self.fliptimer

:[11]
push.v self.flipcon
pushi.e 1
cmp.i.v EQ
bf [16]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
push.v self.spriteindex1
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.spriteindex2
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fliptimer
push.e 1
add.i.v
pop.v.v self.fliptimer
push.v self.fliptimer
pushi.e 2
cmp.i.v EQ
bf [16]

:[13]
push.v self.flipped
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.spriteindex2
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.flipped
pushi.e 2
pop.v.i self.flipcon
b [16]

:[15]
push.v self.spriteindex1
pop.v.v self.sprite_index
pushi.e 0
pop.v.b self.flipped
pushi.e 2
pop.v.i self.flipcon

:[16]
push.v self.flipcon
pushi.e 2
cmp.i.v EQ
bf [20]

:[17]
push.d 0.2
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 120
add.i.v
pushi.e 2
sub.i.v
push.v self.x
pushi.e 38
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 38
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
push.v self.image_xscale
push.d 1.99
cmp.d.v LT
bf [19]

:[18]
push.v self.image_xscale
pushi.e 1
conv.i.d
push.v self.flipfactor
div.v.d
mul.v.v
pop.v.v self.image_xscale
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_xscale
call.i clamp(argc=3)
pop.v.v self.image_xscale
b [20]

:[19]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 0
pop.v.b self.flip
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.flipcon

:[20]
push.v self.decorative
pushi.e 1
cmp.b.v EQ
bf [22]

:[21]
push.v self.flip
pushi.e 0
cmp.b.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shadow
pushi.e 2
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.sprite_index
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.depth
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_speed
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_speed
call.i instance_destroy(argc=0)
popz.v

:[25]
push.v self.isswitch
conv.v.b
bf [27]

:[26]
push.v self.dontshine
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [end]

:[29]
push.v self.shine_init
conv.v.b
not.b
bf [end]

:[30]
pushi.e 1
pop.v.b self.shine_init
pushi.e 2440
conv.i.v
push.v self.y
pushi.e 84
add.i.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.shine
push.v self.depth
pushi.e 10
sub.i.v
push.v self.shine
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.1
push.v self.shine
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[end]