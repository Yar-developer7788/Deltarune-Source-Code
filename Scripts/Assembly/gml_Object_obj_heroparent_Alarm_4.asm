.localvar 2 arguments

:[0]
push.v self.spellframes
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[2]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.myself
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.charspecial
call.i gml_Script_scr_spell(argc=2)
popz.v

:[4]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer

:[end]