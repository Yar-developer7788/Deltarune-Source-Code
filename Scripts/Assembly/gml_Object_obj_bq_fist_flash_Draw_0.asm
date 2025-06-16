.localvar 2 arguments

:[0]
push.v self.rep
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.x1
pushi.e 30
sub.i.v
pop.v.v self.x1
push.v self.x2
pushi.e 30
add.i.v
pop.v.v self.x2
push.v self.timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.state

:[4]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v self.timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [7]

:[6]
pushi.e 2
pop.v.i self.state

:[7]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [10]

:[8]
push.v self.y1
pushi.e 1
sub.i.v
pop.v.v self.y1
push.v self.y2
pushi.e 1
add.i.v
pop.v.v self.y2
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[11]
popz.i

:[end]