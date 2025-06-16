.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_mouse_tile_rotation_init (locals=0, argc=0)
:[1]
pushi.e 7
pop.v.i self.__positionmax
pushi.e 0
pop.v.i self.__positionmin
pushi.e 0
pop.v.i self.__positionmove
pushi.e 0
pop.v.i self.__currentposition
pushi.e 0
pop.v.i self.__previousposition
pushi.e 0
pop.v.i self.__nextposition
pushi.e 20
pop.v.i self.__positionframes
pushi.e 0
pop.v.i self.__move
pushi.e 0
pop.v.i self.__positionspeed
pushi.e 0
pop.v.i self.__moving
pushi.e 0
pop.v.i self.__movetimer
pushi.e 0
pop.v.i self.__movedx
pushi.e 0
pop.v.i self.__movedy
pushi.e 0
pop.v.i self.__con
push.i 35097718
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.__positionx
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.__positionx
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.__positionx
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.__positionx
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.__positionx
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.__positionx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.__positionx
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.__positionx
push.i 35097719
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.__positiony
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.__positiony
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.__positiony
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.__positiony
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.__positiony
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.__positiony
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.__positiony
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.__positiony
pushi.e 0
pop.v.i self.__init
exit.i

:[2]
push.i [function]gml_Script_scr_mouse_tile_rotation_init
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_mouse_tile_rotation_init
popz.v

:[end]