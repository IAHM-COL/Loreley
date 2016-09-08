#############################################################################################
# Payload.nas                                                                               #
# Peter Brendt for Loreley                                                                  #
# Check on changes in payload and set weight for the chosen options                         #
#############################################################################################

	#############################################################################################
	# Pylon 1 left                                                                              #
	#############################################################################################

	var checkPayload0=func {

		var select=getprop("payload/weight[1]/selected");

		if (select==getprop("payload/weight[1]/opt[0]/name")) {
			setprop("payload/weight[1]/weight-lb", getprop("payload/weight[1]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[1]", getprop("payload/weight[1]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[1]/opt[1]/name")) {
			setprop("payload/weight[1]/weight-lb", getprop("payload/weight[1]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[1]", getprop("payload/weight[1]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[1]/opt[2]/name")) {
			setprop("payload/weight[1]/weight-lb", getprop("payload/weight[1]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[1]", getprop("payload/weight[1]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[1]/opt[3]/name")) {
			setprop("payload/weight[1]/weight-lb", getprop("payload/weight[1]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[1]", getprop("payload/weight[1]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 2 left                                                                              #
	#############################################################################################

	var checkPayload1=func {

		var select=getprop("payload/weight[2]/selected");

		if (select==getprop("payload/weight[2]/opt[0]/name")) {
			setprop("payload/weight[2]/weight-lb", getprop("payload/weight[2]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[2]", getprop("payload/weight[2]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[2]/opt[1]/name")) {
			setprop("payload/weight[2]/weight-lb", getprop("payload/weight[2]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[2]", getprop("payload/weight[2]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[2]/opt[2]/name")) {
			setprop("payload/weight[2]/weight-lb", getprop("payload/weight[2]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[2]", getprop("payload/weight[2]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[2]/opt[3]/name")) {
			setprop("payload/weight[2]/weight-lb", getprop("payload/weight[2]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[2]", getprop("payload/weight[2]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 3 left                                                                              #
	#############################################################################################

	var checkPayload2=func {

		var select=getprop("payload/weight[3]/selected");

		if (select==getprop("payload/weight[3]/opt[0]/name")) {
			setprop("payload/weight[3]/weight-lb", getprop("payload/weight[3]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[3]", getprop("payload/weight[3]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[3]/opt[1]/name")) {
			setprop("payload/weight[3]/weight-lb", getprop("payload/weight[3]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[3]", getprop("payload/weight[3]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[3]/opt[2]/name")) {
			setprop("payload/weight[3]/weight-lb", getprop("payload/weight[3]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[3]", getprop("payload/weight[3]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[3]/opt[3]/name")) {
			setprop("payload/weight[3]/weight-lb", getprop("payload/weight[3]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[3]", getprop("payload/weight[3]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 4 left                                                                              #
	#############################################################################################

	var checkPayload3=func {

		var select=getprop("payload/weight[4]/selected");

		if (select==getprop("payload/weight[4]/opt[0]/name")) {
			setprop("payload/weight[4]/weight-lb", getprop("payload/weight[4]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[4]", getprop("payload/weight[4]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[4]/opt[1]/name")) {
			setprop("payload/weight[4]/weight-lb", getprop("payload/weight[4]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[4]", getprop("payload/weight[4]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[4]/opt[2]/name")) {
			setprop("payload/weight[4]/weight-lb", getprop("payload/weight[4]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[4]", getprop("payload/weight[4]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[4]/opt[3]/name")) {
			setprop("payload/weight[4]/weight-lb", getprop("payload/weight[4]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[4]", getprop("payload/weight[4]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 5 left                                                                              #
	#############################################################################################

	var checkPayload4=func {

		var select=getprop("payload/weight[5]/selected");

		if (select==getprop("payload/weight[5]/opt[0]/name")) {
			setprop("payload/weight[5]/weight-lb", getprop("payload/weight[5]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[5]", getprop("payload/weight[5]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[5]/opt[1]/name")) {
			setprop("payload/weight[5]/weight-lb", getprop("payload/weight[5]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[5]", getprop("payload/weight[5]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[5]/opt[2]/name")) {
			setprop("payload/weight[5]/weight-lb", getprop("payload/weight[5]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[5]", getprop("payload/weight[5]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[5]/opt[3]/name")) {
			setprop("payload/weight[5]/weight-lb", getprop("payload/weight[5]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[5]", getprop("payload/weight[5]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Center Pylon                                                                              #
	#############################################################################################

	var checkPayload5=func {

		var select=getprop("payload/weight[6]/selected");
print("P6 selected "~select);
		if (select==getprop("payload/weight[6]/opt[0]/name")) {
			setprop("payload/weight[6]/weight-lb", getprop("payload/weight[6]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[6]", getprop("payload/weight[6]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[6]/opt[1]/name")) {
			setprop("payload/weight[6]/weight-lb", getprop("payload/weight[6]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[6]", getprop("payload/weight[6]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[6]/opt[2]/name")) {
			setprop("payload/weight[6]/weight-lb", getprop("payload/weight[6]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[6]", getprop("payload/weight[6]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[6]/opt[3]/name")) {
			setprop("payload/weight[6]/weight-lb", getprop("payload/weight[6]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[6]", getprop("payload/weight[6]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 5 right                                                                             #
	#############################################################################################

	var checkPayload6=func {

		var select=getprop("payload/weight[7]/selected");

		if (select==getprop("payload/weight[7]/opt[0]/name")) {
			setprop("payload/weight[7]/weight-lb", getprop("payload/weight[7]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[7]", getprop("payload/weight[7]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[7]/opt[1]/name")) {
			setprop("payload/weight[7]/weight-lb", getprop("payload/weight[7]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[7]", getprop("payload/weight[7]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[7]/opt[2]/name")) {
			setprop("payload/weight[7]/weight-lb", getprop("payload/weight[7]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[7]", getprop("payload/weight[7]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[7]/opt[3]/name")) {
			setprop("payload/weight[7]/weight-lb", getprop("payload/weight[7]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[7]", getprop("payload/weight[7]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 4 right                                                                             #
	#############################################################################################

	var checkPayload7=func {

		var select=getprop("payload/weight[8]/selected");

		if (select==getprop("payload/weight[8]/opt[0]/name")) {
			setprop("payload/weight[8]/weight-lb", getprop("payload/weight[8]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[8]", getprop("payload/weight[8]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[8]/opt[1]/name")) {
			setprop("payload/weight[8]/weight-lb", getprop("payload/weight[8]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[8]", getprop("payload/weight[8]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[8]/opt[2]/name")) {
			setprop("payload/weight[8]/weight-lb", getprop("payload/weight[8]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[8]", getprop("payload/weight[8]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[8]/opt[3]/name")) {
			setprop("payload/weight[8]/weight-lb", getprop("payload/weight[8]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[8]", getprop("payload/weight[8]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 3 right                                                                             #
	#############################################################################################

	var checkPayload8=func {

		var select=getprop("payload/weight[9]/selected");

		if (select==getprop("payload/weight[9]/opt[0]/name")) {
			setprop("payload/weight[9]/weight-lb", getprop("payload/weight[9]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[9]", getprop("payload/weight[9]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[9]/opt[1]/name")) {
			setprop("payload/weight[9]/weight-lb", getprop("payload/weight[9]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[9]", getprop("payload/weight[9]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[9]/opt[2]/name")) {
			setprop("payload/weight[9]/weight-lb", getprop("payload/weight[9]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[9]", getprop("payload/weight[9]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[9]/opt[3]/name")) {
			setprop("payload/weight[9]/weight-lb", getprop("payload/weight[9]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[9]", getprop("payload/weight[9]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 2 right                                                                             #
	#############################################################################################

	var checkPayload9=func {

		var select=getprop("payload/weight[10]/selected");

		if (select==getprop("payload/weight[10]/opt[0]/name")) {
			setprop("payload/weight[10]/weight-lb", getprop("payload/weight[10]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[10]", getprop("payload/weight[10]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[10]/opt[1]/name")) {
			setprop("payload/weight[10]/weight-lb", getprop("payload/weight[10]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[10]", getprop("payload/weight[10]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[10]/opt[2]/name")) {
			setprop("payload/weight[10]/weight-lb", getprop("payload/weight[10]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[10]", getprop("payload/weight[10]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[10]/opt[3]/name")) {
			setprop("payload/weight[10]/weight-lb", getprop("payload/weight[10]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[10]", getprop("payload/weight[10]/opt[3]/lbs"));
		}	
	}

	#############################################################################################
	# Pylon 1 right                                                                             #
	#############################################################################################

	var checkPayload10=func {

		var select=getprop("payload/weight[11]/selected");

		if (select==getprop("payload/weight[11]/opt[0]/name")) {
			setprop("payload/weight[11]/weight-lb", getprop("payload/weight[11]/opt[0]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[11]", getprop("payload/weight[11]/opt[0]/lbs"));
		}
	
		if (select==getprop("payload/weight[11]/opt[1]/name")) {
			setprop("payload/weight[11]/weight-lb", getprop("payload/weight[11]/opt[1]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[11]", getprop("payload/weight[11]/opt[1]/lbs"));
		}	
	
		if (select==getprop("payload/weight[11]/opt[2]/name")) {
			setprop("payload/weight[11]/weight-lb", getprop("payload/weight[11]/opt[2]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[11]", getprop("payload/weight[11]/opt[2]/lbs"));
		}	
	
		if (select==getprop("payload/weight[11]/opt[3]/name")) {
			setprop("payload/weight[11]/weight-lb", getprop("payload/weight[1]/opt[3]/lbs"));
			setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[1]", getprop("payload/weight[1]/opt[3]/lbs"));
		}	
	}


#############################################################################################
# Hang onall thelisteners for each pylon                                                    #
#############################################################################################

var payload0_listener=setlistener("payload/weight[1]/selected", checkPayload0);
var payload1_listener=setlistener("payload/weight[2]/selected", checkPayload1);
var payload2_listener=setlistener("payload/weight[3]/selected", checkPayload2);
var payload3_listener=setlistener("payload/weight[4]/selected", checkPayload3);
var payload4_listener=setlistener("payload/weight[5]/selected", checkPayload4);
var payload5_listener=setlistener("payload/weight[6]/selected", checkPayload5);
var payload6_listener=setlistener("payload/weight[7]/selected", checkPayload6);
var payload7_listener=setlistener("payload/weight[8]/selected", checkPayload7);
var payload8_listener=setlistener("payload/weight[9]/selected", checkPayload8);
var payload9_listener=setlistener("payload/weight[10]/selected", checkPayload9);
var payload10_listener=setlistener("payload/weight[11]/selected", checkPayload10);

