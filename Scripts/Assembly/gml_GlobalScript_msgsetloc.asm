.localvar 2 arguments
.localvar 730 msg_index 333
.localvar 723 str 334
.localvar 731 localized_string_id 335

:[0]
b [4]

> gml_Script_msgsetloc (locals=3, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.msg_index
push.v arg.argument1
pop.v.v local.str
push.v arg.argument2
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
pushloc.v local.msg_index
call.i gml_Script_msgset(argc=2)
popz.v
exit.i

:[4]
push.i [function]gml_Script_msgsetloc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.msgsetloc
popz.v

:[end]