.localvar 2 arguments

:[0]
b [7]

> gml_Script_snd_free_ch1 (locals=0, argc=1)
:[1]
pushi.e 1455
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[2]
push.v arg.argument0
pop.v.v self._xstream
push.v self._xstream
pop.v.v 1455.bstream
pushi.e 1455
pushenv [5]

:[3]
push.v self.bstream
push.v self.mystream
cmp.v.v EQ
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [3]

:[6]
exit.i

:[7]
push.i [function]gml_Script_snd_free_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_free_ch1
popz.v

:[end]