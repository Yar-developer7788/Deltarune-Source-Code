.localvar 2 arguments

:[0]
b [3]

> gml_Script_randomsign (locals=0, argc=0)
:[1]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_randomsign
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.randomsign
popz.v

:[end]