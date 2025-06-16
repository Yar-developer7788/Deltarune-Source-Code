.localvar 2 arguments

:[0]
push.v self.bust
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 457
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 68097
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.bust
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[3]
pushi.e 1478
conv.i.v
push.v self.y
pushi.e 20
add.i.v
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
push.v self.i
pushi.e 6
mul.i.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]