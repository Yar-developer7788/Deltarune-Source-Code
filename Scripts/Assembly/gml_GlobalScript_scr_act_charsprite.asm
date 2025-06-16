.localvar 2 arguments

:[0]
b [27]

> gml_Script_scr_act_charsprite (locals=0, argc=4)
:[1]
push.v arg.argument0
pop.v.v self._charactor
pushi.e 372
pop.v.i self._charinstance
push.v self._charactor
push.s "noelle"@74
cmp.s.v EQ
bf [3]

:[2]
pushi.e 375
pop.v.i self._charinstance
pushi.e 4
pop.v.i self._charnum

:[3]
push.v self._charactor
push.s "ralsei"@72
cmp.s.v EQ
bf [5]

:[4]
pushi.e 374
pop.v.i self._charinstance
pushi.e 3
pop.v.i self._charnum

:[5]
push.v self._charactor
push.s "susie"@70
cmp.s.v EQ
bf [7]

:[6]
pushi.e 373
pop.v.i self._charinstance
pushi.e 2
pop.v.i self._charnum

:[7]
push.v self._charactor
push.s "kris"@68
cmp.s.v EQ
bf [9]

:[8]
pushi.e 372
pop.v.i self._charinstance
pushi.e 1
pop.v.i self._charnum

:[9]
pushi.e -1
push.v self._charnum
conv.v.i
push.v [array]self._charactsprite
pop.v.v self.__returnvalue
push.v self._charinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [25]

:[10]
push.v self._charinstance
pushi.e -9
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.state
push.i 61049067
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[12]
popenv [11]
push.i 30574707
setowner.e
push.v arg.argument1
push.v self._charinstance
pushi.e -9
push.v [stacktop]self.y
push.v self._charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
push.v self._charnum
conv.v.i
pop.v.v [array]self._charactsprite
pushi.e -1
push.v self._charnum
conv.v.i
push.v [array]self._charactsprite
pushi.e -9
pushenv [24]

:[13]
pushi.e 20
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
conv.i.d
div.d.v
sub.v.i
pop.v.v self.depth
call.i gml_Script_scr_oflash(argc=0)
popz.v
push.v arg.argument2
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v arg.argument3
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v arg.argument2
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_animate(argc=3)
popz.v

:[18]
push.v arg.argument2
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.v arg.argument3
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v arg.argument2
pop.v.v self.image_speed

:[23]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
push.d 2.5
push.v self.a
pushi.e -9
pop.v.d [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.depth
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.b
push.d 0.6
push.v self.b
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 5
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 2
add.i.v
push.v self.b
pushi.e -9
pop.v.v [stacktop]self.depth

:[24]
popenv [13]
pushi.e -1
push.v self._charnum
conv.v.i
push.v [array]self._charactsprite
pop.v.v self.__returnvalue

:[25]
push.v self.__returnvalue
ret.v

:[26]
exit.i

:[27]
push.i [function]gml_Script_scr_act_charsprite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_act_charsprite
popz.v

:[end]