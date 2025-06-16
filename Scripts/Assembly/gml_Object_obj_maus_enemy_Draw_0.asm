.localvar 2 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[2]
push.d 0.16666666666666666
conv.d.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.flash

:[4]
pushi.e 0
pop.v.i self.becomeflash

:[end]