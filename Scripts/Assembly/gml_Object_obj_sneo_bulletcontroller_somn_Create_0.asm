.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.type
pushi.e 99
pop.v.i self.btimer
pushi.e 12
pop.v.i self.timermax
pushi.e -1
pop.v.i self.damage
pushi.e -1
pop.v.i self.grazepoints
pushi.e -1
pop.v.i self.timepoints
pushi.e -1
pop.v.i self.inv
pushi.e -1
pop.v.i self.grazed
pushi.e -1
pop.v.i self.grazetimer
pushi.e 6
pop.v.i self.element
pushi.e -1
pop.v.i self.target
pushi.e 1
pop.v.i self.side
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.sameattack
pushi.e 0
pop.v.i self.sameattacker
pushi.e 999
pop.v.i self.miny
pushi.e 999
pop.v.i self.maxy
pushi.e 999
pop.v.i self.maxx
pushi.e 999
pop.v.i self.miny
pushi.e 0
pop.v.i self.creator
pushi.e 697
pop.v.i self.sneo
pushi.e 1
pop.v.i self.hideshooty
pushi.e 0
pop.v.i self.lastType
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partxoff
add.v.v
pop.v.v self.sneoarm_x
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partyoff
add.v.v
pop.v.v self.sneoarm_y

:[end]