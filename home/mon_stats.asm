IsAPokemon::
; Return carry if species a is not a Pokemon.
	and a
	jr z, .NotAPokemon
	cp EGG
	jr z, .Pokemon
	cp NUM_POKEMON + 1
	jr c, .Pokemon

.NotAPokemon:
	scf
	ret

.Pokemon:
	and a
	ret

DrawBattleHPBar::
; Draw an HP bar d tiles long at hl
; Fill it up to e pixels
; to do: find a less dumb way to do this
	push hl
	push de
	push bc

; Place 'HP:'
	ld a, [wIsInBattle]
	and a
	ld a, $60
	jr z, .notInBattle1
	ld a, $c9
.notInBattle1
	ld [hli], a
	ld a, [wIsInBattle]
	and a
	ld a, $61
	jr z, .notInBattle2
	ld a, $ca
.notInBattle2
	ld [hli], a

; Draw a template
	push hl
	ld a, [wIsInBattle]
	and a
	ld a, $62
	jr z, .template
	ld a, $d0 ; empty bar
.template
	ld [hli], a
	dec d
	jr nz, .template
	ld a, [wIsInBattle]
	and a
	ld a, $6b
	jr z, .notInBattle3
	ld a, $d9 ; bar end
.notInBattle3
	add b
	ld [hl], a
	pop hl

; Safety check # pixels
	ld a, e
	and a
	jr nz, .fill
	ld a, c
	and a
	jr z, .done
	ld e, 1

.fill
; Keep drawing tiles until pixel length is reached
	ld a, e
	sub TILE_WIDTH
	jr c, .lastbar

	ld e, a
	ld a, [wIsInBattle]
	and a
	ld a, $6a
	jr z, .notInBattle4
	ld a, $d8 ; full bar
.notInBattle4
	ld [hli], a
	ld a, e
	and a
	jr z, .done
	jr .fill

.lastbar
	ld a, [wIsInBattle]
	and a
	ld a, $62
	jr z, .notInBattle5
	ld a, $d0  ; empty bar
.notInBattle5
	add e      ; + e
	ld [hl], a

.done
	pop bc
	pop de
	pop hl
	ret

PrepMonFrontpic::
	ld a, $1
	ld [wBoxAlignment], a

_PrepMonFrontpic::
	ld a, [wCurPartySpecies]
	call IsAPokemon
	jr c, .not_pokemon

	push hl
	ld de, vTiles2
	predef GetMonFrontpic
	pop hl
	xor a
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	xor a
	ld [wBoxAlignment], a
	ret

.not_pokemon
	xor a
	ld [wBoxAlignment], a
	inc a
	ld [wCurPartySpecies], a
	ret
