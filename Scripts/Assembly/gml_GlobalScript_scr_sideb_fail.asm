.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_sideb_fail (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[2]
push.i 67864356
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 916
pop.v.v [array]self.flag
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_sideb_fail
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_sideb_fail
popz.v

:[end]