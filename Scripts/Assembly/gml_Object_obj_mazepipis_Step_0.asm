.localvar 2 arguments

:[0]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [3]

:[2]
push.s "con="@14381
push.v self.con
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.pipismarker
push.v self.pipismarker
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 0
pop.v.b self.visible
pushi.e 0
pop.v.i self.myinteract
push.d 1.4
conv.d.v
pushi.e 298
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.boss

:[9]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[10]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [12]

:[11]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pipismarker
pushi.e 0
conv.i.v
pushi.e 102
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[13]
pushi.e 18
pushenv [17]

:[14]
push.v self.boss
conv.v.b
not.b
bf [17]

:[15]
push.v other.y
push.v other.x
call.i distance_to_point(argc=2)
pushi.e 40
cmp.i.v LT
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [14]
call.i instance_destroy(argc=0)
popz.v

:[end]