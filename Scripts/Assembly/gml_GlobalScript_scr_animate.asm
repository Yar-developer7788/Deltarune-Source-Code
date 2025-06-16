.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_animate (locals=0, argc=3)
:[1]
pushi.e 921
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__animator
push.v self.id
push.v self.__animator
pushi.e -9
pop.v.v [stacktop]self.target
push.v arg.argument0
push.v self.__animator
pushi.e -9
pop.v.v [stacktop]self.initframe
push.v arg.argument1
push.v self.__animator
pushi.e -9
pop.v.v [stacktop]self.endframe
push.v arg.argument2
push.v self.__animator
pushi.e -9
pop.v.v [stacktop]self.fake_image_speed
push.v self.__animator
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_animate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_animate
popz.v

:[end]