.localvar 2 arguments
.localvar 21851 thrashcon 13910

:[0]
push.v self.thrash
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.deathtimer
pushi.e 0
cmp.i.v GT
bf [5]

:[3]
push.v self.deathtimer
push.e 1
sub.i.v
pop.v.v self.deathtimer
push.v self.deathtimer
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 7
pop.v.i 729.thrashcon
push.v 729.remx
pop.v.v 729.x
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.a
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.duckmode
conv.v.b
bf [17]

:[6]
push.v 729.thrashcon
pop.v.v local.thrashcon
pushloc.v local.thrashcon
pushi.e 3
cmp.i.v EQ
bt [8]

:[7]
pushloc.v local.thrashcon
pushi.e 5
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.stomp
pushi.e 0
cmp.i.v NEQ
b [12]

:[11]
push.e 0

:[12]
bf [17]

:[13]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.stomp
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.d 1.25
conv.d.v
b [16]

:[15]
pushi.e 1
conv.i.v

:[16]
pushi.e 57
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[17]
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.stomp
push.v self.thrash
pushi.e -9
push.v [stacktop]self.xx
pushi.e 30
sub.i.v
pop.v.v self.x
push.v self.thrash
pushi.e -9
push.v [stacktop]self.yy
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.walkc
mul.v.v
add.v.v
pushi.e 14
add.i.v
pop.v.v self.y

:[end]