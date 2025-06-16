.localvar 2 arguments
.localvar 10406 __myid 2541

:[0]
b [63]

> gml_Script_scr_move_to_charmarker (locals=1, argc=3)
:[1]
push.v self.id
pop.v.v local.__myid
push.v arg.argument0
pop.v.v self.__arg0
push.v arg.argument0
push.s "last"@10407
cmp.s.v EQ
bt [3]

:[2]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [9]

:[5]
pushi.e 1119
pushenv [8]

:[6]
push.v self.lastmarker
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.group
pushloc.v local.__myid
pushi.e -9
pop.v.v [stacktop]self.__arg0

:[8]
popenv [6]

:[9]
pushi.e 1119
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.v self.__arg0
pop.v.v 1119.__arg0

:[11]
push.i 32803770
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.__marker
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.__marker
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.__marker
pushi.e 1119
pushenv [27]

:[12]
push.v self.group
push.v self.__arg0
cmp.v.v EQ
bf [14]

:[13]
push.v self.char
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.i 65506234
setowner.e
push.v self.id
pushloc.v local.__myid
pushi.e -9
pushi.e 0
pop.v.v [array]self.__marker

:[17]
push.v self.group
push.v self.__arg0
cmp.v.v EQ
bf [19]

:[18]
push.v self.char
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.id
pushloc.v local.__myid
pushi.e -9
pushi.e 1
pop.v.v [array]self.__marker

:[22]
push.v self.group
push.v self.__arg0
cmp.v.v EQ
bf [24]

:[23]
push.v self.char
pushi.e 2
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.id
pushloc.v local.__myid
pushi.e -9
pushi.e 2
pop.v.v [array]self.__marker

:[27]
popenv [12]
pushi.e -1
pushi.e 0
push.v [array]self.__marker
pushi.e -1
cmp.i.v NEQ
bf [29]

:[28]
pushi.e -1
pushi.e 1
push.v [array]self.__marker
pushi.e -1
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.i 32803770
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.__marker
pushi.e -1
pushi.e 1
pop.v.v [array]self.__marker

:[32]
pushi.e -1
pushi.e 1
push.v [array]self.__marker
pushi.e -1
cmp.i.v NEQ
bf [34]

:[33]
pushi.e -1
pushi.e 2
push.v [array]self.__marker
pushi.e -1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e -1
pushi.e 1
push.v [array]self.__marker
pushi.e -1
pushi.e 2
pop.v.v [array]self.__marker

:[37]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[38]
pushi.e -1
pushi.e 0
push.v [array]self.__marker
pushi.e -1
cmp.i.v NEQ
bf [40]

:[39]
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [45]

:[42]
pushi.e -1
pushi.e 0
push.v [array]self.__marker
pop.v.v 82.__marker
pushi.e 82
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.fun
push.v arg.argument2
push.v self.__marker
pushi.e -9
push.v [stacktop]self.goal_y_pos
push.v self.__marker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
pop.v.v self.__mover
pushi.e 1
push.v self.__mover
pushi.e -9
pop.v.i [stacktop]self.charmarker

:[44]
popenv [43]

:[45]
pushi.e 0
pop.v.i self.__ii

:[46]
push.v self.__ii
pushi.e 2
cmp.i.v LT
bf [62]

:[47]
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e -1
push.v self.__ii
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.__marker
pushi.e -1
cmp.i.v NEQ
b [50]

:[49]
push.e 0

:[50]
bf [61]

:[51]
push.i 65506234
setowner.e
pushi.e -1
push.v self.__ii
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.__marker
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.__marker
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [60]

:[52]
pushi.e 1
pop.v.i self.fun
pushi.e 0
pop.v.i self.follow
push.v self.__marker
pushi.e -9
push.v [stacktop]self.goal_y_pos
pop.v.v self.goaly
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [58]

:[53]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.v self.goaly
pushi.e 16
sub.i.v
pop.v.v self.goaly

:[55]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
push.v self.goaly
pushi.e 6
sub.i.v
pop.v.v self.goaly

:[57]
b [59]

:[58]
push.v self.goaly
pushi.e 12
sub.i.v
pop.v.v self.goaly

:[59]
push.v arg.argument2
push.v self.goaly
push.v self.__marker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
pop.v.v self.__mover
pushi.e 2
push.v self.__mover
pushi.e -9
pop.v.i [stacktop]self.charmarker

:[60]
popenv [52]

:[61]
push.v self.__ii
push.e 1
add.i.v
pop.v.v self.__ii
b [46]

:[62]
exit.i

:[63]
push.i [function]gml_Script_scr_move_to_charmarker
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_move_to_charmarker
popz.v

:[end]