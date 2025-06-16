.localvar 2 arguments
.localvar 6242 __newstring 564

:[0]
b [6]

> gml_Script_string_hash_to_newline_ex (locals=1, argc=1)
:[1]
push.v arg.argument0
push.s "`"@6238
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [4]

:[2]
push.s "<hash>"@6239
conv.s.v
push.s "`#"@6240
conv.s.v
push.v arg.argument0
call.i string_replace(argc=3)
pop.v.v local.__newstring
pushloc.v local.__newstring
call.i string_hash_to_newline(argc=1)
pop.v.v local.__newstring
push.s "#"@6243
conv.s.v
push.s "<hash>"@6239
conv.s.v
pushloc.v local.__newstring
call.i string_replace(argc=3)
ret.v

:[3]
b [5]

:[4]
push.v arg.argument0
call.i string_hash_to_newline(argc=1)
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_string_hash_to_newline_ex
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.string_hash_to_newline_ex
popz.v

:[end]