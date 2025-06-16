.localvar 2 arguments
.localvar 723 str 2055
.localvar 731 localized_string_id 2056

:[0]
b [4]

> gml_Script_c_msgnextloc (locals=2, argc=2)
:[1]
push.v arg.argument0
pop.v.v local.str
push.v arg.argument1
pop.v.v local.localized_string_id
call.i gml_Script_is_english(argc=0)
conv.v.b
not.b
bf [3]

:[2]
pushloc.v local.localized_string_id
call.i gml_Script_scr_84_get_lang_string(argc=1)
pop.v.v local.str

:[3]
pushloc.v local.str
call.i gml_Script_c_msgnext(argc=1)
popz.v
exit.i

:[4]
push.i [function]gml_Script_c_msgnextloc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_msgnextloc
popz.v

:[end]