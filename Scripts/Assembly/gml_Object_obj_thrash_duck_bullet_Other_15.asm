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
call.i gml_Script_scr_damage(argc=0)
popz.v

:[3]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.direction
push.d 0.6
pop.v.d self.gravity
pushi.e -7
pop.v.i self.spin

:[end]