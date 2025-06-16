.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.currentturn
pushi.e 1
pop.v.i self.turns
pushi.e 0
pop.v.b self.manualturns
push.i 170434
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.letters
pushi.e 30
pop.v.i self.turnspeed
pushi.e -1
pop.v.i self.lastletter
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.timer
push.i 170437
setowner.e
pushi.e 211
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.voiceclips
pushi.e 212
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.voiceclips
pushi.e 213
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.voiceclips
pushi.e 214
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.voiceclips
pushi.e 1
pop.v.b self.canrepeat
pushi.e 0
pop.v.i self.creator
pushi.e -1
pop.v.i self.damage
pushi.e -1
pop.v.i self.target
pushi.e -4
pop.v.i self.animator
pushi.e 456
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 456
pop.v.i self.animator
b [3]

:[2]
pushi.e 456
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.animator
pushi.e 0
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -1
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state

:[3]
pushi.e 0
pop.v.b self.nextdifficulty
pushi.e 0
pop.v.b self.dojo
pushi.e 0
pop.v.b self.restart
pushi.e 0
pop.v.i self.rounds

:[end]