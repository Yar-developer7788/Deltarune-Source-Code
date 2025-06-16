.localvar 2 arguments

:[0]
call.i gml_Script_scr_spareanim(argc=0)
popz.v
call.i gml_Script_scr_recruit(argc=0)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 453
pushenv [3]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [3]

:[2]
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[3]
popenv [1]

:[end]