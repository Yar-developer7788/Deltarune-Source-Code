.localvar 2 arguments

:[0]
b [17]

> gml_Script_scr_losechar_ch1 (locals=0, argc=0)
:[1]
push.i 113608398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 36
cmp.i.v LT
bf [4]

:[3]
push.i 113609107
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.submenucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1494
pushenv [16]

:[5]
pushi.e 0
pop.v.i self.chartotal
push.i 56854762
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [16]

:[7]
push.i 113608939
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 56854762
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
push.i 56854764
setowner.e
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[11]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.i 56854762
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
push.i 56854764
setowner.e
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos

:[13]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.i 56854762
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
push.i 56854764
setowner.e
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos

:[15]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[16]
popenv [5]
exit.i

:[17]
push.i [function]gml_Script_scr_losechar_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_losechar_ch1
popz.v

:[end]