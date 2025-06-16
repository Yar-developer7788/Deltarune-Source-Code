.localvar 2 arguments

:[0]
push.v 729.thrash
pop.v.v self.thrash
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.headangle
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.lastattack
push.v self.lastattack
pushi.e 90
mul.i.v
pushi.e 90
add.i.v
pop.v.v self.attackangle
pushi.e 180
pop.v.i self.headangle
pushi.e 180
pop.v.i self.lastangle
pushi.e 0
pop.v.i self.btimer
pushi.e -1
pop.v.i self.damage
pushi.e -1
pop.v.i self.target
pushi.e 0
pop.v.i self.difficulty
pushi.e 4
pop.v.i self.grazepoints

:[end]