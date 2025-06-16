.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
exit.i

:[5]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [22]

:[6]
pushi.e 1158
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
push.v self.cutscene
pop.v.v 1158.cutscene
pushi.e 1158
pushenv [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]
b [22]

:[10]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [22]

:[14]
push.v self.x
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v self.initwd
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.wd
push.v self.y
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
push.v self.initht
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.ht
push.v self.wd
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.ht
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [16]

:[15]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[16]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [18]

:[17]
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[18]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[20]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [22]

:[21]
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[22]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [43]

:[23]
pushglb.v global.plot
pushi.e 245
cmp.i.v GTE
bt [25]

:[24]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
b [26]

:[25]
push.e 1

:[26]
bf [43]

:[27]
pushi.e 1158
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[28]
push.v self.cutscene
pop.v.v 1158.cutscene
pushi.e 1158
pushenv [30]

:[29]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[30]
popenv [29]
b [43]

:[31]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [34]

:[33]
push.e 0

:[34]
bf [43]

:[35]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.x
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pushi.e 11
add.i.v
pop.v.v self.wd
push.v self.y
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pushi.e 17
add.i.v
pop.v.v self.ht
push.v self.wd
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.ht
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [37]

:[36]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[37]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [39]

:[38]
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[39]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[41]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [43]

:[42]
pushbltn.v builtin.room_height
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[43]
push.v self.bg
pushi.e 1
cmp.i.v EQ
bf [end]

:[44]
pushi.e 185
pushenv [46]

:[45]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[46]
popenv [45]

:[end]