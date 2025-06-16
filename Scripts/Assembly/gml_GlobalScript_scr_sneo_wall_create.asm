.localvar 2 arguments

:[0]
b [47]

> gml_Script_scr_sneo_wall_create (locals=0, argc=7)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[2]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 1738543
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.emptyspot1

:[4]
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.i 1738545
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.breakspot1

:[6]
push.v arg.argument0
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.i 1738546
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.pipispot1

:[8]
push.v arg.argument0
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.i 1738547
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.redbreakspot1

:[10]
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [11]

:[11]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.i 1738548
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.emptyspot2

:[13]
push.v arg.argument1
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.i 1738549
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.breakspot2

:[15]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.i 1738550
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.pipispot2

:[17]
push.v arg.argument1
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
push.i 1738551
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.redbreakspot2

:[19]
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [20]

:[20]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.i 1738552
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.emptyspot3

:[22]
push.v arg.argument2
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.i 1738553
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.breakspot3

:[24]
push.v arg.argument2
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
push.i 1738554
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.pipispot3

:[26]
push.v arg.argument2
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
push.i 1738555
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.redbreakspot3

:[28]
push.v arg.argument3
pushi.e 0
cmp.i.v EQ
bf [29]

:[29]
push.v arg.argument3
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.i 1738556
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.emptyspot4

:[31]
push.v arg.argument3
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.i 1738557
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.breakspot4

:[33]
push.v arg.argument3
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
push.i 1738558
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.pipispot4

:[35]
push.v arg.argument3
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.i 1738559
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.redbreakspot4

:[37]
push.v arg.argument4
pushi.e 0
cmp.i.v EQ
bf [38]

:[38]
push.v arg.argument4
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.i 1738560
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.emptyspot5

:[40]
push.v arg.argument4
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.i 1738561
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.breakspot5

:[42]
push.v arg.argument4
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
push.i 1738562
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.pipispot5

:[44]
push.v arg.argument4
pushi.e 4
cmp.i.v EQ
bf [46]

:[45]
push.i 1738563
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.redbreakspot5

:[46]
push.i 1738564
setowner.e
push.v arg.argument5
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.wallcreatetimer
push.i 1738565
setowner.e
push.v arg.argument6
pushi.e -1
push.v self.wallsetupcount
conv.v.i
pop.v.v [array]self.walltype
push.v self.wallsetupcount
push.e 1
add.i.v
pop.v.v self.wallsetupcount
exit.i

:[47]
push.i [function]gml_Script_scr_sneo_wall_create
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_sneo_wall_create
popz.v

:[end]