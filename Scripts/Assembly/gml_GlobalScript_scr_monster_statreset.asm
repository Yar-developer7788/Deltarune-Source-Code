.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_monster_statreset (locals=0, argc=1)
:[1]
push.i 61311026
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monster
push.i 61311143
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterx
push.i 61311144
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstery
push.i 61311459
setowner.e
push.s "scr_monster_statreset_slash_scr_monster_statreset_gml_5_0"@10276
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstername
push.i 61311461
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterat
push.i 61311462
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterdf
push.i 61311414
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterhp
push.i 61311460
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 61311027
setowner.e
push.l 12913921839
conv.l.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterinstance
push.i 61311436
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstergold
push.i 61311437
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterexp
push.i 61311463
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.sparepoint
push.i 61311145
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.hittarget
push.i 61311078
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.mercymod
push.i 61311464
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.mercymax
push.i 61311536
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstercomment
push.i 61311421
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterattackname
push.i 61311298
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterstatus
push.v arg.argument0
call.i gml_Script_scr_monster_actreset(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_monster_statreset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monster_statreset
popz.v

:[end]