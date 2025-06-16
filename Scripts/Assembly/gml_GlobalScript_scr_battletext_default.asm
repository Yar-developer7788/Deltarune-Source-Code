.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_battletext_default (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
call.i gml_Script_scr_battletext(argc=0)
popz.v
push.v self.battlewriter
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_battletext_default
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_battletext_default
popz.v

:[end]