.localvar 2 arguments

:[0]
b [4]

> gml_Script_snd_free_all_ch1 (locals=0, argc=0)
:[1]
pushi.e 1455
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_snd_free_all_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_free_all_ch1
popz.v

:[end]