.localvar 2 arguments
.localvar 10812 alpha 14023

:[0]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [8]

:[1]
push.i 168063
setowner.e
push.v 631.x
pushi.e 8
add.i.v
pushi.e -1
push.v self.index
conv.v.i
pop.v.v [array]self.heartposx
push.i 168064
setowner.e
push.v 631.y
pushi.e 8
add.i.v
pushi.e -1
push.v self.index
conv.v.i
pop.v.v [array]self.heartposy
push.v self.index
push.e 1
add.i.v
pop.v.v self.index
push.v self.index
push.v self.totalpoints
cmp.v.v GT
bf [3]

:[2]
push.v self.totalpoints
push.e 1
add.i.v
pop.v.v self.totalpoints

:[3]
push.v self.index
pushi.e 12
cmp.i.v GTE
bf [5]

:[4]
pushi.e 0
pop.v.i self.index

:[5]
push.v self.totalpoints
pushi.e 12
cmp.i.v EQ
bf [7]

:[6]
push.v self.followindex
pushi.e 1
add.i.v
pop.v.v self.followindex

:[7]
pushi.e 0
pop.v.i self.timer

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
push.v self.totalpoints
cmp.v.v LT
bf [end]

:[10]
push.v self.i
push.v self.followindex
cmp.v.v LT
bf [12]

:[11]
push.v self.i
push.v self.followindex
add.v.v
pushi.e 12
conv.i.d
div.d.v
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
add.v.v
pop.v.v local.alpha
b [13]

:[12]
push.v self.i
push.v self.followindex
sub.v.v
pushi.e 12
conv.i.d
div.d.v
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
add.v.v
pop.v.v local.alpha

:[13]
pushloc.v local.alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.heartposy
pushi.e -1
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
push.e 1
add.i.v
pop.v.v self.i
b [9]

:[end]