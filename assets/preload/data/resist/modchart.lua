function start(song) -- do fuck all
    spinLength = 0
end

function update(elapsed)
    if difficulty == 2 and curStep > 62 and curStep < 832 then
        if spinLength < 32 then
            spinLength = spinLength + 0.2
        end


        local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,7,1 do
                    local receptor = _G['receptor_'..i]
            receptor.x = receptor.defaultX + spinLength * math.sin((currentBeat + i*0.01) * math.pi * 0.75)
            receptor.y = receptor.defaultY + spinLength * math.cos((currentBeat + i*0.05) * math.pi * 1.5) * 0.25
        end
    end
    if curStep > 832 then
        for i=0,7,1 do
            local receptor = _G['receptor_'..i]
            receptor.x = receptor.defaultX
            receptor.y = receptor.defaultY
        end
    end
    if difficulty == 2 and curStep > 1088 then
        if spinLength < 32 then
            spinLength = spinLength + 0.2
        end


        local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,7,1 do
                    local receptor = _G['receptor_'..i]
            receptor.x = receptor.defaultX + spinLength * math.sin((currentBeat + i*0.25) * math.pi) * 0.4
            receptor.y = receptor.defaultY + spinLength * math.cos((currentBeat + i*0.25) * math.pi) * 0.4
        end
    end
end

function beatHit(beat) -- do fuck all
end

function stepHit(step) -- do fuck all

end

function playerTwoTurn()
end

function playerOneTurn()
end