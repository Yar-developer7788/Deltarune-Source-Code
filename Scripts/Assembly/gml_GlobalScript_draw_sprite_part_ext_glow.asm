.localvar 2 arguments
.localvar 9260 color 2369
.localvar 10238 blend 2370

:[0]
b [15]

> gml_Script_draw_sprite_part_ext_glow (locals=2, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 12
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 12
push.v [array]self.argument
b [4]

:[3]
push.i 16777215
conv.i.v

:[4]
pop.v.v local.color
pushloc.v local.color
push.i 16777215
cmp.i.v NEQ
bf [6]

:[5]
push.v self.glow
pushloc.v local.color
pushi.e -15
pushi.e 10
push.v [array]self.argument
call.i merge_color(argc=3)
b [7]

:[6]
pushi.e -15
pushi.e 10
push.v [array]self.argument

:[7]
pop.v.v local.blend
push.v self.glow
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
pushi.e -15
pushi.e 11
push.v [array]self.argument
pushloc.v local.blend
pushi.e -15
pushi.e 9
push.v [array]self.argument
pushi.e -15
pushi.e 8
push.v [array]self.argument
pushi.e -15
pushi.e 7
push.v [array]self.argument
pushi.e -15
pushi.e 6
push.v [array]self.argument
pushi.e -15
pushi.e 5
push.v [array]self.argument
pushi.e -15
pushi.e 4
push.v [array]self.argument
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i draw_sprite_part_ext(argc=12)
popz.v

:[9]
push.v self.glow
pushi.e 0
cmp.i.v GT
bf [14]

:[10]
pushloc.v local.color
push.i 16777215
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.color
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.glow
pushi.e -15
pushi.e 10
push.v [array]self.argument
pushi.e -15
pushi.e 9
push.v [array]self.argument
pushi.e -15
pushi.e 8
push.v [array]self.argument
pushi.e -15
pushi.e 7
push.v [array]self.argument
pushi.e -15
pushi.e 6
push.v [array]self.argument
pushi.e -15
pushi.e 5
push.v [array]self.argument
pushi.e -15
pushi.e 4
push.v [array]self.argument
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushloc.v local.color
push.i 16777215
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_draw_sprite_part_ext_glow
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_part_ext_glow
popz.v

:[end]