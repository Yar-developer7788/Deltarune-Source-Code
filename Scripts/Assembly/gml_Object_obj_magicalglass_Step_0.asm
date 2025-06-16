.localvar 2 arguments

:[0]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_alpha
b [end]

:[2]
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha

:[end]