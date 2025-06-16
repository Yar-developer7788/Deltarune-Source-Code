.localvar 2 arguments

:[0]
push.v self.recruitable
conv.v.b
bf [end]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
call.i gml_Script_scr_recruit_info(argc=1)
popz.v
push.v self._recruitcount
pop.v.v self.recruitcount

:[end]