.localvar 2 arguments
.localvar 107 i 19392

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.timer
push.v self.shotSpeed
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [2]

:[1]
push.v self.active
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.d 0.5
conv.d.v
push.v self.timer
push.v self.shotSpeed
pushi.e 10
sub.i.v
sub.v.v
pushi.e 10
conv.i.d
div.d.v
push.v self.flashamt
call.i lerp(argc=3)
pop.v.v self.flashamt
b [6]

:[5]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
push.v self.flashamt
call.i lerp(argc=3)
pop.v.v self.flashamt

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [9]

:[8]
push.v self.flashamt
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [7]

:[9]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[end]