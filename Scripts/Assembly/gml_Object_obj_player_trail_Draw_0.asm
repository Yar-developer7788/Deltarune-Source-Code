.localvar 2 arguments
.localvar 10812 alpha 11017

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 25
cmp.i.v LT
bf [7]

:[3]
push.v self.i
push.v 469.followindex
cmp.v.v LT
bf [5]

:[4]
push.v self.i
pushi.e 60
add.i.v
push.v 469.followindex
sub.v.v
pushi.e 60
conv.i.d
div.d.v
pop.v.v local.alpha
b [6]

:[5]
push.v self.i
push.v 469.followindex
sub.v.v
pushi.e 60
conv.i.d
div.d.v
pop.v.v local.alpha

:[6]
pushloc.v local.alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 469
push.v self.i
conv.v.i
push.v [array]self.heartposy
pushi.e 469
push.v self.i
conv.v.i
push.v [array]self.heartposx
pushi.e 0
conv.i.v
pushi.e 1756
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 5
add.i.v
pop.v.v self.i
b [2]

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 26
cmp.i.v LT
bf [end]

:[10]
pushi.e 4
conv.i.v
pushi.e 469
push.v self.i
conv.v.i
push.v [array]self.heartposy
pushi.e 1
add.i.v
pushi.e 10
add.i.v
pushi.e 469
push.v self.i
conv.v.i
push.v [array]self.heartposx
pushi.e 1
add.i.v
pushi.e 10
add.i.v
pushi.e 469
push.v self.i
conv.v.i
push.v [array]self.heartposy
pushi.e 10
add.i.v
pushi.e 469
push.v self.i
conv.v.i
push.v [array]self.heartposx
pushi.e 10
add.i.v
call.i draw_line_width(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[end]