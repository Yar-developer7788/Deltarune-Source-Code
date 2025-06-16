.localvar 2 arguments
.localvar 10271 b 13638

:[0]
push.v self.turnspassed
push.e 1
add.i.v
pop.v.v self.turnspassed
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.c
pushi.e 1
pop.v.i local.b
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i local.b

:[3]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i local.b

:[5]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i local.b

:[7]
pushloc.v local.b
pushi.e 0
cmp.i.v EQ
bf [8]

:[8]
pushloc.v local.b
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 50
pop.v.i global.typer
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[10]
push.v 710.dancing
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v 710.danceCounter
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [20]

:[14]
push.v self.happyfeetscene
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
pushi.e 710
pushenv [16]

:[16]
popenv [16]
b [20]

:[17]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.skiptext
pushi.e 710
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.hurtstate2
pushi.e 273
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[19]
popenv [18]

:[20]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[21]
push.v 712.dancing
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v 712.danceCounter
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [31]

:[25]
push.v self.happyfeetscene
pushi.e 1
cmp.i.v EQ
bf [28]

:[26]
pushi.e 712
pushenv [27]

:[27]
popenv [27]
b [31]

:[28]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.skiptext
pushi.e 712
pushenv [30]

:[29]
pushi.e 1
pop.v.i self.hurtstate2
pushi.e 273
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[30]
popenv [29]

:[31]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[32]
push.v 714.dancing
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v 714.danceCounter
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [42]

:[36]
push.v self.happyfeetscene
pushi.e 1
cmp.i.v EQ
bf [39]

:[37]
pushi.e 714
pushenv [38]

:[38]
popenv [38]
b [42]

:[39]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.skiptext
pushi.e 714
pushenv [41]

:[40]
pushi.e 1
pop.v.i self.hurtstate2
pushi.e 273
conv.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[41]
popenv [40]

:[42]
pushi.e 710
pushenv [46]

:[43]
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [46]

:[44]
push.v self.danceCounter
push.e 1
sub.i.v
pop.v.v self.danceCounter
push.v self.danceCounter
pushi.e 0
cmp.i.v LTE
bf [46]

:[45]
pushi.e 0
pop.v.i self.dancing

:[46]
popenv [43]
pushi.e 712
pushenv [50]

:[47]
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [50]

:[48]
push.v self.danceCounter
push.e 1
sub.i.v
pop.v.v self.danceCounter
push.v self.danceCounter
pushi.e 0
cmp.i.v LTE
bf [50]

:[49]
pushi.e 0
pop.v.i self.dancing

:[50]
popenv [47]
pushi.e 714
pushenv [54]

:[51]
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [54]

:[52]
push.v self.danceCounter
push.e 1
sub.i.v
pop.v.v self.danceCounter
push.v self.danceCounter
pushi.e 0
cmp.i.v LTE
bf [54]

:[53]
pushi.e 0
pop.v.i self.dancing

:[54]
popenv [51]
push.v 718.ralseiportrait
pushi.e 0
cmp.i.v EQ
bf [end]

:[55]
pushi.e 714
pushenv [57]

:[56]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[57]
popenv [56]

:[end]