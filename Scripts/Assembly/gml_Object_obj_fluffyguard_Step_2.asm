.localvar 2 arguments

:[0]
push.v self.hp
pushi.e 1
cmp.i.v LT
bf [6]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[3]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
exit.i

:[6]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 0
pop.v.b self.visible

:[8]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[9]
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.v 631.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v 631.y
pushi.e 9
add.i.v
pop.v.v self.y
pushi.e 641
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e -9999
pop.v.i self.x
pushi.e -9999
pop.v.i self.y

:[11]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 9
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.b self.visible
b [end]

:[13]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 8
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.b self.visible
b [end]

:[15]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 5
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.b self.visible
b [end]

:[17]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.b self.visible
b [end]

:[19]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.b self.visible
b [end]

:[21]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.b self.visible
b [end]

:[23]
pushi.e 1
pop.v.b self.visible

:[end]