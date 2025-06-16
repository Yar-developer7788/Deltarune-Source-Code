.localvar 2 arguments
.localvar 10844 __scriptdelay 2767
.localvar 6565 __i 2768

:[0]
b [6]

> gml_Script_scr_script_delayed (locals=2, argc=0)
:[1]
pushi.e 927
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.__scriptdelay
pushi.e -15
pushi.e 0
push.v [array]self.argument
pushloc.v local.__scriptdelay
pushi.e -9
pop.v.v [stacktop]self.script
push.i 68291073
setowner.e
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushloc.v local.__scriptdelay
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v self.id
pushloc.v local.__scriptdelay
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
pop.v.i local.__i

:[2]
pushloc.v local.__i
pushbltn.v builtin.argument_count
pushi.e 2
sub.i.v
cmp.v.v LT
bf [4]

:[3]
push.i 68389974
setowner.e
pushi.e -15
pushloc.v local.__i
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.argument
pushloc.v local.__scriptdelay
pushi.e -9
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.script_arg
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [2]

:[4]
pushbltn.v builtin.argument_count
pushi.e 2
sub.i.v
pushloc.v local.__scriptdelay
pushi.e -9
pop.v.v [stacktop]self.arg_count
pushloc.v local.__scriptdelay
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_script_delayed
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_script_delayed
popz.v

:[end]