.localvar 2 arguments
.localvar 723 str 554
.localvar 6229 offset 555
.localvar 721 args 556
.localvar 6230 sub_id 557
.localvar 6232 num_args 558
.localvar 720 len 559
.localvar 6234 sub 560
.localvar 6235 ndx 561

:[0]
b [6]

> gml_Script_substringargs (locals=8, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.str
push.v arg.argument1
pop.v.v local.offset
push.v arg.argument2
pop.v.v local.args
pushi.e 1
pop.v.i local.sub_id
pushloc.v local.args
call.i array_length_1d(argc=1)
pop.v.v local.num_args
pushloc.v local.num_args
pushloc.v local.offset
sub.v.v
pushi.e 1
add.i.v
pop.v.v local.len

:[2]
pushloc.v local.sub_id
pushloc.v local.len
cmp.v.v LT
bf [4]

:[3]
push.s "~"@6233
pushloc.v local.sub_id
call.i string(argc=1)
add.v.s
pop.v.v local.sub
pushloc.v local.sub_id
pushloc.v local.offset
add.v.v
pushi.e 1
sub.i.v
pop.v.v local.ndx
pushi.e -7
pushloc.v local.ndx
conv.v.i
push.v [array]self.args
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
push.i [function]gml_Script_substringargs
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.substringargs
popz.v

:[end]