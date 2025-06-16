.localvar 2 arguments

:[0]
push.v self.init
conv.v.b
bf [2]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.v self.middespawn
conv.v.b
bf [6]

:[5]
push.d 0.1
conv.d.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
push.v self.traveldistance
pushi.e 110
conv.i.d
div.d.v
call.i clamp(argc=3)
push.v self.image_alpha
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.image_alpha
b [7]

:[6]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[7]
push.v self.middespawn
conv.v.b
bf [9]

:[8]
push.v self.traveldistance
push.v self.maxdistance
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
add.i.v
cmp.v.v LTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.traveldistance
push.v self.maxdistance
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
add.i.v
push.v self.maxdistance
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
sub.i.v
call.i gml_Script_scr_inverselerp(argc=3)
call.i gml_Script_clamp01(argc=1)
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[12]
pushi.e 1
pop.v.i self.xflip
push.v self.flipTimer
pushi.e 0
cmp.i.v LT
bf [14]

:[13]
pushi.e -1
pop.v.i self.xflip

:[14]
push.v self.flipTimer
push.e 1
add.i.v
pop.v.v self.flipTimer
push.v self.flipTimer
push.v self.flipSpeed
cmp.v.v GTE
bf [16]

:[15]
push.v self.flipSpeed
neg.v
pop.v.v self.flipTimer

:[16]
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