.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_charcan_ch1 (locals=0, argc=1)
:[1]
pushi.e 1
pop.v.i self.charcan
pushi.e -5
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.charcan

:[3]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.acting
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.charcan

:[5]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.charcan

:[7]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.charcan

:[9]
pushi.e -5
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.charcan

:[11]
push.v self.charcan
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_charcan_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_charcan_ch1
popz.v

:[end]