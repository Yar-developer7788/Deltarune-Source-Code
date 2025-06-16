.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1141
conv.i.v
b [3]

:[2]
pushi.e 1140
conv.i.v

:[3]
pop.v.v self.sprite_index
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.d 0.2
conv.d.v
b [6]

:[5]
pushi.e 0
conv.i.v

:[6]
pop.v.v self.image_speed
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [14]

:[10]
push.v 64.halt
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[12]
push.v 64.halt
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.d 0.2
pop.v.d self.image_speed

:[14]
call.i event_inherited(argc=0)
popz.v

:[end]