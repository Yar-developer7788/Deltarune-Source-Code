.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_itemdialoguer (locals=0, argc=0)
:[1]
pushi.e 6
pop.v.i global.interact
pushi.e 277
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.charcon

:[3]
popenv [2]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
call.i gml_Script_d_make(argc=0)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scr_itemdialoguer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemdialoguer
popz.v

:[end]