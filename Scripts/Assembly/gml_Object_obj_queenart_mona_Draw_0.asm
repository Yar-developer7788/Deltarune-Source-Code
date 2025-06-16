.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 2
sub.i.v
pop.v.v self.image_index

:[2]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.flashamt
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.flashamt
pushi.e 4
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]