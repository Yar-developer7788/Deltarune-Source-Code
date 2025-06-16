.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_lerpvar (locals=0, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
pop.v.v self.___lerpvar
b [4]

:[3]
pushi.e -15
pushi.e 5
push.v [array]self.argument
pushi.e -15
pushi.e 4
push.v [array]self.argument
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=7)
pop.v.v self.___lerpvar

:[4]
push.v self.___lerpvar
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_lerpvar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lerpvar
popz.v

:[end]