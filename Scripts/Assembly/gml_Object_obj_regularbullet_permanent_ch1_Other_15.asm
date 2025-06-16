.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
call.i gml_Script_scr_damage_ch1(argc=0)
popz.v

:[3]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [end]

:[4]
call.i gml_Script_scr_damage_all_ch1(argc=0)
popz.v

:[end]