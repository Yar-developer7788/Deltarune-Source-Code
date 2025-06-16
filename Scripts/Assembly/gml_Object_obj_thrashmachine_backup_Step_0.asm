.localvar 2 arguments

:[0]
push.i 166604
setowner.e
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 223
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dcolor
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 224
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dcolor
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 225
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dcolor
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.i 167832
setowner.e
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e -1
pushi.e 1
pop.v.v [array]self.part
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e -1
pushi.e 0
pop.v.v [array]self.part
pushi.e -5
pushi.e 222
push.v [array]self.flag
pushi.e -1
pushi.e 2
pop.v.v [array]self.part
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [4]

:[2]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.duckmode

:[7]
pushi.e 1
pop.v.i self.init

:[8]
push.v self.value
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.basecolor
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[9]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [11]

:[10]
push.v self.dbselect
conv.v.b
not.b
pop.v.b self.dbselect

:[11]
pushi.e 48
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [13]

:[12]
pushi.e 96
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [14]

:[13]
push.e 1

:[14]
bf [22]

:[15]
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.part
call.i randomise(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.part
call.i randomise(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.part
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [18]

:[16]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i self.duckmode
b [22]

:[21]
pushi.e 0
pop.v.i self.duckmode

:[22]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [24]

:[23]
pushi.e 1
pop.v.i self.a

:[24]
push.v self.dbselect
conv.v.b
bf [end]

:[25]
pushi.e 110
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [27]

:[26]
pushi.e 0
pop.v.i self.init

:[27]
push.v self.dbselect
conv.v.b
bf [32]

:[28]
push.v self.duckmode
conv.v.b
not.b
bf [32]

:[29]
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [32]

:[30]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i self.duckmode
b [end]

:[35]
push.v self.duckmode
conv.v.b
bf [41]

:[36]
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [39]

:[37]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
not.b
b [42]

:[41]
push.e 0

:[42]
bf [end]

:[43]
pushi.e 0
pop.v.i self.duckmode

:[end]