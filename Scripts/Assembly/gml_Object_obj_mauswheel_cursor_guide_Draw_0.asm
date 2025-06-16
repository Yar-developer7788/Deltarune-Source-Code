.localvar 2 arguments
.localvar 26991 startpoint 14016
.localvar 10812 alpha 14017

:[0]
push.v self.listlength
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.cursor
pushi.e -9
push.v [stacktop]self.memory
pushi.e -9
push.v [stacktop]self.xpos
call.i array_length_1d(argc=1)
pop.v.v self.listlength

:[2]
push.v self.cursor
pushi.e -9
push.v [stacktop]self.followindex
pushi.e 5
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e 5
mul.i.v
pop.v.v local.startpoint
pushloc.v local.startpoint
pop.v.v self.i

:[3]
push.v self.i
push.v self.listlength
push.v self.cursor
pushi.e -9
push.v [stacktop]self.followindex
pushi.e 60
add.i.v
call.i min(argc=2)
cmp.v.v LT
bf [end]

:[4]
pushi.e 1
push.v self.i
push.v self.cursor
pushi.e -9
push.v [stacktop]self.followindex
sub.v.v
pushi.e 60
conv.i.d
div.d.v
sub.v.i
pop.v.v local.alpha
pushloc.v local.alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.cursor
pushi.e -9
push.v [stacktop]self.memory
pushi.e -9
push.v self.i
conv.v.i
push.v [array]self.ypos
push.v self.cursor
pushi.e -9
push.v [stacktop]self.memory
pushi.e -9
push.v self.i
conv.v.i
push.v [array]self.xpos
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 5
add.i.v
pop.v.v self.i
b [3]

:[end]