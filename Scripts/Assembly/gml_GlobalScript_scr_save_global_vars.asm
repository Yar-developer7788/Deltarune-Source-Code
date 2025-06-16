.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_save_global_vars (locals=0, argc=0)
:[1]
exit.i

:[2]
push.i [function]gml_Script_scr_save_global_vars
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_save_global_vars
popz.v

:[end]