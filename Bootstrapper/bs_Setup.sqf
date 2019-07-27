
//CIVILIAN DEATHS
bs_bCheckCivilianDeaths = true;
bs_iCivilianDeathTreshold = 2;
bs_iCiviliansKilled = 0;

if (bs_bCheckCivilianDeaths) then {
    execVM "Scripts\Bootstrapper\bs_MonitorCIVDeaths_ace.sqf";
}

