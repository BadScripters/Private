local api = {
    ["getkey"] = function() 
        return "!CloudHub"
    end,
    ["getplace"] = function() 
        return game.PlaceId
    end,
    ["getusername"] = function() 
        return game.Players.LocalPlayer.Name
    end,
     ["getuserid"] = function() 
        return game.Players.LocalPlayer.userId
     end,
 ["readfile"] = function(foldername,filename) 
        if syn then 
            if isfile(foldername.."/"..filename) then
                return readfile(foldername.."/"..filename)
                end
            end
 end,
["writefile"] = function(foldername,filename,text) 
        if syn then 
            if isfile(foldername.."/"..filename) then
                writefile(foldername.."/"..filename , text)
                end
            end
end,
 ["isExist"] = function(obj) -- check for object, if it is exist then returnes true
        if obj ~= nil then
           return true
        end
 end,
["isSynapse"] = function()
        if syn then
            return true
        else
            return false
        end
    end,
    ['isKrnl'] = function()
        if Krnl then
            return true
        else
            return false
        end
    end,
    ['GetExploit'] = function()
         local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
        (SENTINEL_LOADED and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (PROTOSMASHER_LOADED and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WRDAPI and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        (IS_VIVA_LOADED and "VIVA") or
        (IS_COCO_LOADED and "Coco") or
        (IsElectron and "Electron") or
        (getexecutorname and import and "Scriptware") or
       "no exploit?Wtf"

    return exploit
    end,
    }
    return api
