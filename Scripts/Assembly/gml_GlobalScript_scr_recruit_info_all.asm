.localvar 2 arguments

:[0]
b [18]

> gml_Script_scr_recruit_info_all (locals=0, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v LTE
bf [3]

:[2]
call.i gml_Script_scr_recruits_to_array(argc=0)
pop.v.v self.allrecruits

:[3]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i gml_Script_scr_recruits_to_array(argc=2)
pop.v.v self.allrecruits

:[5]
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v GTE
bf [10]

:[6]
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "half"@10432
cmp.s.v EQ
bf [8]

:[7]
push.v self.halfrecruits
pop.v.v self.allrecruits

:[8]
pushi.e -15
pushi.e 0
push.v [array]self.argument
push.s "either"@10431
cmp.s.v EQ
bf [10]

:[9]
push.v self.eitherrecruits
pop.v.v self.allrecruits

:[10]
pushi.e 0
pop.v.i self.__i

:[11]
push.v self.__i
push.v self.allrecruits
cmp.v.v LT
bf [17]

:[12]
pushi.e -1
push.v self.__i
conv.v.i
push.v [array]self.recruit
call.i gml_Script_scr_recruit_info(argc=1)
popz.v
push.i 33131496
setowner.e
pushi.e -1
push.v self.__i
conv.v.i
push.v [array]self.recruit
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitID
push.i 33131497
setowner.e
push.v self._sprite
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitSprite
push.i 33131498
setowner.e
push.v self._spritex
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitSpriteX
push.i 33131499
setowner.e
push.v self._spritey
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitSpriteY
push.i 33131500
setowner.e
push.v self._imagespeed
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitImageSpeed
push.i 33131501
setowner.e
push.v self._name
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitName
push.i 33131502
setowner.e
push.v self._desc
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitDesc
push.i 33131503
setowner.e
push.v self._like
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitLike
push.i 33131504
setowner.e
push.v self._dislike
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitDislike
push.i 33131505
setowner.e
push.v self._chapter
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitChapter
push.i 33131506
setowner.e
push.v self._level
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitLevel
push.i 33131507
setowner.e
push.v self._attack
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitAttack
push.i 33131508
setowner.e
push.v self._defense
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitDefense
push.i 33131509
setowner.e
push.v self._element
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitElement
push.i 33131510
setowner.e
push.v self._dialogueboxes
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitDialogueBoxes
push.i 33131511
setowner.e
push.v self._recruitcount
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitCountMax
push.i 33131512
setowner.e
push.v self._recruitcountcurrent
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitCountCurrent
push.i 33131513
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitFullyRecruited
pushi.e -5
pushi.e 600
pushi.e -1
push.v self.__i
conv.v.i
push.v [array]self.recruitID
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitFullyRecruited

:[14]
pushi.e -1
push.v self.__i
conv.v.i
push.v [array]self.recruitFullyRecruited
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.i 33131502
setowner.e
push.s "scr_recruit_info_all_slash_scr_recruit_info_all_gml_46_0"@10697
conv.s.v
push.s "Not yet fully recruited"@10698
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitDesc
push.i 33131503
setowner.e
push.s "scr_recruit_info_all_slash_scr_recruit_info_all_gml_47_0"@10699
conv.s.v
push.s "?"@4913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitLike
push.i 33131504
setowner.e
push.s "scr_recruit_info_all_slash_scr_recruit_info_all_gml_48_0"@10700
conv.s.v
push.s "?"@4913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitDislike

:[16]
push.i 33131514
setowner.e
push.v self._placeable
pushi.e -1
push.v self.__i
conv.v.i
pop.v.v [array]self.recruitPlaceable
push.v self.__i
push.e 1
add.i.v
pop.v.v self.__i
b [11]

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_recruit_info_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_recruit_info_all
popz.v

:[end]