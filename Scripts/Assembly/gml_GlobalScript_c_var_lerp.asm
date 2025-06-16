.localvar 2 arguments

:[0]
b [5]

> gml_Script_c_var_lerp (locals=0, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 5
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
conv.i.v
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
pushi.e 0
conv.i.v
push.s "var"@9781
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v
b [4]

:[3]
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
pushi.e 0
conv.i.v
push.s "var"@9781
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_c_var_lerp
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_var_lerp
popz.v

:[end]