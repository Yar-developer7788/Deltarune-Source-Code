.localvar 2 arguments
.localvar 720 len 354
.localvar 107 i 355
.localvar 721 args 356
.localvar 737 format_string 357
.localvar 731 localized_string_id 358
.localvar 723 str 359

:[0]
b [7]

> gml_Script_msgnextsubloc (locals=6, argc=0)
:[1]
pushbltn.v builtin.argument_count
pop.v.v local.len
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.len
cmp.v.v LT
bf [4]

:[3]
push.i 3704679
setowner.e
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.args
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.format_string
pushi.e -15
pushloc.v local.len
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.argument
pop.v.v local.localized_string_id
call.i gml_Script_is_english(argc=0)
conv.v.b
not.b
bf [6]

:[5]
pushloc.v local.localized_string_id
call.i gml_Script_scr_84_get_lang_string(argc=1)
pop.v.v local.format_string

:[6]
pushloc.v local.args
pushi.e 1
conv.i.v
pushloc.v local.format_string
call.i gml_Script_substringargs(argc=3)
pop.v.v local.str
pushloc.v local.str
call.i gml_Script_msgnext(argc=1)
popz.v
exit.i

:[7]
push.i [function]gml_Script_msgnextsubloc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.msgnextsubloc
popz.v

:[end]