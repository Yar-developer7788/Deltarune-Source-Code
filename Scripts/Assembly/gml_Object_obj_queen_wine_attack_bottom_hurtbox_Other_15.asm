.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v 574.beatwine2nodamage
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i 574.beatwine2nodamage

:[3]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [5]

:[4]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[5]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[7]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]