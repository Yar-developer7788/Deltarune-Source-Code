.localvar 2 arguments
.localvar 7017 a 6646
.localvar 14829 rand 6647

:[0]
pushi.e 7
pop.v.i self.wallsize
pushi.e 35
pop.v.i self.wallcountmax
pushi.e 0
pop.v.i self.wallcount
pushi.e 0
pop.v.i self.wallsetupcount
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.timer2
pushi.e 30
pop.v.i self.wallcreatetimermax
pushi.e 0
pop.v.i self.con
push.v 697.difficulty
pop.v.v self.difficulty
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
call.i gml_Script_camerax(argc=0)
pop.v.v self.track1_x
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pop.v.v self.track2_x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pop.v.v self.track3_x
pushi.e 0
pop.v.i self.x
pushi.e 0
pop.v.i self.y
push.i 165681
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.breakspot1
push.i 165685
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.breakspot2
push.i 165689
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.breakspot3
push.i 165693
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.breakspot4
push.i 165697
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.breakspot5
push.i 165682
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.pipispot1
push.i 165686
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.pipispot2
push.i 165690
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.pipispot3
push.i 165694
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.pipispot4
push.i 165698
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.pipispot5
push.i 165679
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.emptyspot1
push.i 165684
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.emptyspot2
push.i 165688
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.emptyspot3
push.i 165692
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.emptyspot4
push.i 165696
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.emptyspot5
push.i 165683
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.redbreakspot1
push.i 165687
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.redbreakspot2
push.i 165691
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.redbreakspot3
push.i 165695
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.redbreakspot4
push.i 165699
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.wallcountmax
conv.v.i
pop.v.v [array]self.redbreakspot5
pushi.e 0
pop.v.i local.a
push.v self.wallcountmax
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
push.i 165700
setowner.e
push.v self.wallcreatetimermax
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.wallcreatetimer
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 0
pop.v.i local.a
push.v self.wallcountmax
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
push.i 167809
setowner.e
pushi.e -7
conv.i.v
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.wallspeed
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i
pushi.e 0
pop.v.i local.a
push.v self.wallcountmax
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
push.i 165701
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.walltype
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [34]

:[7]
pushi.e 0
pop.v.i local.a
push.v self.wallcountmax
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
push.i 165701
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.walltype
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[9]
popz.i
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[11]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[13]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[15]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[17]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[19]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[21]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[23]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[25]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[27]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[29]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[31]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[33]
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[34]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [78]

:[35]
pushi.e 0
pop.v.i local.a
push.v self.wallcountmax
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [37]

:[36]
push.i 165701
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.walltype
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [36]

:[37]
popz.i
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[39]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[41]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[43]
pushloc.v local.rand
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[45]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[47]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[49]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[51]
pushloc.v local.rand
pushi.e 4
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[53]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[55]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
conv.i.v
pushi.e 32
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[57]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[59]
pushloc.v local.rand
pushi.e 4
cmp.i.v EQ
bf [61]

:[60]
pushi.e 1
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[61]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[63]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[65]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[67]
pushloc.v local.rand
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[69]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[71]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[73]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[75]
pushloc.v local.rand
pushi.e 4
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[77]
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[78]
push.v self.difficulty
pushi.e 99
cmp.i.v EQ
bf [90]

:[79]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[81]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[83]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 1
conv.i.v
pushi.e 63
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[85]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
conv.i.v
pushi.e 63
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[87]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1
conv.i.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[89]
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[90]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [98]

:[91]
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [93]

:[92]
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [92]

:[93]
popz.i
pushi.e 0
conv.i.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [95]

:[94]
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [94]

:[95]
popz.i
pushi.e 0
conv.i.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [97]

:[96]
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=8)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [96]

:[97]
popz.i
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[98]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [end]

:[99]
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [101]

:[100]
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [100]

:[101]
popz.i
pushi.e 0
conv.i.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [103]

:[102]
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [102]

:[103]
popz.i
pushi.e 0
conv.i.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [105]

:[104]
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=7)
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [104]

:[105]
popz.i
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_sneo_wall_create(argc=7)
popz.v

:[end]