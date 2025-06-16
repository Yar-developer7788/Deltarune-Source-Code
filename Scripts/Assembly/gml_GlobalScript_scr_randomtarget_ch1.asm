.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_randomtarget_ch1 (locals=0, argc=0)
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
push.i 108497016
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
exit.i

:[13]
push.i [function]gml_Script_scr_randomtarget_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_randomtarget_ch1
popz.v

:[end]