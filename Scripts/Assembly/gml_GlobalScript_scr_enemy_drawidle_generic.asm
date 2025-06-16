.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_enemy_drawidle_generic (locals=0, argc=1)
:[1]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
push.v self.siner
push.v arg.argument0
add.v.v
pop.v.v self.siner
push.v self.idlesprite
pop.v.v self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [4]

:[3]
push.v self.sparedsprite
pop.v.v self.thissprite

:[4]
push.v self.y
push.v self.x
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_enemy_drawidle_generic
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_enemy_drawidle_generic
popz.v

:[end]