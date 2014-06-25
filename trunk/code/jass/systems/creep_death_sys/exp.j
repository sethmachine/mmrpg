library ExpTrig requires CreepRegionTable

globals
	private real EXP_RANGE = 1000.0
endglobals

function expExec takes Monster creep returns nothing
	local integer i = 0 //loop through all the players
	local integer j = 0 //loop through party and farm monsters
	local texttag tt //show the exp gained by each monster
	local PlayerData pd
	local unit m
	local unit pc
	local unit u = creep.u
	local integer expGain = GetHeroLevel(creep.u) * 2000
	loop
		exitwhen i == TOTAL_PLAYERS
		set pd = playerDatum[i]
		set pc = pd.pc.u
		if IsUnitInRange(pc, u, EXP_RANGE) then //check to see if monster master is in range
			set j = 0
			loop //loop through the party and make sure each monster is in range
				exitwhen j == MAX_PARTY_SIZE
				if pd.party.monsters[j] != 0 then
					set m = pd.party.monsters[j].u
					if IsUnitInRange(m, u, EXP_RANGE) then
						if GetHeroLevel(m) != pd.party.monsters[j].maxLvl then
							call print(pd.party.monsters[j].toString())
							set tt = CreateTextTag()
							call SetTextTagText(tt, "Exp +" + I2S(R2I(expGain)), 0.02)
							call SetTextTagVisibility(tt, false) //hide text tag
							if players[i] == GetLocalPlayer() then //show tag only if its the owning player
								call SetTextTagVisibility (tt, true)
							endif
							call SetTextTagPosUnit(tt, m, 0)
							call SetTextTagColor(tt, 190, 0, 255, 255)
							call SetTextTagVelocity(tt, 0, 0.04)
							call SetTextTagPermanent(tt, false)
							call SetTextTagLifespan(tt, 3)
							call SetTextTagFadepoint(tt, 2)
							call AddHeroXP(m, expGain, true)
							set tt = null
						endif
					endif
				endif
				set j = j + 1
			endloop
		endif
		set i = i + 1
	endloop
endfunction

endlibrary