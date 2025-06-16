.localvar 2 arguments

:[0]
push.v self.hp
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.init
push.v 631.x
pushi.e 30
sub.i.v
pop.v.v self.x
push.v 631.y
pop.v.v self.y

:[5]
push.v 631.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v 631.x
pushi.e 30
add.i.v
pop.v.v self.x
push.v 631.y
pushi.e 10
add.i.v
pop.v.v self.y

:[6]
push.v self.axe_timer
push.e 1
add.i.v
pop.v.v self.axe_timer
push.v self.axe_timer
pushi.e 10
cmp.i.v GT
bf [8]

:[7]
push.v self.visible
pushi.e 1
cmp.b.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.i self.axe_timer
pushi.e 630
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[11]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 0
pop.v.b self.visible

:[13]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 9
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.b self.visible
b [end]

:[16]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.b self.visible
b [end]

:[18]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.b self.visible
b [end]

:[20]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.b self.visible
b [end]

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.b self.visible
b [end]

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.b self.visible
b [end]

:[26]
pushi.e 1
pop.v.b self.visible

:[end]