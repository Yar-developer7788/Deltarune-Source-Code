.localvar 2 arguments

:[0]
pushi.e 840
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 840
pushenv [3]

:[2]
pushi.e 0
pop.v.i 840.healcount
push.i 231833
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
call.i gml_Script_scr_spellmenu_setup(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.i 231131
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.d 0.5
pop.v.d self.dead
pushi.e -5
pushi.e 526
push.v [array]self.flag
pushi.e 10
cmp.i.v LT
bf [6]

:[5]
push.i 231204
setowner.e
pushi.e -5
pushi.e 526
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v

:[6]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 0
pop.v.i self.health_count
pushi.e 0
pop.v.i self.dead_timer
pushi.e 0
pop.v.i global.turntimer
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [8]

:[7]
pushi.e 380
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [13]

:[10]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 357
pushenv [12]

:[11]
pushi.e 5
pop.v.i self.gigaqueencon
pushi.e 0
pop.v.i self.gigaqueentimer

:[12]
popenv [11]

:[13]
pushi.e 840
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.missleattack
pushi.e 0
pop.v.i self.breathattack

:[15]
popenv [14]
pushi.e 789
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.finalbaseballused

:[17]
popenv [16]

:[end]