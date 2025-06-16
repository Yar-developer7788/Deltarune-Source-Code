.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_jump_to_point_sprite (locals=0, argc=6)
:[1]
pushi.e 922
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__jump_to_point
push.v self.id
push.v self.__jump_to_point
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.__jump_to_point
pushi.e -9
pushenv [5]

:[2]
push.v self.x
pop.v.v self.startx
push.v self.y
pop.v.v self.starty
push.v arg.argument0
pop.v.v self.endx
push.v arg.argument1
pop.v.v self.endy
push.v arg.argument2
pop.v.v self.jumpspeed
push.v arg.argument3
pop.v.v self.jumptime
push.v arg.argument4
pop.v.v self.jumpsprite
push.v arg.argument5
pop.v.v self.landsprite
push.v arg.argument4
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.usesprites

:[4]
pushi.e 0
pop.v.i self.drawshadow

:[5]
popenv [2]
push.v self.__jump_to_point
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_jump_to_point_sprite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_jump_to_point_sprite
popz.v

:[end]