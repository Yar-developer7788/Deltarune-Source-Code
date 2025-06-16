.localvar 2 arguments

:[0]
b [8]

> gml_Script_c_var_lerp_instance (locals=0, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
conv.i.v
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
push.s "var"@9781
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v
b [7]

:[3]
pushbltn.v builtin.argument_count
pushi.e 6
cmp.i.v EQ
bf [5]

:[4]
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
push.s "var"@9781
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v
b [7]

:[5]
pushbltn.v builtin.argument_count
pushi.e 7
cmp.i.v EQ
bf [7]

:[6]
pushi.e -15
pushi.e 5
push.v [array]self.argument
call.i string(argc=1)
pushi.e -15
pushi.e 6
push.v [array]self.argument
call.i string(argc=1)
add.v.v
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
push.s "var"@9781
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_c_var_lerp_instance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_var_lerp_instance
popz.v

:[end]