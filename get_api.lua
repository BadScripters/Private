local api = {
    ["getkey"] = function() 
        return "CloudyKey"
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
				else 
				makefolder(foldername) 
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
	["GetBlacklist"] = function()
		if syn then
       if game.Players.LocalPlayer.userId == 704671942 then
				messagebox("Your roblox client was crashed","Roblox",0)
				wait(0.5) game:ShutDown()
				elseif  game.Players.LocalPlayer.userId == 2449711843 then 
				messagebox("Your roblox client was crashed","Roblox",0)
				wait(0.5) game:ShutDown()
				elseif  game.Players.LocalPlayer.userId == 536225038 then 
				messagebox("Your roblox client was crashed","Roblox",0)
				wait(0.5) game:ShutDown()
				elseif  game.Players.LocalPlayer.userId == 2449711843 then 
				messagebox("Your roblox client was crashed","Roblox",0)
				wait(0.5) game:ShutDown()
		end end	
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
     ['LoadScript'] = function()
        if game.placeId == 6284583030  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/Psx/Cloud_Hub.lua"))()
     elseif game.placeId == 10321372166  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/Psx/Cloud_Hub.lua"))()
     elseif game.placeId == 7722306047  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/Psx/Cloud_Hub.lua"))()
 elseif game.placeId == 537413528 then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud_Hub-boat.lua"))()
 elseif game.placeId == 5780309044 then 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud_Hub-stands.lua"))()
      elseif game.placeId == 1224212277 then 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/CloudHub-Mad.lua"))()
      elseif game.placeId == 9170761016  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud-MagicClicker.lua"))()
      elseif game.placeId == 183364845  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/SpeedRun-Cloud.lua"))()
     elseif game.placeId == 6516141723  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Doors-CloudHub.lua"))()
     elseif game.placeId == 6839171747  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Doors-CloudHub.lua"))()
      elseif game.placeId == 9872472334  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud-Evade.lua"))()
      elseif game.placeId == 1537690962  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/BSS-cloud.lua"))()
      elseif game.placeId == 10047913840  then
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Tradining-Cloud.lua"))()
  end
        print("loaded")
    end,
     ['DSinvite'] = function()
       if syn then
            syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "XmmkF6y7ve"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
            else
            setclipboard("https://discord.gg/XmmkF6y7ve")
      	OrionLib:MakeNotification({
	Name = "Copied!",
	Content = "Copied to clipboard discord invite!",
	Image = "rbxassetid://4483345998",
	Time =  10
})
            end
    end,
	 ["remotes"] = { 
              ["farm coin"] = "9",
        ["join coin"] = "e",
        ['open egg']= '.y',
        ['equip']="Equip Pet",
        ['unequip all'] = '.7',
        ['enchant'] = '.v',
        ['gold'] = '.N',
        ['rainbow'] = '.u',
        ['boost'] = 'Use Boost',
        ['get coins'] = '.8',
        ['orb'] = 'K' }, 
    }
 
    return api
