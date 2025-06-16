.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.speed
pop.v.v self.initialspeed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.init
push.v self.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
push.v self.big
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.b self.stuck

:[3]
push.v self.init
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.v self.depth
pushi.e 2
add.i.v
pop.v.v self.depth
pushi.e 3
pop.v.i self.init

:[5]
push.v self.init
pushi.e 3
cmp.i.v LT
bf [7]

:[6]
exit.i

:[7]
push.v self.big
conv.v.b
bf [9]

:[8]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e -1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [16]

:[11]
push.d 0.75
conv.d.v
push.v self.initialspeed
push.v self.speed
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.speed
push.v self.stuck
conv.v.b
bf [13]

:[12]
push.v self.speed
pushi.e 2
cmp.i.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 3319
pop.v.i self.sprite_index
pushi.e 0
pop.v.b self.stuck

:[16]
call.i event_inherited(argc=0)
popz.v
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 50
add.i.v
cmp.v.v GT
bt [20]

:[17]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 50
sub.i.v
cmp.v.v LT
bt [20]

:[18]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 50
add.i.v
cmp.v.v GT
bt [20]

:[19]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 50
sub.i.v
cmp.v.v LT
b [21]

:[20]
push.e 1

:[21]
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]