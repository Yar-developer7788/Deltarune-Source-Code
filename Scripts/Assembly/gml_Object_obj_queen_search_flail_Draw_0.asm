.localvar 2 arguments
.localvar 19898 _alpha 11703
.localvar 14795 _af 11704

:[0]
push.v self.loading
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
push.v self.image_blend
push.i 16777215
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 9034033
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[5]
push.d 0.75
pop.v.d self.image_xscale
push.d 0.75
pop.v.d self.image_yscale
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [11]

:[6]
push.v self.loading
push.e 1
sub.i.v
pop.v.v self.loading
push.v self.loading
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index
b [10]

:[8]
push.v self.loading
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[10]
call.i draw_self(argc=0)
popz.v
exit.i

:[11]
push.v self.broken
pushi.e 0
cmp.i.v EQ
bf [15]

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [15]

:[14]
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.x
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.xx
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.y
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.yy
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.yy
push.v self.xx
call.i point_distance(argc=4)
pushi.e 200
conv.i.v
pushi.e 45
conv.i.v
call.i gml_Script_scr_inverselerp(argc=3)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i clamp(argc=3)
pop.v.v local._alpha
pushloc.v local._alpha
push.i 9034033
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
call.i draw_self(argc=0)
popz.v
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 547
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v local._af
push.d 0.5
pushloc.v local._af
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 5
pushloc.v local._af
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 9034033
pushloc.v local._af
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[17]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
push.v self.y
push.v self.x
push.v 562.bufferbar
pushi.e 8
mod.i.v
pushi.e 1928
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]