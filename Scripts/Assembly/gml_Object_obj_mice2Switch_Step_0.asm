.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [7]

:[1]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [7]

:[2]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
pushi.e 1169
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [5]

:[4]
push.v 1169.jumpy
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
b [8]

:[7]
push.e 1

:[8]
bf [14]

:[9]
push.v self.toggle
pushi.e 0
cmp.i.v EQ
bf [10]

:[10]
pushi.e 1
pop.v.i self.toggle
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
pushi.e 287
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
push.v self.toggle
pop.v.v self.image_index

:[end]