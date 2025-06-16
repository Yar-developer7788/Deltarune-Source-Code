.localvar 2 arguments

:[0]
b [16]

> gml_Script_scr_losechar (locals=0, argc=0)
:[1]
push.i 21857998
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
pushi.e 277
pushenv [15]

:[2]
pushi.e 0
pop.v.i self.chartotal
push.i 10979562
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
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [15]

:[4]
push.i 21858539
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
bf [6]

:[5]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.i 10979562
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
push.i 10979564
setowner.e
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.i 10979562
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
push.i 10979564
setowner.e
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos

:[10]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.i 10979562
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
push.i 10979564
setowner.e
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos

:[12]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
push.i 10979562
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
push.i 10979564
setowner.e
push.v self.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.charpos

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[15]
popenv [2]
exit.i

:[16]
push.i [function]gml_Script_scr_losechar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_losechar
popz.v

:[end]