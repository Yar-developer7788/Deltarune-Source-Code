.localvar 2 arguments
.localvar 6482 xx 13831
.localvar 6483 yy 13832
.localvar 26830 nextattack 13833

:[0]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v 729.y
pushi.e 40
sub.i.v
push.d 1.75
div.d.v
pop.v.v self.headangle
push.v self.btimer
push.v self.difficulty
conv.v.b
bf [2]

:[1]
pushi.e 8
conv.i.v
b [3]

:[2]
pushi.e 15
conv.i.v

:[3]
cmp.v.v LTE
bf [9]

:[4]
push.v self.btimer
push.v self.difficulty
conv.v.b
bf [6]

:[5]
pushi.e 8
conv.i.v
b [7]

:[6]
pushi.e 15
conv.i.v

:[7]
cmp.v.v EQ
bf [9]

:[8]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.headx
push.v self.headangle
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
sub.v.v
pop.v.v local.xx
push.v self.thrash
pushi.e -9
push.v [stacktop]self.heady
push.v self.headangle
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
sub.v.v
pop.v.v local.yy
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 47
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 737
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
push.v self.lastattack
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.attackdirection

:[9]
push.v self.btimer
push.v self.difficulty
conv.v.b
bf [11]

:[10]
pushi.e 13
conv.i.v
b [12]

:[11]
pushi.e 25
conv.i.v

:[12]
cmp.v.v GTE
bf [16]

:[13]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v local.nextattack
pushloc.v local.nextattack
push.v self.lastattack
cmp.v.v EQ
bf [15]

:[14]
pushi.e 2
pop.v.i local.nextattack

:[15]
push.v self.attackangle
pop.v.v self.lastangle
pushloc.v local.nextattack
pushi.e 90
mul.i.v
pushi.e 90
add.i.v
pop.v.v self.attackangle
pushloc.v local.nextattack
pop.v.v self.lastattack

:[16]
push.v self.headangle
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.headangle

:[end]