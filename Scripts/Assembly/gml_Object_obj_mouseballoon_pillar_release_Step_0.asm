.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [5]

:[1]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [5]

:[2]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [4]

:[3]
pushi.e 5
pop.v.i self.onebuffer

:[4]
popenv [3]

:[5]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 318
conv.i.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myballoon
pushi.e -400
pop.v.i self.fakeballoony
push.v self.myballoon
pushi.e -9
pushenv [14]

:[10]
pushi.e -1
pop.v.i self.balloonid
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v other.krismade
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.d 6.5
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed
b [13]

:[12]
push.d 10.85
pop.v.d self.hspeed

:[13]
push.d 0.2
pop.v.d self.friction
push.d -0.2
pop.v.d self.gravity

:[14]
popenv [10]
pushi.e 0
pop.v.i self.krismade
pushi.e 0
pop.v.i self.ballooncon

:[end]