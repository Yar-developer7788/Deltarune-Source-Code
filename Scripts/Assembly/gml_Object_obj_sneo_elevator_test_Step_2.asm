.localvar 2 arguments

:[0]
pushi.e 16
pop.v.i self.b
push.v self.heartobj
pushi.e -9
push.v [stacktop]self.x
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.b
sub.v.v
pushi.e 8
sub.i.v
cmp.v.v GTE
bf [2]

:[1]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.b
sub.v.v
pushi.e 8
sub.i.v
push.v self.heartobj
pushi.e -9
pop.v.v [stacktop]self.x

:[2]
push.v self.heartobj
pushi.e -9
push.v [stacktop]self.x
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.b
add.v.v
pushi.e 8
sub.i.v
cmp.v.v LTE
bf [4]

:[3]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.b
add.v.v
pushi.e 8
sub.i.v
push.v self.heartobj
pushi.e -9
pop.v.v [stacktop]self.x

:[4]
push.v self.heartobj
pushi.e -9
push.v [stacktop]self.y
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.b
sub.v.v
pushi.e 8
sub.i.v
cmp.v.v GTE
bf [6]

:[5]
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.b
sub.v.v
pushi.e 8
sub.i.v
push.v self.heartobj
pushi.e -9
pop.v.v [stacktop]self.y

:[6]
push.v self.heartobj
pushi.e -9
push.v [stacktop]self.y
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.b
add.v.v
pushi.e 8
sub.i.v
cmp.v.v LTE
bf [end]

:[7]
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.b
add.v.v
pushi.e 8
sub.i.v
push.v self.heartobj
pushi.e -9
pop.v.v [stacktop]self.y

:[end]