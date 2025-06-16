.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
pushi.e 240
pushenv [7]

:[2]
push.v self.sprite_index
pushi.e 1254
cmp.i.v EQ
bf [4]

:[3]
push.v other.id
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[7]
popenv [2]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [9]

:[8]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[9]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [11]

:[10]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]