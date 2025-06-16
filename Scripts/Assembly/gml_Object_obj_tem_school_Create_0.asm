.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [5]

:[1]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [3]

:[2]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[8]
pushi.e 946
pop.v.i self.dtsprite
pushi.e 948
pop.v.i self.rtsprite
pushi.e 947
pop.v.i self.ltsprite
pushi.e 946
pop.v.i self.utsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.ourcase
pushi.e 0
pop.v.i self.eggmake
pushi.e 0
pop.v.i self.egcon
pushi.e 0
pop.v.i self.egtimer
call.i gml_Script_scr_npcdir(argc=0)
popz.v
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]