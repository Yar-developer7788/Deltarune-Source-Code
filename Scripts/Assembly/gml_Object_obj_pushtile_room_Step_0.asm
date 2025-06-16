.localvar 2 arguments
.localvar 107 i 7179
.localvar 15582 pushchanged 7181

:[0]
push.v self.pushedoverride
pushi.e 0
cmp.i.v LT
bf [7]

:[1]
pushi.e 0
pop.v.i self.pushed
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pushChar
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.pushed

:[5]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[6]
b [8]

:[7]
push.v self.pushedoverride
pop.v.v self.pushed

:[8]
pushi.e -1
pop.v.i local.pushchanged
push.v self.pushed
push.v self.rempushed
cmp.v.v NEQ
bf [10]

:[9]
push.v self.pushed
pop.v.v local.pushchanged

:[10]
pushloc.v local.pushchanged
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.pushVariableUp
push.v self.pushVariableName
pushi.e 0
conv.i.v
push.v self.bossObject
call.i instance_find(argc=2)
call.i variable_instance_set(argc=3)
popz.v

:[12]
pushloc.v local.pushchanged
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.pushSound
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.pushVariableDown
push.v self.pushVariableName
pushi.e 0
conv.i.v
push.v self.bossObject
call.i instance_find(argc=2)
call.i variable_instance_set(argc=3)
popz.v

:[14]
push.v self.pushType
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.pushed
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.pushedoverride

:[17]
push.v self.pushed
pop.v.v self.image_index
push.v self.pushed
pop.v.v self.rempushed

:[end]