.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.con
pushi.e 0
cmp.i.v NEQ
bf [end]

:[3]
pushi.e 10
pop.v.i self.maxball
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.maxball
cmp.v.v LT
bf [6]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.i
push.v self.maxball
div.v.v
push.v self.y
push.v self.basey
call.i lerp(argc=3)
push.v self.i
push.v self.maxball
div.v.v
push.v self.x
push.v self.basex
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 2713
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
call.i draw_self(argc=0)
popz.v

:[end]