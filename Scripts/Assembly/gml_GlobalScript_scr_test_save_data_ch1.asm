.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_test_save_data (locals=0, argc=1)
:[1]
exit.i

:[2]
push.i [function]gml_Script_scr_test_save_data
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.scr_test_save_data
popz.v

:[end]