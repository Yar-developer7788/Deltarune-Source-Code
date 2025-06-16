.localvar 2 arguments

:[0]
pushi.e 180
pop.v.i self.direction
pushi.e 10
pop.v.i self.speed
pushi.e 180
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.chaincon
pushi.e -1
pop.v.i self.sons
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.gotimer
push.v 1569.x
pop.v.v self.initkingx
push.v 1569.y
pop.v.v self.initkingy
push.v 1575.x
pop.v.v self.initboxx
push.v 1575.y
pop.v.v self.initboxy
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 40
cmp.i.v LT
bf [3]

:[2]
push.i 175594
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kingx
push.i 175595
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kingy
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.siner
pushi.e 20
pop.v.i self.btimer
pushi.e 0
pop.v.i self.bgap
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.movecon
pushi.e 25
pop.v.i self.movetime
pushi.e 0
pop.v.i self.mytimer
pushi.e 200
pop.v.i self.maxtimer
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 300
pop.v.i self.maxtimer

:[5]
pushi.e 255
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.bulletpoint
pushi.e 0
pop.v.i self.spikemake
pushi.e 0
pop.v.i self.ended
pushi.e 0
pop.v.i self.endtimer
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 60
pop.v.i self.inv
pushi.e 0
pop.v.i self.timepoints
pushi.e 3
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.target
pushi.e 50
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.chain_noise
pushi.e 0
pop.v.i self.timerbonus

:[end]