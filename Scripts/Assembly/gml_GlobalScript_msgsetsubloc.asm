.localvar 2 arguments
.localvar 720 len 345
.localvar 107 i 346
.localvar 721 args 347
.localvar 730 msg_index 348
.localvar 737 format_string 349
.localvar 738 localized_format_string_id 350
.localvar 723 str 351

:[0]
b [7]

> gml_Script_msgsetsubloc (locals=7, argc=0)
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
push.i 3639143
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
pop.v.v local.msg_index
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local.format_string
pushi.e -15
pushloc.v local.len
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.argument
pop.v.v local.localized_format_string_id
call.i gml_Script_is_english(argc=0)
conv.v.b
not.b
bf [6]

:[5]
pushloc.v local.localized_format_string_id
call.i gml_Script_scr_84_get_lang_string(argc=1)
pop.v.v local.format_string

:[6]
pushloc.v local.args
pushi.e 2
conv.i.v
pushloc.v local.format_string
call.i gml_Script_substringargs(argc=3)
pop.v.v local.str
pushloc.v local.str
pushloc.v local.msg_index
call.i gml_Script_msgset(argc=2)
popz.v
exit.i

:[7]
push.i [function]gml_Script_msgsetsubloc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.msgsetsubloc
popz.v

:[end]