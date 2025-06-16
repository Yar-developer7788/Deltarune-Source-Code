.localvar 2 arguments

:[0]
push.s "npc1"@14087
pop.v.s self.extflag
pushi.e 1723
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]