local player = game.Players.LocalPlayer

local function dupeTotems(cantidad)
    for i = 1, cantidad do
        local remote = game.ReplicatedStorage:FindFirstChild("GiveTotem") 
                    or game.ReplicatedStorage:FindFirstChild("AddItem") 
                    or game.ReplicatedStorage:FindFirstChild("BuyTotem")
                    or game.ReplicatedStorage:FindFirstChild("GiveItem")
        
        if remote then
            remote:FireServer("Totem", 1)
            print("Dupeando totem #" .. i)
            wait(0.5)
        else
            warn("Remote no encontrado, prueba otro método")
            break
        end
    end
    print("✅ Dupe finalizado!")
end

dupeTotems(15)  -- Cambia 15 por la cantidad que quieras
