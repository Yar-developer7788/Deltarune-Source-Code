.localvar 2 arguments
.localvar 723 str 3680
.localvar 6230 sub_id 3681
.localvar 6234 sub 3682

:[0]
b [6]

> gml_Script_scr_84_get_subst_string (locals=3, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.str
pushi.e 1
pop.v.i local.sub_id
pushloc.v local.str
call.i string_length(argc=1)
pop.v.v self.length
pushi.e 0
pop.v.i self.pos

:[2]
pushloc.v local.sub_id
pushbltn.v builtin.argument_count
cmp.v.v LT
bf [4]

:[3]
push.s "~"@6233
pushloc.v local.sub_id
call.i string(argc=1)
add.v.s
pop.v.v local.sub
pushi.e -15
pushloc.v local.sub_id
conv.v.i
push.v [array]self.argument
pushloc.v local.sub
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str
pushloc.v local.sub_id
pushi.e 1
add.i.v
pop.v.v local.sub_id
b [2]

:[4]
pushloc.v local.str
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_84_get_subst_string
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_get_subst_string
popz.v

:[end]