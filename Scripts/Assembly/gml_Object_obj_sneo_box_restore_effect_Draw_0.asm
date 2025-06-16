.localvar 2 arguments
.localvar 25485 colo 13112

:[0]
pushi.e 646
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.glerp
push.v 646.left
push.v self.x
call.i lerp(argc=3)
pop.v.v self.left
push.v self.glerp
push.v 646.right
push.v self.x
call.i lerp(argc=3)
pop.v.v self.right
push.v self.glerp
push.v 646.top
push.v self.y
call.i lerp(argc=3)
pop.v.v self.top
push.v self.glerp
push.v 646.bottom
push.v self.y
call.i lerp(argc=3)
pop.v.v self.bottom
push.v self.glerp
push.d 0.1
add.d.v
pop.v.v self.glerp
call.i draw_get_color(argc=0)
pop.v.v local.colo
push.i 49152
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.size
cmp.v.v LT
bf [5]

:[4]
pushi.e 1
conv.i.v
push.v self.bottom
push.v self.size
add.v.v
push.v self.i
sub.v.v
push.v self.right
push.v self.size
add.v.v
push.v self.i
sub.v.v
push.v self.top
push.v self.size
sub.v.v
push.v self.i
add.v.v
push.v self.left
push.v self.size
sub.v.v
push.v self.i
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushloc.v local.colo
call.i draw_set_colour(argc=1)
popz.v
push.v self.glerp
pushi.e 1
cmp.i.v GTE
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]