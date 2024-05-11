function CustomFunction(text, duration)
    Debug("Playing custom function")
    if not duration then
        duration = 5000
    end
    Citizen.CreateThread(function()
        local startTime = GetGameTimer()
        local endTime = startTime + duration
        local lineHeight = 0.03  -- Line height adjustment (change as needed)
        local startY = 0.4
        
        -- Split text into words
        local words = {}
        for word in string.gmatch(text, "%S+") do
            table.insert(words, word)
        end

        -- Construct lines based on actual text width
        local lines = {}
        local currentLine = ""
        for i, word in ipairs(words) do
            local testLine = currentLine == "" and word or (currentLine .. " " .. word)

            -- Calculate the width of the test line
            SetTextFont(0)
            SetTextScale(0.5, 0.5)
            SetTextWrap(0.0, 1.0)
            BeginTextCommandWidth("STRING")
            AddTextComponentSubstringPlayerName(testLine)
            local lineWidth = EndTextCommandGetWidth(true)

            if lineWidth > 0.5 then  -- Adjust this threshold based on screen width
                table.insert(lines, currentLine)
                currentLine = word
            else
                currentLine = testLine
            end
        end

        -- Add the last line
        if currentLine ~= "" then
            table.insert(lines, currentLine)
        end

        -- Display the lines and wait for the specified duration
        while GetGameTimer() < endTime do
            for i, line in ipairs(lines) do
                local yPos = startY + (i - 1) * lineHeight

                -- Clear the screen each frame
                SetTextFont(0)
                SetTextProportional(1)
                SetTextScale(0.5, 0.5)
                SetTextColour(255, 255, 255, 255)
                SetTextDropshadow(0, 0, 0, 0, 255)
                SetTextEdge(1, 0, 0, 0, 255)
                SetTextOutline()
                SetTextCentre(true)

                -- Display the text line
                SetTextEntry("STRING")
                AddTextComponentSubstringPlayerName(line)
                DrawText(0.5, yPos)
            end

            Citizen.Wait(0)  -- Yield to allow other Lua threads to execute
        end
    end)
end

function HideHUD()
    Debug("Hide HUD")
    DisplayRadar(false)
    ExecuteCommand('togglehud') -- For ESX hud
end

function ShowHUD()
    Debug("Show HUD")
    DisplayRadar(true)
    ExecuteCommand('togglehud') -- For ESX hud
end

function SpawnVehicle(tutorialId)
    local tutorialConfig = Config.Tutorial[tutorialId]
    if tutorialConfig.TutorialVehicle.enabled then
        ESX = exports["es_extended"]:getSharedObject()
        ESX.Game.SpawnVehicle(tutorialConfig.TutorialVehicle.model, tutorialConfig.TutorialVehicle.coords, tutorialConfig.TutorialVehicle.heading)
    end
end

function AdditionalOnCancel(tutorialId)
    ExecuteCommand('togglehud') -- For ESX hud
end
