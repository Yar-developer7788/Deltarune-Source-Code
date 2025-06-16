.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.fadeout
pushi.e 0
pop.v.i self.fadein
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.active
push.v self.default_time
push.v self.timefactor
mul.v.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.boss
pushi.e 0
pop.v.b self.onroad
pushi.e 0
pop.v.i self.fadestate
pushi.e 0
pop.v.i self.pressbuffer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.allcount
pushi.e 0
pop.v.b self.clear_traffic
pushi.e 0
pop.v.i self.deleteCars
pushi.e 0
pop.v.i self.ralsei
pushi.e 0
pop.v.i self.susie

:[end]