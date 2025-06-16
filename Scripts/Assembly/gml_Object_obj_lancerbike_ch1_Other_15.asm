.localvar 2 arguments

:[0]
push.v self.target
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [3]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.damage

:[3]
call.i gml_Script_scr_damage_ch1(argc=0)
popz.v

:[end]