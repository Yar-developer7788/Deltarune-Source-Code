.localvar 2 arguments
.localvar 36495 _top 18013

:[0]
push.v self.hit
conv.v.b
not.b
bf [end]

:[1]
push.v self.y
pushi.e 2
sub.i.v
push.v self.y
push.v self.yChange
sub.v.v
push.v self.sprite_height
add.v.v
call.i min(argc=2)
pop.v.v local._top
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 631
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pushloc.v local._top
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[2]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]