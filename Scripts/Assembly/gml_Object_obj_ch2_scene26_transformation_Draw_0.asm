.localvar 2 arguments

:[0]
push.v self.screen_fade
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.screen_fade
push.d 0.05
add.d.v
pop.v.v self.screen_fade

:[2]
push.v self.screen_fade
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
exit.i

:[4]
push.v self.image_play
conv.v.b
bf [8]

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [8]

:[6]
pushi.e 0
pop.v.i self.timer
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index
push.v self.image_index
push.v self.max_index
cmp.v.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.b self.image_play

:[8]
call.i draw_self(argc=0)
popz.v
push.v self.screen_fade
pushi.e 1
cmp.i.v LT
bf [10]

:[9]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
push.v self.screen_fade
sub.v.i
call.i draw_set_alpha(argc=1)
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
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
exit.i

:[10]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.af
push.d 0.25
push.v self.af
pushi.e -9
pop.v.d [stacktop]self.fadeSpeed
push.v self.image_index
push.v self.frame_offset
sub.v.v
pushi.e 0
cmp.i.v GTE
bf [12]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.frame_offset
sub.v.v
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.af
push.v self.image_index
push.v self.frame_offset
sub.v.v
push.v self.af
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.headsprite
push.v self.af
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.af
pushi.e -9
pop.v.d [stacktop]self.fadeSpeed

:[12]
push.v self.max_index
pushi.e 11
cmp.i.v EQ
bf [end]

:[13]
push.v self.timer
pushi.e 15
cmp.i.v LT
bf [15]

:[14]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[15]
pushi.e 1
conv.i.v
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
push.v self.ystart
pushi.e 120
add.i.v
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.y

:[end]