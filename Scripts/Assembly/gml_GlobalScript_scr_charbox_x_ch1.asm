.localvar 2 arguments

:[0]
b [32]

> gml_Script_scr_charbox_x_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
conv.i.v
ret.v

:[6]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 212
conv.i.v
ret.v

:[11]
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 424
conv.i.v
ret.v

:[16]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 106
conv.i.v
ret.v

:[21]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 326
conv.i.v
ret.v

:[26]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.chartotal
pushi.e 1
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 212
conv.i.v
ret.v

:[31]
exit.i

:[32]
push.i [function]gml_Script_scr_charbox_x_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_charbox_x_ch1
popz.v

:[end]