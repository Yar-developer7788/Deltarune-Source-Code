.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_initialize_charnames (locals=0, argc=0)
:[1]
push.s "scr_gamestart_slash_scr_gamestart_gml_396_0"@10891
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v global.lcharname
push.i 90016299
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_101_0_b"@11900
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_99_0"@11901
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_100_0"@11902
conv.s.v
push.s "Susie"@4904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_101_0"@11903
conv.s.v
push.s "Ralsei"@4507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_105_0"@11904
conv.s.v
push.s "Noelle"@4144
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.charname
exit.i

:[2]
push.i [function]gml_Script_scr_initialize_charnames
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_initialize_charnames
popz.v

:[end]