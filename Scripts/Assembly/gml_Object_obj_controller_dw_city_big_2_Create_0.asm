.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1040
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield
pushi.e 0
pop.v.i self.toggle
pushi.e 0
pop.v.i self.hasToggled
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.toggledtimer
pushi.e 0
pop.v.i self.bothToggled
pushi.e 0
pop.v.i self.noellePuzzle
pushi.e 0
pop.v.i self.failurecount
pushi.e 0
pop.v.i self.revengeNoelle
pushi.e 0
pop.v.i self.revengecon
pushi.e 0
pop.v.i self.ignoreHardWork
pushi.e 0
pop.v.b self.weirdRoute
pushi.e 0
pop.v.i self.noelleWaitCheck
pushi.e 0
pop.v.i self.fakeStep
pushi.e 0
pop.v.i self.noelleWaiting
pushi.e -5
pushi.e 383
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 9999
pop.v.i self.con
pushi.e 1
pop.v.i self.bothToggled
push.v self.forcefield
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.b self.weird_prompt
pushi.e 0
pop.v.i self.myinteract

:[end]