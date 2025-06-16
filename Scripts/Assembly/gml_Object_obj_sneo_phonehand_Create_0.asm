.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.crawlsiner
pushi.e 999
pop.v.i self.jointx
pushi.e 999
pop.v.i self.jointy
push.v self.jointy
pop.v.v self.remjointy
pushi.e -1
pop.v.i self.boss
pushi.e 6
pop.v.i self.element
pushi.e 4
pop.v.i self.amplitude
pushi.e 5
pop.v.i self.period
push.s "top"@6226
pop.v.s self.orientation
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.wasmoving
pushi.e 0
pop.v.i self.alt
pushi.e 0
pop.v.i self.visibiliytimer
pushi.e 0
pop.v.i self.image_alpha

:[end]