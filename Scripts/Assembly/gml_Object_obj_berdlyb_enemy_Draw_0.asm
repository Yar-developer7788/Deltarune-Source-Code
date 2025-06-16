.localvar 2 arguments

:[0]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.flash

:[2]
pushi.e 0
pop.v.i self.becomeflash
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner
pushi.e 496
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
pushi.e 487
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.v self.state
pushi.e 3
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
exit.i

:[8]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [end]

:[9]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[end]