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
push.v self.custom_draw_example
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.d 0.16666666666666666
conv.d.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
b [10]

:[4]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [10]

:[5]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[7]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [9]

:[8]
push.v self.y
push.v self.x
push.v self.siner
push.v self.sparedsprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [10]

:[9]
push.v self.y
push.v self.x
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 1562
conv.i.v
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
push.v self.y
push.v self.siner
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1562
conv.i.v
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v

:[10]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.flash

:[12]
pushi.e 0
pop.v.i self.becomeflash

:[end]