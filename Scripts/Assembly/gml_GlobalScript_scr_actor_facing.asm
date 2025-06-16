.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_actor_facing (locals=0, argc=2)
:[1]
push.v arg.argument1
pop.v.v self.__newfacing
push.v self.__newfacing
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.facing
push.v self.__newfacing
push.s "d"@6706
cmp.s.v EQ
bf [3]

:[2]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.dsprite
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[3]
push.v self.__newfacing
push.s "r"@6696
cmp.s.v EQ
bf [5]

:[4]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.rsprite
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[5]
push.v self.__newfacing
push.s "l"@6707
cmp.s.v EQ
bf [7]

:[6]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.lsprite
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[7]
push.v self.__newfacing
push.s "u"@6708
cmp.s.v EQ
bf [9]

:[8]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.usprite
push.v arg.argument0
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_actor_facing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_actor_facing
popz.v

:[end]