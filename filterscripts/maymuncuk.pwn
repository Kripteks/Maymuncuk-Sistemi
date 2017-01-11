#include <a_samp>
#include <zcmd>
#include <sscanf>
#include <streamer>
#include <progress2>
#pragma tabsize 0

new sayac[MAX_PLAYERS];
new maymunSay[MAX_PLAYERS];
new maymuncukAdet[MAX_PLAYERS];

new motor,isiklar,alarm,kapilar,kaput,bagaj,objective,
motordurumu[MAX_PLAYERS],fardurumu[MAX_PLAYERS],
alarmdurumu[MAX_PLAYERS],bool:kapidurumu[MAX_PLAYERS],
kaputdurumu[MAX_PLAYERS],bagajdurumu[MAX_PLAYERS],
objectivedurumu[MAX_PLAYERS];

new PlayerBar:maymunbar[MAX_PLAYERS];
public OnFilterScriptInit(){
	 AddStaticVehicle(520, 2109.1763, 1503.0453, 32.2887, 82.2873, 0, 1);
	return 1;
}

public OnFilterScriptExit(){
	//ForceClassSelection() -> Karakter seçim ekranýna götürür.
	return 1;
}


public OnPlayerConnect(playerid){
	maymunbar[playerid] = CreatePlayerProgressBar(playerid, 270.000000, 415.000000, 98.000000, 8.199999, 16777215, 100.0000, 0);
	maymuncukAdet[playerid] = 0;
	motordurumu[playerid]= 0;
	fardurumu[playerid]= 0;
	alarmdurumu[playerid]= 0;
	kapidurumu[playerid]= false;
	kaputdurumu[playerid]= 0;
	bagajdurumu[playerid]= 0;
	objectivedurumu[playerid]= 0;
	return 1;
}



forward sayacArttir(playerid, vehicleid);
public sayacArttir(playerid, vehicleid){
	new message[128];
	new sans = random(2);
	
	SetPlayerProgressBarValue(playerid, maymunbar[playerid], sayac[playerid]++);
	ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0); // Place Bomb
	GameTextForPlayer(playerid, "~y~kilit kiriliyor",250, 5);
	if(sayac[playerid] == 100){
	HidePlayerProgressBar(playerid, maymunbar[playerid]);
	KillTimer(maymunSay[playerid]);
	
	switch(sans){
	case 0: 
			{
			SendClientMessage(playerid, -1, "{990000}BÝLGÝ:{CC9900}Baþarýsýz oldunuz , maymuncuðunuz kýrýldý.");
			maymuncukAdet[playerid]--;
			format(message, sizeof(message), "{990000}BÝLGÝ:{CC9900}Kalan maymuncuðunuz %d adet",maymuncukAdet[playerid]);
			SendClientMessage(playerid, -1, message);
			TogglePlayerControllable(playerid, true);
			GameTextForPlayer(playerid, "~r~kilit kirilamadi",3000, 5);
			}	
			case 1: 
			{
			SendClientMessage(playerid, -1, "{990000}BÝLGÝ:{CC9900}Tebrikler, aracýn kilidini kýrmayý baþardýnýz.");
			maymuncukAdet[playerid]--;
			TogglePlayerControllable(playerid, true);
			GameTextForPlayer(playerid, "~g~kilit kirildi",3000, 5);
			GetVehicleParamsEx(vehicleid,motor,isiklar,alarm,kapilar,kaput,bagaj,objective);
			SetVehicleParamsEx(vehicleid,motor,isiklar,alarm,VEHICLE_PARAMS_OFF,kaput,bagaj,objective);
			kapidurumu[vehicleid] = false; // true kilitli, false kilitli deðil.
			}
		}
	}
	return 1;
}


CMD:kilitle(playerid)
{
	new vehicleid = GetPlayerVehicleID(playerid);
	GetVehicleParamsEx(vehicleid,motor,isiklar,alarm,kapilar,kaput,bagaj,objective);
	SetVehicleParamsEx(vehicleid,motor,isiklar,alarm,VEHICLE_PARAMS_ON,kaput,bagaj,objective);
	kapidurumu[vehicleid] = true;
	return 1;
}

CMD:kilitac(playerid)
{
	new vehicleid = GetPlayerVehicleID(playerid);
	GetVehicleParamsEx(vehicleid,motor,isiklar,alarm,kapilar,kaput,bagaj,objective);
	SetVehicleParamsEx(vehicleid,motor,isiklar,alarm,VEHICLE_PARAMS_OFF,kaput,bagaj,objective);
	kapidurumu[vehicleid] = false;
	return 1;
}
COMMAND:maymuncukal(playerid){
	
		new para = GetPlayerMoney(playerid);
	
		if(para < 1000)
		return SendClientMessage(playerid, -1, "{990000}BÝLGÝ:{CC9900}Maymuncuk satýn almak için yeterli paranýz bulunmamaktadýr.");
		new mesaj[150];
		maymuncukAdet[playerid]++;
		GivePlayerMoney(playerid, -1000);
		format(mesaj, sizeof(mesaj), "{990000}BÝLGÝ:{CC9900}Maymuncuk satýn aldýnýz. Toplam Maymuncuðunuz : %d",maymuncukAdet[playerid]);
		SendClientMessage(playerid, -1, mesaj);
	
	return 1;
}

	COMMAND:kilitkir(playerid,params[]){
			
			new arid;		
			
				if(maymuncukAdet[playerid] <= 0)
					return SendClientMessage(playerid, -1, "{990000}BÝLGÝ:{CC9900}Maymuncuðunuz bulunmamaktadýr.");
				
				if(sscanf(params, "i",arid)) 
					return SendClientMessage(playerid, -1, "KULLANIM: /kilitkir [Araç ID]");
					
				new Float: pos[3];
				GetVehiclePos(arid, pos[0], pos[1], pos[2]);
				
				if(!IsPlayerInRangeOfPoint(playerid, 2.0, pos[0], pos[1], pos[2]))
					return SendClientMessage(playerid, -1, "{990000}BÝLGÝ:{CC9900}Girdiðiniz Araç ID yakýnýnýzda deðil.");
				if(kapidurumu[arid] == false)
					return SendClientMessage(playerid, -1, "{990000}BÝLGÝ:{CC9900} Aracýn kapýlarý zaten açýk.");
					
					maymunSay[playerid]  = SetTimerEx("sayacArttir", 250, true, "ii", playerid, arid);
					TogglePlayerControllable(playerid, false); 
					ShowPlayerProgressBar(playerid, maymunbar[playerid]);
					sayac[playerid] = 0;
	return 1;
}

COMMAND:veh(playerid, params[]){
			new arid, Float:pos[3];
			if(sscanf(params, "i", arid)) return SendClientMessage(playerid, -1, "KULLANIM: /veh [ID]");
			GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
			AddStaticVehicle(arid, pos[0], pos[1], pos[2], 0, 12, 13);
	return 1;
}

CMD:para(playerid){
	GivePlayerMoney(playerid, 5000);
	return 1;
}
