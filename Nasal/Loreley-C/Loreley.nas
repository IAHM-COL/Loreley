#############################################################################################
# Loreley.nas                                                                               #
# Lee Elliot for Su-27                                                                      #
# Rewritten by Peter Brendt (JWocky)                                                        #
# Main Nasal for starting up all the aircraft-specific subsystems not started from the      #
#-set file                                                                                  #
#############################################################################################

#############################################################################################
# global variables / initial settings                                                       #
#############################################################################################
	
	#############################################################################################
	# Owner options	                                                                            #
	#############################################################################################
	var difficulty         = 0; # Set to 1 for advanced handling options e.g. engine overspeed, mach trim etc.
	var real_maintenance   = 1; # Set to 1 for real maintenance conditions
	var maintenance_report = 1; # Set to 1 for a console maintenance report at startup
	
	#############################################################################################
	# Property pathes, door positions at start                                                  #
	#############################################################################################
	var diff_root = "sim/difficulty";
	var rm_root   = "sim/maintenance";

	var lightpath = "sim/model/lights";
    
	var doorpath = "canopy";
	var doorpos = 1; 
	
	#############################################################################################
	# System presets                                                                            #
	#############################################################################################
	var acname = "Loreley"; # Script Display Name
	var main_loop_interval = 1; # Main loop update period in seconds
	var aux_loop_interval = 60; # Auxiliary loop update period in seconds
	
	#############################################################################################
	# Doors & Canopies                                                                          #
	#############################################################################################
	
	# Arguments: ( property path, seconds, start position )
	var canopy = aircraft.door.new(doorpath, 5, 1);		
	
	#############################################################################################
	# Saved data                                                                                #
	#############################################################################################
	
	aircraft.data.load();
	
	var savedata = [
		# This is a list of properties saved to disk every 60 seconds
		"sim/maintenance/airframe-seconds",
		"sim/maintenance/engine[0]/operating-seconds",
		"sim/maintenance/engine[1]/operating-seconds",
	];
	aircraft.data.add(savedata);
	
	#############################################################################################
	# Startup internal system                                                                   #
	#############################################################################################

	print("Loading "~acname~" Master Nasal");
	
	var init = func {
	   
		print("Initialising "~acname~" Master Nasal...");
		
		var diff_status = "Easy";
		var rm_status = "Off";
		
		if ( props.globals.getNode(diff_root~"/difficult-mode",1).getBoolValue() ) {
		     difficulty = 1;
		}
		
		if ( difficulty ) {	var diff_status = "Difficult" };
		
		# Check loaded modules
		
		#############################################################################################
		# Maintenace Module - not supported yet                                                     #
		#############################################################################################
print("rm_loaded="~rm_loaded);
		if ( rm_loaded ) { 
		
			print("Maintenance module loaded");
		 
			if ( real_maintenance ) {
				var rm_status = "On"; 
				print("  - Airframe Hours: " ~afhours);
				maintenance.init();
				maintenance.airframe_hours();	
				
				if ( maintenance_report ) {
					print("\nMaintenance Report:\n==================\n");
					var mrep = maintenance.report();
					print (mrep);					 
				}
			}
		}

#############################################################################################
# Electrical System Module - Not supported yet                                              #
#############################################################################################
#		 if  ( el_loaded ) {
#		     print("Electrical System module loaded");
#			}
#############################################################################################
		
		print("  - Difficulty setting: "~diff_status);
		print("  - Maintenance Mode: "~rm_status);
		
		props.globals.getNode(diff_root~"/difficult-mode",1).setBoolValue(difficulty);
		props.globals.getNode(rm_root~"/enabled",1).setBoolValue(real_maintenance);

		auxloop.start();
		
	}
		
	#############################################################################################
	# Difficulty                                                                                #
	#############################################################################################
	var diffprop = props.globals.getNode( diff_root~"/difficult-mode",1 );
	if ( diffprop.getBoolValue() ) { difficulty = 1 };
	diffprop.setBoolValue(difficulty);
    	
	#############################################################################################
	# Loops                                                                                     #
	#############################################################################################
	
	var loops = {

		main: func {
			# just here for later extensions ##################################
		},

		aux: func {
			# for maintenance counters ########################################
			if ( props.globals.getNode(rm_root~"/enabled",1).getBoolValue() ) { maintenance.rm_loop(); }
				# if maintenance on, save run seconds every minute
				aircraft.data.save();
		},
	};
	
	#############################################################################################
	# Set up timers for loops                                                                   #
	#############################################################################################
	
	var auxloop = maketimer(aux_loop_interval,loops.aux);
	
	#############################################################################################
	# Kick-start system after fdm is initialized                                                #
	#############################################################################################
	
	setlistener("sim/signals/fdm-initialized", func {
		settimer( init, 2);
	});
	
	
