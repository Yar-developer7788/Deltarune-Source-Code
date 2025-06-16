.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_monster_make_tired (locals=0, argc=1)
:[1]
push.i 60131888
setowner.e
push.s "scr_monster_make_tired_slash_scr_monster_make_tired_gml_1_0"@10246
conv.s.v
push.s "(Tired)"@7993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstercomment
push.i 60131650
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterstatus
exit.i

:[2]
push.i [function]gml_Script_scr_monster_make_tired
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monster_make_tired
popz.v

:[end]