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
push.s "none"@562
pop.v.s self.element
pushi.e -1
pop.v.i self.target
pushi.e 1
pop.v.i self.ratio
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.d 1.6
pop.v.d self.ratio

:[2]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
push.d 2.3
pop.v.d self.ratio

:[4]
pushi.e 1
pop.v.i self.side
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.roundcount
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

:[end]