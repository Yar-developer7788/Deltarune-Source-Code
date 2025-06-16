.localvar 2 arguments

:[0]
b [10]

> gml_Script_c_emote (locals=0, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
push.s "emote"@9772
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
b [9]

:[3]
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "emote"@9772
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
b [9]

:[5]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "emote"@9772
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
b [9]

:[7]
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
conv.i.v
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "emote"@9772
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_c_emote
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_emote
popz.v

:[end]