.localvar 2 arguments

:[0]
push.v self.init
conv.v.b
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.firstwave
pushi.e 0
cmp.i.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [11]

:[5]
push.v self.middespawn
conv.v.b
bf [7]

:[6]
push.v self.firstwave
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.d 0.1
conv.d.v
pushi.e 1
conv.i.v
push.d 0.25
conv.d.v
push.v self.timer
pushi.e 65
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_remap_clamped(argc=5)
push.v self.image_alpha
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.image_alpha
b [11]

:[10]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[11]
pushi.e 1
pop.v.i self.xflip
push.v self.flipTimer
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
pushi.e -1
pop.v.i self.xflip

:[13]
push.v self.flipTimer
pushi.e 1
add.i.v
pop.v.v self.flipTimer
push.v self.flipTimer
push.v self.flipSpeed
cmp.v.v GTE
bf [15]

:[14]
push.v self.flipTimer
push.v self.flipSpeed
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.flipTimer

:[15]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.xflip
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]