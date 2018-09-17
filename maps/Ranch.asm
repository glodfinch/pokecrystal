  const_def 2 ; object constants
  const OBJECT_RANCH_POKE_1
  const OBJECT_RANCH_POKE_2
  const OBJECT_RANCH_POKE_3
  const OBJECT_RANCH_POKE_4
  const OBJECT_RANCH_POKE_5
  const OBJECT_RANCH_POKE_6
  const OBJECT_RANCH_POKE_7
  const OBJECT_RANCH_POKE_8
  const OBJECT_RANCH_POKE_9
  const OBJECT_RANCH_POKE_10
  const OBJECT_RANCH_POKE_11
  const OBJECT_RANCH_POKE_12
  const OBJECT_RANCH_POKE_13
  const OBJECT_RANCH_POKE_14
  const OBJECT_RANCH_POKE_15

Ranch_MapScripts:
  db 0 ; scene scripts

  db 0 ; callbacks

EmptyScript:
  opentext
  writetext ShitDummyText
	waitbutton
	closetext
  end

ShitDummyText:
	text "bugger"
	done

Ranch_MapEvents:
  db 0, 0 ; filler

  db 1 ; warp events
  warp_event  5, 5, NEW_BARK_TOWN, 5

  db 0 ; coord events

  db 0 ; bg events

  db 15 ; object events
  object_event 18, 6, SPRITE_GEODUDE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 12, 5, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 13, 9, SPRITE_WEEDLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 8, 7, SPRITE_ODDISH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 10, 10, SPRITE_GENGAR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 2, 7, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 1, 5, SPRITE_MAGIKARP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 5, 9, SPRITE_SQUIRTLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 3, 15, SPRITE_TOGEPI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 17, 14, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 12, 15, SPRITE_DIGLETT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 14, 16, SPRITE_POLIWAG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 6, 12, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 2, 15, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
  object_event 7, 16, SPRITE_CHARMANDER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EmptyScript, -1
