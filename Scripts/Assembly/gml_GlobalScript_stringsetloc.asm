.localvar 2 arguments
.localvar 723 str 342

:[0]
b [5]

> gml_Script_stringsetloc (locals=1, argc=2)
:[1]
push.v arg.argument0
pop.v.v local.str
call.i gml_Script_is_english(argc=0)
conv.v.b
not.b
bf [3]

:[2]
push.v arg.argument1
call.i gml_Script_scr_84_get_lang_string(argc=1)
pop.v.v local.str

:[3]
pushloc.v local.str
call.i gml_Script_stringset(argc=1)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_stringsetloc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.stringsetloc
popz.v

:[end]