.localvar 2 arguments

:[0]
b [15]

> gml_Script_scr_mouse_tile_rotation_step (locals=0, argc=0)
:[1]
push.v self.__init
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e -1
push.v self.__currentposition
conv.v.i
push.v [array]self.__positionx
add.v.v
pop.v.v self.x
push.v self.__movedx
pushi.e -1
push.v self.__currentposition
conv.v.i
push.v [array]self.__positionx
add.v.v
pop.v.v self.__movedx
push.v self.y
pushi.e -1
push.v self.__currentposition
conv.v.i
push.v [array]self.__positiony
add.v.v
pop.v.v self.y
push.v self.__movedy
pushi.e -1
push.v self.__currentposition
conv.v.i
push.v [array]self.__positiony
add.v.v
pop.v.v self.__movedy
push.v self.__currentposition
pop.v.v self.__nextposition
pushi.e 1
pop.v.i self.__init

:[3]
push.v self.__con
pushi.e 0
cmp.i.v EQ
bf [11]

:[4]
push.v self.__move
pushi.e 0
cmp.i.v NEQ
bf [9]

:[5]
push.v self.__currentposition
push.v self.__move
add.v.v
pop.v.v self.__nextposition
push.v self.__nextposition
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.__positionmax
pop.v.v self.__nextposition

:[7]
push.v self.__nextposition
push.v self.__positionmax
cmp.v.v GT
bf [9]

:[8]
pushi.e 0
pop.v.i self.__nextposition

:[9]
push.v self.__nextposition
push.v self.__currentposition
cmp.v.v NEQ
bf [11]

:[10]
push.v self.__movedx
pop.v.v self.__curmovedx
push.v self.__movedy
pop.v.v self.__curmovedy
pushi.e -1
push.v self.__nextposition
conv.v.i
push.v [array]self.__positionx
pop.v.v self.__nextmovedx
pushi.e -1
push.v self.__nextposition
conv.v.i
push.v [array]self.__positiony
pop.v.v self.__nextmovedy
pushi.e 0
pop.v.i self.__movetimer
pushi.e 1
pop.v.i self.__con

:[11]
push.v self.__con
pushi.e 1
cmp.i.v EQ
bf [14]

:[12]
push.v self.__movetimer
push.e 1
add.i.v
pop.v.v self.__movetimer
push.v self.x
push.v self.__nextmovedx
push.v self.__movedx
sub.v.v
push.v self.__positionframes
div.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.__nextmovedy
push.v self.__movedy
sub.v.v
push.v self.__positionframes
div.v.v
add.v.v
pop.v.v self.y
push.v self.__movetimer
push.v self.__positionframes
cmp.v.v GTE
bf [14]

:[13]
pushi.e 0
pop.v.i self.__movetimer
pushi.e 0
pop.v.i self.__con
pushi.e -1
push.v self.__nextposition
conv.v.i
push.v [array]self.__positionx
pop.v.v self.__movedx
pushi.e -1
push.v self.__nextposition
conv.v.i
push.v [array]self.__positiony
pop.v.v self.__movedy
push.v self.__nextposition
pop.v.v self.__currentposition

:[14]
exit.i

:[15]
push.i [function]gml_Script_scr_mouse_tile_rotation_step
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_mouse_tile_rotation_step
popz.v

:[end]