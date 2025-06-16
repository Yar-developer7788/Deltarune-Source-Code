.localvar 2 arguments

:[0]
b [6]

> gml_Script_is_english (locals=0, argc=0)
:[1]
push.s "lang"@6180
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bt [3]

:[2]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
b [4]

:[3]
push.e 1

:[4]
conv.b.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_is_english
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.is_english
popz.v

:[end]