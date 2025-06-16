.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_ambush_ch1 (locals=0, argc=0)
:[1]
pushi.e 1331
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1328
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 3
pop.v.i global.charturn
pushi.e 1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
exit.i

:[6]
push.i [function]gml_Script_scr_ambush_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ambush_ch1
popz.v

:[end]