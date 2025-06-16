.localvar 2 arguments

:[0]
b [28]

> gml_Script_scr_getchar (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.getchar
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.i 21726926
setowner.e
push.v arg.argument0
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
pushi.e 1
pop.v.i self.getchar

:[3]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.getchar
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v arg.argument0
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
pushi.e 1
pop.v.i self.getchar

:[8]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.getchar
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v arg.argument0
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
pushi.e 1
pop.v.i self.getchar

:[13]
pushi.e 277
pushenv [27]

:[14]
pushi.e 0
pop.v.i self.chartotal
push.i 10914026
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

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [27]

:[16]
push.i 21727467
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
bf [18]

:[17]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[18]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.i 10914026
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
push.i 10914028
setowner.e
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[20]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.i 10914026
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
push.i 10914028
setowner.e
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos

:[22]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
push.i 10914026
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
push.i 10914028
setowner.e
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos

:[24]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.i 10914026
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
push.i 10914028
setowner.e
push.v self.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.charpos

:[26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[27]
popenv [14]
exit.i

:[28]
push.i [function]gml_Script_scr_getchar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getchar
popz.v

:[end]