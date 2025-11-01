-- ZenAntiCheatBypasser.lua - Version Ultra Rapide
return (function()
    do
        -- 🎭 MASQUAGE EXPRESS TOUS LES EXECUTEURS
        pcall(function()
            -- 1. NETTOYAGE RAPIDE DES VARIABLES
            local fastClean = {
                "syn", "xeno", "krnl", "fluxus", "sw", "oxygen", "celery",
                "electron", "comet", "getexecutorname", "getscripts",
                "getrenv", "getreg", "getgc", "getinstances"
            }
            
            for _, var in ipairs(fastClean) do
                _G[var] = nil
                if getgenv then getgenv()[var] = nil end
                if shared then shared[var] = nil end
            end

            -- 2. HOOK EXPRESS DES FONCTIONS
            if hookfunction then
                -- Masque getexecutorname en 1 ligne
                if getexecutorname then
                    hookfunction(getexecutorname, function() return "Windows" end)
                end
                
                -- Protection anti-kick ultra rapide
                if game.Players.LocalPlayer then
                    hookfunction(game.Players.LocalPlayer.Kick, function() return nil end)
                end
                
                -- Protection namecall express
                if getrawmetatable then
                    local mt = getrawmetatable(game)
                    if mt and mt.__namecall then
                        hookfunction(mt.__namecall, function(self, ...)
                            local method = getnamecallmethod and getnamecallmethod() or ""
                            if method:lower():find("kick") or method:lower():find("ban") then
                                return nil
                            end
                            return mt.__namecall(self, ...)
                        end)
                    end
                end
            end

            -- 3. MASQUAGE MÉMOIRE RAPIDE
            if setidentity then pcall(setidentity, 8) end
            if setthreadidentity then pcall(setthreadidentity, 8) end
        end)

        -- ⏱️ DELAY MINIMAL
        task.wait(0.5)

        -- 🎯 CONFIRMATION INSTANTANÉE
        print("✅ ZenAntiCheatBypasser Loaded !")
    end

    return {
        Version = "Ultra-Fast v9.0",
        Status = "PROTECTED",
        Speed = "INSTANT"

            print("ZenAntiCheatBypasserVersion : ", Version)
    }
end)()
