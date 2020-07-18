--//-----------------------------------------------\\
--||   Author       : Lorenzo(DorteY)
--\\-----------------------------------------------//


function giveRadnomMoneyToAllOnlinePlayers()
	for _,v in pairs(getElementsByType("player"))do
		if(isLoggedin(v))then--change this to your  value example: getElementData(v,"Loggedin")==1
			local rdm=math.random(500,2000)
			givePlayerMoney(v,rdm)
			outputChatBox("$ "..rdm,v,220,90,0)
		end
	end
end
setTimer(giveRadnomMoneyToAllOnlinePlayers,30*1000,0)