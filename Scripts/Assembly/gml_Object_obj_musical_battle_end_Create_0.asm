.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.drawground
pushi.e 0
pop.v.i self.siner
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e -100
pop.v.i self.depth
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pop.v.v self.cx
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
pop.v.v self.cy

:[end]