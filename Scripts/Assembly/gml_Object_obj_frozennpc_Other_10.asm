.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i global.interact
push.s "no one"@18574
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_frozennpc_slash_Other_10_gml_4_0"@27738
conv.s.v
push.s "* (It's frozen solid...)/%"@27739
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.onebuffer
pushi.e 3
pop.v.i self.myinteract
call.i gml_Script_d_make(argc=0)
pop.v.v self.mydialoguer

:[end]