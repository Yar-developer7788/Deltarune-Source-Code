.localvar 2 arguments

:[0]
b [14]

> gml_Script_scr_wincombat_ch1 (locals=0, argc=0)
:[1]
pushi.e 7
pop.v.i global.myfight
pushi.e -1
pop.v.i global.mnfight
pushi.e 1517
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.victory

:[3]
popenv [2]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [13]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v

:[11]
popenv [10]

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[13]
exit.i

:[14]
push.i [function]gml_Script_scr_wincombat_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_wincombat_ch1
popz.v

:[end]