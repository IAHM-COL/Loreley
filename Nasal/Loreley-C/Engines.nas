#############################################################################################
# Engines.nas                                                                               #
# Peter Brendtfor Loreley                                                                   #
# Engine helpers for Loreley                                                                #
#############################################################################################

	#############################################################################################
	# Engine Autostart Helpers                                                                  #
	#############################################################################################

	var eng1fuelon = func { 
		var key="engines/engine[0]";
		var serviceable=getprop(key~"/serviceable");

		if (serviceable) {	
			setprop("/controls/engines/engine[0]/cutoff", 0); 
			gui.popupTip("Engine 1 started");
		} else {
			gui.popupTip("Engine 1 not serviceable");
		}
	}

	var eng1fueloff = func { 
		setprop("/controls/engines/engine[0]/cutoff", 1); 
		gui.popupTip("Engine 1 stopped");
	}

	var eng2fuelon = func { 
		var key="engines/engine[1]";
		var serviceable=getprop(key~"/serviceable");

		if (serviceable) {	
			setprop("/controls/engines/engine[1]/cutoff", 0); 
			gui.popupTip("Engine 2 started");
		} else {
			gui.popupTip("Engine 2 not serviceable");
		}		
	}

	var eng2fueloff = func { 
		setprop("/controls/engines/engine[1]/cutoff", 1); 
		gui.popupTip("Engine 2 stopped");
	}

	var eng1starter = func { 
		setprop("/controls/engines/engine[0]/starter", 1); 
	}

	var eng2starter = func { 
		setprop("/controls/engines/engine[1]/starter", 1); 
	}

	var eng1start = func {
		eng1fueloff();
		eng1starter();
		settimer(eng1fuelon, 12);
	}

	var eng2start = func {
		eng2fueloff();
		eng2starter();
		settimer(eng2fuelon, 12);
	};

	var engstart = func {
		settimer(eng1start, 2);
		settimer(eng2start, 8);
	}

	var engstop = func {
		eng1fueloff();
		eng2fueloff();
	}

	var autostart = func {
		var startstatus = getprop("/sim/autostart/started");
		if ( startstatus == 0 ) {
			gui.popupTip("Autostarting...");
			setprop("/sim/autostart/started", 1);
			setprop("/controls/electric/battery-switch", 1);
			settimer(engstart, 0.5);
			gui.popupTip("Starting Engines");
		}
		if ( startstatus == 1 ) {
			gui.popupTip("Shutting Down...");
			setprop("/sim/autostart/started", 0);
			engstop();
		}
	}

	#############################################################################################
	# Set Afterburner and Water Injection depending on throttle                                 #
	#############################################################################################

	var checkThrottle1=func {
		var key1="controls/engines/engine[0]";
		var key2="engines/engine[0]";
		var throttle=getprop(key1~"/throttle");
		var serviceable=getprop(key2~"/serviceable");

		if (serviceable) {
			if (throttle>0.90) {
				setprop(key2~"/augmentation", 'true');
				setprop(key2~"/afterburner", 'true');
			} else {
				setprop(key2~"/augmentation", 'false');
				setprop(key2~"/afterburner", 'false');
			}
		
			if (throttle>0.95) {
				setprop(key2~"/water-injection", 'true');
			} else {
				setprop(key2~"/water-injection", 'false');
			}
		}
	}

	var checkThrottle2=func {
		var key1="controls/engines/engine[1]";
		var key2="engines/engine[1]";
		var throttle=getprop(key1~"/throttle");
		var serviceable=getprop(key2~"/serviceable");

		if (serviceable) {
			if (throttle>0.90) {
				setprop(key2~"/augmentation", 'true');
				setprop(key2~"/afterburner", 'true');
			} else {
				setprop(key2~"/augmentation", 'false');
				setprop(key2~"/afterburner", 'false');
			}
	
			if (throttle>0.95) {
				setprop(key2~"/water-injection", 'true');
			} else {
				setprop(key2~"/water-injection", 'false');
			}
		}
	}

	var eng1throttle_listener=setlistener("controls/engines/engine[0]/throttle", checkThrottle1);
	var eng2throttle_listener=setlistener("controls/engines/engine[1]/throttle", checkThrottle2);

