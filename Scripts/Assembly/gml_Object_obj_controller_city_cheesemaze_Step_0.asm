.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 310
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 1150
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 1150
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
push.v 82.x
push.v self.trigX
cmp.v.v GTE
bf [7]

:[6]
push.v self.eventTriggered
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 360
pop.v.v [array]self.flag
pushi.e -5
pushi.e 310
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[10]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_cheesemaze_slash_Step_0_gml_18_0"@37833
conv.s.v
push.s "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%"@18070
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i self.eventTriggered
call.i instance_destroy(argc=0)
popz.v

:[19]
pushi.e -5
pushi.e 310
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[20]
pushi.e 1114
pushenv [23]

:[21]
push.v self.x
push.v other.trigX
cmp.v.v LT
bf [23]

:[22]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type
pushi.e 999
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 310
pop.v.v [array]self.flag

:[23]
popenv [21]
pushi.e 1
pop.v.i self.eventTriggered
call.i instance_destroy(argc=0)
popz.v

:[end]