.localvar 2 arguments

:[0]
b [24]

> gml_Script_scr_randomtarget (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 2
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.abletotarget

:[7]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
b [8]

:[10]
b [12]

:[11]
pushi.e 3
pop.v.i self.mytarget

:[12]
push.i 14518392
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [14]

:[13]
push.v self.mytarget
pushi.e 3
cmp.i.v NEQ
b [15]

:[14]
push.e 0

:[15]
bf [23]

:[16]
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
conv.v.b
bf [18]

:[17]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.targeted

:[18]
pushi.e -5
pushi.e 1
push.v [array]self.charcantarget
conv.v.b
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.targeted

:[20]
pushi.e -5
pushi.e 2
push.v [array]self.charcantarget
conv.v.b
bf [22]

:[21]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.targeted

:[22]
pushi.e 4
pop.v.i self.mytarget

:[23]
exit.i

:[24]
push.i [function]gml_Script_scr_randomtarget
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_randomtarget
popz.v

:[end]