.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 800
push.v self.seat
add.v.i
conv.v.i
push.v [array]self.flag
call.i gml_Script_scr_recruit_info(argc=1)
popz.v
push.v self._sprite
pop.v.v self.remsprite
pushi.e 0
pop.v.i self.image_index

:[end]