.localvar 2 arguments

:[0]
b [4]

> gml_Script_c_waitcustom_end (locals=0, argc=0)
:[1]
pushi.e 898
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.cs_wait_custom
pushi.e 0
pop.v.i self.waiting

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_c_waitcustom_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_waitcustom_end
popz.v

:[end]