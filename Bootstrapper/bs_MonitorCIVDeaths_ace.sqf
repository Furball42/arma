
if (isServer) then
{	
	addMissionEventHandler ["EntityKilled", 
	{
        _unit = _this select 0;
        _killer = _unit getVariable ["ace_medical_lastDamageSource", objNull];

		if (side group _unit == civilian) then
		{
			if(_killer == player) then {				
				bs_iCiviliansKilled = bs_iCiviliansKilled + 1;
			};

			if (bs_iCiviliansKilled > bs_iCivilianDeathTreshold) then
			{
                // execVM "Scripts\Bootstrapper\bs_MonitorCIVDeathsAction.sqf";
			};
		};
	}];
};