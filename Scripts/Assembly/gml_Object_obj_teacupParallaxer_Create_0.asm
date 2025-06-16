.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.sy
push.i 1000020
pop.v.i self.depth
pushi.e 0
pop.v.i self.auto
pushi.e 0
pop.v.i self.autoamount
pushbltn.v builtin.room_height
pushi.e 2
mul.i.v
pop.v.v self.squarecount
pushi.e 2632
pop.v.i self.big
pushi.e 2633
pop.v.i self.mid
pushi.e 2634
pop.v.i self.smol
pushi.e 0
pop.v.i self.modifier
pushi.e 0
pop.v.i self.myy
pushi.e 0
pop.v.i self.init
call.i gml_Script_cameray(argc=0)
pop.v.v self.remcameray
push.v self.big
call.i sprite_get_height(argc=1)
pop.v.v self.bigheight
push.v self.mid
call.i sprite_get_height(argc=1)
pop.v.v self.midheight
push.v self.smol
call.i sprite_get_height(argc=1)
pop.v.v self.smallheight

:[end]