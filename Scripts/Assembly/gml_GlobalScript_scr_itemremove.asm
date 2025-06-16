.localvar 2 arguments

:[0]
b [64]

> gml_Script_scr_itemremove (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.removed
push.v arg.argument0
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [63]

:[2]
pushi.e 0
pop.v.i self.loc
pushi.e 0
pop.v.i self.skip
pushi.e -5
pushi.e 0
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [4]

:[3]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [9]

:[8]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[12]
pushi.e -5
pushi.e 2
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [14]

:[13]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 2
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[17]
pushi.e -5
pushi.e 3
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [19]

:[18]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 3
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[22]
pushi.e -5
pushi.e 4
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [24]

:[23]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 4
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[27]
pushi.e -5
pushi.e 5
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [29]

:[28]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 5
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[32]
pushi.e -5
pushi.e 6
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [34]

:[33]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 6
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[37]
pushi.e -5
pushi.e 7
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [39]

:[38]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 7
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[42]
pushi.e -5
pushi.e 8
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [44]

:[43]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 8
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[47]
pushi.e -5
pushi.e 9
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [49]

:[48]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 9
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[52]
pushi.e -5
pushi.e 10
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [54]

:[53]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 10
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[57]
pushi.e -5
pushi.e 11
push.v [array]self.item
push.v arg.argument0
cmp.v.v EQ
bf [59]

:[58]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 11
pop.v.i self.loc
pushi.e 1
pop.v.i self.skip

:[62]
pushi.e 0
conv.i.v
push.v self.loc
call.i gml_Script_scr_itemshift(argc=2)
popz.v
pushi.e 1
pop.v.i self.removed

:[63]
exit.i

:[64]
push.i [function]gml_Script_scr_itemremove
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemremove
popz.v

:[end]