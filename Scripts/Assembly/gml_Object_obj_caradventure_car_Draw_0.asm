.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.block
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.d 0.8
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.x
pushi.e 4
conv.i.d
div.d.v
pushi.e 3038
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.blockeffectcon
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.bsiner
pushi.e 2
pop.v.i self.blockeffectcon

:[4]
push.v self.blockeffectcon
pushi.e 2
cmp.i.v EQ
bf [7]

:[5]
push.v self.bsiner
push.e 1
add.i.v
pop.v.v self.bsiner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
push.v self.bsiner
pushi.e 10
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.bsiner
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 4
conv.i.d
div.d.v
pushi.e 3038
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.8
push.v self.bsiner
pushi.e 10
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.bsiner
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 4
conv.i.d
div.d.v
pushi.e 3038
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.bsiner
pushi.e 10
cmp.i.v GTE
bf [7]

:[6]
pushi.e 0
pop.v.i self.blockeffectcon
pushi.e 0
pop.v.i self.bsiner

:[7]
push.v self.talkshowtimer
pushi.e 0
cmp.i.v GT
bf [end]

:[8]
push.v self.talkshowtimer
push.e 1
sub.i.v
pop.v.v self.talkshowtimer

:[end]