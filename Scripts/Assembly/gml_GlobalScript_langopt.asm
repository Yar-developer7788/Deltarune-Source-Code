.localvar 2 arguments

:[0]
b [6]

> gml_Script_langopt (locals=0, argc=2)
:[1]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [3]

:[2]
push.v arg.argument1
b [4]

:[3]
push.v arg.argument0

:[4]
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_langopt
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.langopt
popz.v

:[end]