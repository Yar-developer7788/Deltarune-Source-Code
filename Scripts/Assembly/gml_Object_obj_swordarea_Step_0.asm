.localvar 2 arguments

:[0]
push.d 0.05
pop.v.d self.image_alpha
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.ignorebuffer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [19]

:[4]
pushi.e 0
pop.v.i 82.swordmode
pushi.e 236
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[5]
push.v 82.bbox_right
push.v self.x
cmp.v.v GTE
bf [7]

:[6]
push.v 82.bbox_left
push.v self.x
push.v self.sprite_width
add.v.v
cmp.v.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [19]

:[9]
push.v 82.bbox_bottom
push.v self.y
cmp.v.v GTE
bf [11]

:[10]
push.v 82.bbox_top
push.v self.y
push.v self.sprite_height
add.v.v
cmp.v.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [19]

:[13]
push.v self.id
pop.v.v 235.checkid
pushi.e 235
pushenv [16]

:[14]
push.v self.id
push.v self.checkid
cmp.v.v NEQ
bf [16]

:[15]
pushi.e 2
pop.v.i self.ignorebuffer

:[16]
popenv [14]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 236
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
call.i collision_rectangle(argc=7)
pop.v.v self.swordobj
push.v self.swordobj
pushi.e -4
cmp.i.v NEQ
bf [19]

:[17]
push.v self.swordobj
pushi.e -9
push.v [stacktop]self.active
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i 82.swordmode

:[19]
push.v self.ignorebuffer
push.e 1
sub.i.v
pop.v.v self.ignorebuffer

:[end]