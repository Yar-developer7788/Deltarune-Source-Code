.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dfacing
pop.v.v self.facing

:[2]
call.i gml_Script_scr_npcdir_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_index

:[end]