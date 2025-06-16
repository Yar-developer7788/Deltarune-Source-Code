.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_bulletspawner (locals=0, argc=3)
:[1]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__dc
push.v self.myself
push.v self.__dc
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.mytarget
push.v self.__dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.__dc
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.__dc
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_bulletspawner
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_bulletspawner
popz.v

:[end]