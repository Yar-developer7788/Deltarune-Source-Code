.localvar 2 arguments

:[0]
pushi.e 3509
pop.v.i self.dtsprite
pushi.e 3511
pop.v.i self.rtsprite
pushi.e 3510
pop.v.i self.ltsprite
pushi.e 3509
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
call.i gml_Script_scr_npcdir_ch1(argc=0)
popz.v
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[end]