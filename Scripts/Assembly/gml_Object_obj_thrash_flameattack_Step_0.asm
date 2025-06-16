.localvar 2 arguments

:[0]
push.v self.shotfired
conv.v.b
not.b
bf [2]

:[1]
push.v self.siner
pushi.e 1
push.v self.btimer
pushi.e 14
conv.i.d
div.d.v
push.d 3.141592653589793
mul.d.v
call.i cos(argc=1)
call.i abs(argc=1)
sub.v.i
push.v self.initialspeed
mul.v.v
add.v.v
pop.v.v self.siner

:[2]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 28
mul.i.v
push.v self.flip
mul.v.v
pop.v.v self.attackangle
push.v self.attackangle
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.headangle
push.v self.btimer
pushi.e 14
cmp.i.v GTE
bf [4]

:[3]
push.v self.attackangle
call.i abs(argc=1)
pushi.e 26
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [13]

:[6]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.headx
push.v self.attackangle
pushi.e -4
conv.i.v
pushi.e -40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v self.xx
push.v self.thrash
pushi.e -9
push.v [stacktop]self.heady
push.v self.attackangle
pushi.e -4
conv.i.v
pushi.e -40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v self.yy
pushi.e 734
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.attackangle
pushi.e 180
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.updateimageangle
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 70
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
pushi.e 1
pop.v.i self.shotfired
push.v self.shotcount
push.e 1
add.i.v
pop.v.v self.shotcount
push.v self.shotcount
push.v self.difficulty
conv.v.b
bf [8]

:[7]
pushi.e 6
conv.i.v
b [9]

:[8]
pushi.e 4
conv.i.v

:[9]
cmp.v.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.shotcount
b [12]

:[11]
pushi.e 12
pop.v.i self.btimer

:[12]
b [end]

:[13]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer

:[end]