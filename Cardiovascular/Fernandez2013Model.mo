within ;
package Fernandez2013Model
  package Models
    model Hemodynamics
      extends Cardiovascular.System(
        redeclare Parts.PulmonaryCirculation pulmonaryCirculation,
        redeclare Parts.Heart heart,
        redeclare Parts.SystemicCirculation systemicCirculation);

    end Hemodynamics;

    model Hemodynamics_flat
      Physiolibrary.Hydraulic.Components.Conductor RPulmonaryVeins(
          useConductanceInput=true)                                annotation(Placement(visible = true, transformation(origin = {-220, 60}, extent = {{15, -15}, {-15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia pulmonaryVeinsInertia(I(
            displayUnit="mmHg.s2/ml") = 410632.9532382, volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06)                           annotation(Placement(visible = true, transformation(origin={-278,60},    extent = {{15, -15}, {-15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RPulmonaryArtery(
          useConductanceInput=true)                                 annotation(Placement(visible = true, transformation(origin = {300, 60}, extent = {{17.5, -17.5}, {-17.5, 17.5}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia pulmonaryArterialInertia(I(
            displayUnit="mmHg.s2/ml") = 99991.79056125, volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06)                              annotation(Placement(visible = true, transformation(origin = {240, 60}, extent = {{15, -15}, {-15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryVeins(
        useComplianceInput=false,
        volume_start(displayUnit="l") = 0.00025,
        Compliance=3.5027875591992e-07)                               annotation(Placement(visible = true, transformation(origin = {-315, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve mitralValve(
          useLimitationInputs=true)                             annotation(Placement(visible = true, transformation(origin = {-255, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel leftVentricle(
          useComplianceInput=true, volume_start=1e-07)               annotation(Placement(visible = true, transformation(origin={-215,-3},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RLeftMyo(useConductanceInput=
           true)                                            annotation(Placement(visible = true, transformation(origin = {-175, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve aorticValve(
          useLimitationInputs=true)                             annotation(Placement(visible = true, transformation(origin = {-135, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel aorta(Compliance=
            1.6501354668604e-09)                             annotation(Placement(visible = true, transformation(origin = {-95, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor Raorta(useConductanceInput=
            true)                                         annotation(Placement(visible = true, transformation(origin = {-55, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia aorticInertia(I(displayUnit=
              "mmHg.s2/ml") = 109990.96961737, volumeFlow_start(displayUnit=
              "ml/min") = 8.8e-06)                             annotation(Placement(visible = true, transformation(origin = {-15, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel arteries(Compliance=
            1.0950899007347e-08)                                annotation(Placement(visible = true, transformation(origin = {25, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RSystemic(
          useConductanceInput=true)                          annotation(Placement(visible = true, transformation(origin = {65, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia systemicInertia(
          volumeFlow_start(displayUnit="ml/min") = 8.8e-06, I=1727858140.8984)
                                                                 annotation(Placement(visible = true, transformation(origin={107,-3},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve tricuspidValve(
          useLimitationInputs=true)                                annotation(Placement(visible = true, transformation(origin={195,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel rightVentricle(
          useComplianceInput=true, volume_start=1e-07)                annotation(Placement(visible = true, transformation(origin={235,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RRightMyo(
          useConductanceInput=true)                          annotation(Placement(visible = true, transformation(origin={275,-7},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve pulmonaryValve(
          useLimitationInputs=true)                                annotation(Placement(visible = true, transformation(origin={315,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryArtery(
          Compliance=6.7505541826109e-10)                              annotation(Placement(visible = true, transformation(origin={355,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryArterioles(
          Compliance=2.0026644075079e-08)                                  annotation(Placement(visible = true, transformation(origin = {200, 60}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R8(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{-280,24},{-272,32}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb8(k=0)
        annotation (Placement(transformation(extent={{-258,30},{-250,38}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst Rml(k(
            displayUnit="(mmHg.s)/ml") = 10665790.9932)
        annotation (Placement(transformation(extent={{-180,28},{-172,36}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R1(k(
            displayUnit="(mmHg.s)/ml") = 500105.60743241)
        annotation (Placement(transformation(extent={{-152,34},{-144,42}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb1(k=0)
        annotation (Placement(transformation(extent={{-134,34},{-126,42}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R2(k(
            displayUnit="(mmHg.s)/ml") = 8999394.4728999)
        annotation (Placement(transformation(extent={{-74,24},{-66,32}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R3(k(
            displayUnit="(mmHg.s)/ml") = 133322387.415)
        annotation (Placement(transformation(extent={{56,20},{64,28}})));
      Physiolibrary.Hydraulic.Components.ElasticVessel veins(volume_start(
            displayUnit="l") = 0.0011, Compliance=1.5001231516913e-07)
        annotation (Placement(visible=true, transformation(
            origin={153,-5},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R4(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{170,22},{178,30}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb4(k=0)
        annotation (Placement(transformation(extent={{192,22},{200,30}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst Rmr(k(
            displayUnit="(mmHg.s)/ml") = 2333141.7797625)
        annotation (Placement(transformation(extent={{264,22},{272,30}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R5(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{294,28},{302,36}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb5(k=0)
        annotation (Placement(transformation(extent={{314,28},{322,36}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R6(k(
            displayUnit="(mmHg.s)/ml") = 4501097.1215178)
        annotation (Placement(transformation(extent={{288,86},{296,94}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R7(k(
            displayUnit="(mmHg.s)/ml") = 13465561.128915)
        annotation (Placement(transformation(extent={{-232,84},{-224,92}})));
      Parts.TimeVaryingElastance timeVaryingElastance(
        Ed=13332238.7415,
        Es=183318282.69563,
        HR=1.25)
        annotation (Placement(transformation(extent={{-222,22},{-202,42}})));
      Parts.TimeVaryingElastance timeVaryingElastance1(
        Ed=3999671.62245,
        Es=43729743.07212,
        HR=1.25)
        annotation (Placement(transformation(extent={{226,16},{246,36}})));
    equation
      connect(pulmonaryVeins.q_in, mitralValve.q_in) annotation(Line(points={{-315,-5},
              {-268.999,-5},{-270,-5}}));
      connect(pulmonaryVeinsInertia.q_out, pulmonaryVeins.q_in) annotation(Line(points={{-293,60},
              {-337.627,60},{-337.627,-6.01116},{-315,-6.01116},{-315,-5}}));
      connect(RPulmonaryVeins.q_out, pulmonaryVeinsInertia.q_in) annotation(Line(points={{-235,60},
              {-263,60}}));
      connect(pulmonaryArterioles.q_in, RPulmonaryVeins.q_in) annotation(Line(points={{200,60},
              {-205.381,60},{-205,60}}));
      connect(pulmonaryArterialInertia.q_out, pulmonaryArterioles.q_in) annotation(Line(points={{225,60},
              {199.871,60},{200,60}}));
      connect(RPulmonaryArtery.q_out, pulmonaryArterialInertia.q_in) annotation(Line(points={{282.5,
              60},{254.973,60},{255,60}}));
      connect(pulmonaryArtery.q_in, RPulmonaryArtery.q_in) annotation(Line(points={{355,-5},
              {381.615,-5},{381.615,59.6106},{317.5,59.6106},{317.5,60}}));
      connect(pulmonaryValve.q_out, pulmonaryArtery.q_in) annotation(Line(points={{330,-5},
              {355.066,-5},{355,-5}}));
      connect(RRightMyo.q_out, pulmonaryValve.q_in) annotation(Line(points={{290,-7},
              {300,-7},{300,-5}}));
      connect(RRightMyo.q_in, rightVentricle.q_in) annotation(Line(points={{260,-7},
              {235,-7},{235,-5}}));
      connect(tricuspidValve.q_out, rightVentricle.q_in) annotation(Line(points={{210,-5},
              {235.344,-5},{235,-5}}));
      connect(RSystemic.q_out, systemicInertia.q_in) annotation(Line(points={{80,-5},
              {86,-5},{86,-3},{92,-3}}));
      connect(RSystemic.q_in, arteries.q_in) annotation(Line(points={{50,-5},{
              25.0465,-5},{25,-5}}));
      connect(aorticInertia.q_out, arteries.q_in) annotation(Line(points={{
              2.22045e-15,-5},{25.5474,-5},{25,-5}}));
      connect(aorticValve.q_out, aorta.q_in) annotation(Line(points={{-120,-5},
              {-94.6757,-5},{-95,-5}}));
      connect(RLeftMyo.q_in, leftVentricle.q_in) annotation(Line(points={{-190,-5},
              {-215,-5},{-215,-3}}));
      connect(RLeftMyo.q_out, aorticValve.q_in) annotation(Line(points={{-160,-5},
              {-149.778,-5},{-150,-5}}));
      connect(mitralValve.q_out, leftVentricle.q_in) annotation(Line(points={{-240,-5},
              {-215,-5},{-215,-3}}));
      connect(R8.y, mitralValve.Gon) annotation (Line(
          points={{-271,28},{-268,28},{-268,10},{-264,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb8.y, mitralValve.Goff) annotation (Line(
          points={{-249,34},{-249,22},{-246,22},{-246,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rml.y, RLeftMyo.cond) annotation (Line(
          points={{-171,32},{-171,19},{-175,19},{-175,4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R1.y, aorticValve.Gon) annotation (Line(
          points={{-143,38},{-144,38},{-144,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb1.y, aorticValve.Goff) annotation (Line(
          points={{-125,38},{-125,25},{-126,25},{-126,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(aorta.q_in, Raorta.q_in) annotation (Line(
          points={{-95,-5},{-70,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R2.y, Raorta.cond) annotation (Line(
          points={{-65,28},{-60,28},{-60,4},{-55,4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Raorta.q_out, aorticInertia.q_in) annotation (Line(
          points={{-40,-5},{-30,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R3.y, RSystemic.cond) annotation (Line(
          points={{65,24},{65,4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(systemicInertia.q_out, veins.q_in) annotation (Line(
          points={{122,-3},{138,-3},{138,-5},{153,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(veins.q_in, tricuspidValve.q_in) annotation (Line(
          points={{153,-5},{180,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R4.y, tricuspidValve.Gon) annotation (Line(
          points={{179,26},{182,26},{182,10},{186,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb4.y, tricuspidValve.Goff) annotation (Line(
          points={{201,26},{204,26},{204,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rmr.y, RRightMyo.cond) annotation (Line(
          points={{273,26},{274,26},{274,2},{275,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R5.y, pulmonaryValve.Gon) annotation (Line(
          points={{303,32},{303,21},{306,21},{306,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb5.y, pulmonaryValve.Goff) annotation (Line(
          points={{323,32},{323,21},{324,21},{324,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R6.y, RPulmonaryArtery.cond) annotation (Line(
          points={{297,90},{300,90},{300,70.5}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R7.y, RPulmonaryVeins.cond) annotation (Line(
          points={{-223,88},{-220,88},{-220,69}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(timeVaryingElastance.C, leftVentricle.compliance) annotation (
          Line(
          points={{-212,23},{-215,23},{-215,9}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(timeVaryingElastance1.C, rightVentricle.compliance) annotation (
          Line(
          points={{236,17},{236,7},{235,7}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation(Diagram(coordinateSystem(extent={{-350,-100},{400,100}},      preserveAspectRatio=false,  initialScale = 0.1, grid = {2, 2}),
            graphics),                                                                                                    Icon(coordinateSystem(extent={{-350,
                -100},{400,100}},                                                                                                    preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Hemodynamics_flat;

    model Hemodynamics_flat2
      Physiolibrary.Hydraulic.Components.Conductor RPulmonaryVeins(
          useConductanceInput=true)                                annotation(Placement(visible = true, transformation(origin = {-220, 60}, extent = {{15, -15}, {-15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia pulmonaryVeinsInertia(I(
            displayUnit="mmHg.s2/ml") = 410632.9532382, volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06)                           annotation(Placement(visible = true, transformation(origin={-278,60},    extent = {{15, -15}, {-15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RPulmonaryArtery(
          useConductanceInput=true)                                 annotation(Placement(visible = true, transformation(origin = {300, 60}, extent = {{17.5, -17.5}, {-17.5, 17.5}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia pulmonaryArterialInertia(I(
            displayUnit="mmHg.s2/ml") = 99991.79056125, volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06)                              annotation(Placement(visible = true, transformation(origin = {240, 60}, extent = {{15, -15}, {-15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryVeins(
        useComplianceInput=false,
        volume_start(displayUnit="l") = 0.00025,
        Compliance=3.5027875591992e-07)                               annotation(Placement(visible = true, transformation(origin = {-315, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve mitralValve(
          useLimitationInputs=true)                             annotation(Placement(visible = true, transformation(origin = {-255, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel leftVentricle(
          useComplianceInput=true, volume_start=1e-07)               annotation(Placement(visible = true, transformation(origin={-215,-3},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RLeftMyo(useConductanceInput=
           true)                                            annotation(Placement(visible = true, transformation(origin = {-175, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve aorticValve(
          useLimitationInputs=true)                             annotation(Placement(visible = true, transformation(origin = {-135, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel aorta(Compliance=
            1.6501354668604e-09)                             annotation(Placement(visible = true, transformation(origin = {-95, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor Raorta(useConductanceInput=
            true)                                         annotation(Placement(visible = true, transformation(origin = {-55, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Inertia aorticInertia(I(displayUnit=
              "mmHg.s2/ml") = 109990.96961737, volumeFlow_start(displayUnit=
              "ml/min") = 8.8e-06)                             annotation(Placement(visible = true, transformation(origin = {-15, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel arteries(Compliance=
            1.0950899007347e-08)                                annotation(Placement(visible = true, transformation(origin = {25, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RSystemic(
          useConductanceInput=true)                          annotation(Placement(visible = true, transformation(origin = {65, -5}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve tricuspidValve(
          useLimitationInputs=true)                                annotation(Placement(visible = true, transformation(origin={195,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel rightVentricle(
          useComplianceInput=true, volume_start=1e-07)                annotation(Placement(visible = true, transformation(origin={235,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.Conductor RRightMyo(
          useConductanceInput=true)                          annotation(Placement(visible = true, transformation(origin={275,-7},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.IdealValve pulmonaryValve(
          useLimitationInputs=true)                                annotation(Placement(visible = true, transformation(origin={315,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryArtery(
          Compliance=6.7505541826109e-10)                              annotation(Placement(visible = true, transformation(origin={355,-5},    extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryArterioles(
          Compliance=2.0026644075079e-08)                                  annotation(Placement(visible = true, transformation(origin = {200, 60}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R8(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{-280,24},{-272,32}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb8(k=0)
        annotation (Placement(transformation(extent={{-258,30},{-250,38}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst Rml(k(
            displayUnit="(mmHg.s)/ml") = 10665790.9932)
        annotation (Placement(transformation(extent={{-180,28},{-172,36}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R1(k(
            displayUnit="(mmHg.s)/ml") = 500105.60743241)
        annotation (Placement(transformation(extent={{-152,34},{-144,42}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb1(k=0)
        annotation (Placement(transformation(extent={{-134,34},{-126,42}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R2(k(
            displayUnit="(mmHg.s)/ml") = 8999394.4728999)
        annotation (Placement(transformation(extent={{-74,24},{-66,32}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R3(k(
            displayUnit="(mmHg.s)/ml") = 133322387.415)
        annotation (Placement(transformation(extent={{56,20},{64,28}})));
      Physiolibrary.Hydraulic.Components.ElasticVessel veins(volume_start(
            displayUnit="l") = 0.0011, Compliance=1.5001231516913e-07)
        annotation (Placement(visible=true, transformation(
            origin={153,-5},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R4(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{170,22},{178,30}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb4(k=0)
        annotation (Placement(transformation(extent={{192,22},{200,30}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst Rmr(k(
            displayUnit="(mmHg.s)/ml") = 2333141.7797625)
        annotation (Placement(transformation(extent={{264,22},{272,30}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R5(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{294,28},{302,36}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb5(k=0)
        annotation (Placement(transformation(extent={{314,28},{322,36}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R6(k(
            displayUnit="(mmHg.s)/ml") = 4501097.1215178)
        annotation (Placement(transformation(extent={{288,86},{296,94}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R7(k(
            displayUnit="(mmHg.s)/ml") = 13465561.128915)
        annotation (Placement(transformation(extent={{-232,84},{-224,92}})));
      Parts.TimeVaryingElastance timeVaryingElastance(
        Ed=13332238.7415,
        Es=183318282.69563,
        HR=1.25)
        annotation (Placement(transformation(extent={{-222,22},{-202,42}})));
      Parts.TimeVaryingElastance timeVaryingElastance1(
        Ed=3999671.62245,
        Es=43729743.07212,
        HR=1.25)
        annotation (Placement(transformation(extent={{226,16},{246,36}})));
    equation
      connect(pulmonaryVeins.q_in, mitralValve.q_in) annotation(Line(points={{-315,-5},
              {-268.999,-5},{-270,-5}}));
      connect(pulmonaryVeinsInertia.q_out, pulmonaryVeins.q_in) annotation(Line(points={{-293,60},
              {-337.627,60},{-337.627,-6.01116},{-315,-6.01116},{-315,-5}}));
      connect(RPulmonaryVeins.q_out, pulmonaryVeinsInertia.q_in) annotation(Line(points={{-235,60},
              {-263,60}}));
      connect(pulmonaryArterioles.q_in, RPulmonaryVeins.q_in) annotation(Line(points={{200,60},
              {-205.381,60},{-205,60}}));
      connect(pulmonaryArterialInertia.q_out, pulmonaryArterioles.q_in) annotation(Line(points={{225,60},
              {199.871,60},{200,60}}));
      connect(RPulmonaryArtery.q_out, pulmonaryArterialInertia.q_in) annotation(Line(points={{282.5,
              60},{254.973,60},{255,60}}));
      connect(pulmonaryArtery.q_in, RPulmonaryArtery.q_in) annotation(Line(points={{355,-5},
              {381.615,-5},{381.615,59.6106},{317.5,59.6106},{317.5,60}}));
      connect(pulmonaryValve.q_out, pulmonaryArtery.q_in) annotation(Line(points={{330,-5},
              {355.066,-5},{355,-5}}));
      connect(RRightMyo.q_out, pulmonaryValve.q_in) annotation(Line(points={{290,-7},
              {300,-7},{300,-5}}));
      connect(RRightMyo.q_in, rightVentricle.q_in) annotation(Line(points={{260,-7},
              {235,-7},{235,-5}}));
      connect(tricuspidValve.q_out, rightVentricle.q_in) annotation(Line(points={{210,-5},
              {235.344,-5},{235,-5}}));
      connect(RSystemic.q_in, arteries.q_in) annotation(Line(points={{50,-5},{
              25.0465,-5},{25,-5}}));
      connect(aorticInertia.q_out, arteries.q_in) annotation(Line(points={{
              2.22045e-15,-5},{25.5474,-5},{25,-5}}));
      connect(aorticValve.q_out, aorta.q_in) annotation(Line(points={{-120,-5},
              {-94.6757,-5},{-95,-5}}));
      connect(RLeftMyo.q_in, leftVentricle.q_in) annotation(Line(points={{-190,-5},
              {-215,-5},{-215,-3}}));
      connect(RLeftMyo.q_out, aorticValve.q_in) annotation(Line(points={{-160,-5},
              {-149.778,-5},{-150,-5}}));
      connect(mitralValve.q_out, leftVentricle.q_in) annotation(Line(points={{-240,-5},
              {-215,-5},{-215,-3}}));
      connect(R8.y, mitralValve.Gon) annotation (Line(
          points={{-271,28},{-268,28},{-268,10},{-264,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb8.y, mitralValve.Goff) annotation (Line(
          points={{-249,34},{-249,22},{-246,22},{-246,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rml.y, RLeftMyo.cond) annotation (Line(
          points={{-171,32},{-171,19},{-175,19},{-175,4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R1.y, aorticValve.Gon) annotation (Line(
          points={{-143,38},{-144,38},{-144,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb1.y, aorticValve.Goff) annotation (Line(
          points={{-125,38},{-125,25},{-126,25},{-126,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(aorta.q_in, Raorta.q_in) annotation (Line(
          points={{-95,-5},{-70,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R2.y, Raorta.cond) annotation (Line(
          points={{-65,28},{-60,28},{-60,4},{-55,4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Raorta.q_out, aorticInertia.q_in) annotation (Line(
          points={{-40,-5},{-30,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R3.y, RSystemic.cond) annotation (Line(
          points={{65,24},{65,4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(veins.q_in, tricuspidValve.q_in) annotation (Line(
          points={{153,-5},{180,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R4.y, tricuspidValve.Gon) annotation (Line(
          points={{179,26},{182,26},{182,10},{186,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb4.y, tricuspidValve.Goff) annotation (Line(
          points={{201,26},{204,26},{204,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rmr.y, RRightMyo.cond) annotation (Line(
          points={{273,26},{274,26},{274,2},{275,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R5.y, pulmonaryValve.Gon) annotation (Line(
          points={{303,32},{303,21},{306,21},{306,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb5.y, pulmonaryValve.Goff) annotation (Line(
          points={{323,32},{323,21},{324,21},{324,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R6.y, RPulmonaryArtery.cond) annotation (Line(
          points={{297,90},{300,90},{300,70.5}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R7.y, RPulmonaryVeins.cond) annotation (Line(
          points={{-223,88},{-220,88},{-220,69}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(timeVaryingElastance.C, leftVentricle.compliance) annotation (
          Line(
          points={{-212,23},{-215,23},{-215,9}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(timeVaryingElastance1.C, rightVentricle.compliance) annotation (
          Line(
          points={{236,17},{236,7},{235,7}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(RSystemic.q_out, veins.q_in) annotation (Line(
          points={{80,-5},{118,-5},{118,-5},{153,-5}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      annotation(Diagram(coordinateSystem(extent={{-350,-100},{400,100}},      preserveAspectRatio=false,  initialScale = 0.1, grid = {2, 2}),
            graphics),                                                                                                    Icon(coordinateSystem(extent={{-350,
                -100},{400,100}},                                                                                                    preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Hemodynamics_flat2;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Models;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    uses(Physiolibrary(version="2.1.1"), Modelica(version="3.2.1")));
  package Parts
    model SystemicCirculation
      extends Cardiovascular.SystemicCirculation;

      Physiolibrary.Hydraulic.Components.ElasticVessel aorta(Compliance=1.6501354668604e-09)
        annotation (Placement(visible=true, transformation(
            origin={-76,-36},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Conductor Raorta(useConductanceInput=true)
        annotation (Placement(visible=true, transformation(
            origin={-51,-38},
            extent={{-7,-10},{7,10}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Inertia aorticInertia(I(displayUnit="mmHg.s2/ml")=
             109990.96961737, volumeFlow_start(displayUnit="ml/min") = 8.8e-06)
        annotation (Placement(visible=true, transformation(
            origin={-13,-39},
            extent={{-9,-11},{9,11}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel arteries(Compliance=1.0950899007347e-08)
        annotation (Placement(visible=true, transformation(
            origin={26,-38},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Conductor RSystemic(useConductanceInput=true)
        annotation (Placement(visible=true, transformation(
            origin={48,-38},
            extent={{-8,-10},{8,10}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Inertia systemicInertia(volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06, I=1727858140.8984) annotation (
          Placement(visible=true, transformation(
            origin={69,-38},
            extent={{-7,-10},{7,10}},
            rotation=0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R2(k(
            displayUnit="(mmHg.s)/ml") = 8999394.4728999)
        annotation (Placement(transformation(extent={{-78,-14},{-70,-6}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R3(k(
            displayUnit="(mmHg.s)/ml") = 133322387.415)
        annotation (Placement(transformation(extent={{52,-18},{60,-10}})));
      Physiolibrary.Hydraulic.Components.ElasticVessel veins(volume_start(
            displayUnit="l") = 0.0011, Compliance=1.5001231516913e-07) annotation (
          Placement(visible=true, transformation(
            origin={84,-38},
            extent={{-8,-8},{8,8}},
            rotation=0)));
    equation
      connect(RSystemic.q_out,systemicInertia. q_in) annotation(Line(points={{56,-38},
              {62,-38}}));
      connect(RSystemic.q_in,arteries. q_in) annotation(Line(points={{40,-38},{
              40,-38},{26,-38}}));
      connect(aorticInertia.q_out,arteries. q_in) annotation(Line(points={{-4,-39},
              {26,-39},{26,-38}}));
      connect(aorta.q_in,Raorta. q_in) annotation (Line(
          points={{-76,-36},{-76,-38},{-58,-38}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R2.y,Raorta. cond) annotation (Line(
          points={{-69,-10},{-64,-10},{-64,-32},{-51,-32}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Raorta.q_out,aorticInertia. q_in) annotation (Line(
          points={{-44,-38},{-40,-38},{-40,-39},{-22,-39}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(R3.y,RSystemic. cond) annotation (Line(
          points={{61,-14},{61,-32},{48,-32}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(systemicInertia.q_out, veins.q_in) annotation (Line(
          points={{76,-38},{84,-38}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(q_in, aorta.q_in) annotation (Line(
          points={{100,0},{100,-72},{-84,-72},{-84,-36},{-76,-36}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(veins.q_in, q_out) annotation (Line(
          points={{84,-38},{84,0},{-100,0}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
              preserveAspectRatio=false), graphics),                         Icon(
            coordinateSystem(extent={{-100,-100},{100,100}},
              preserveAspectRatio=false), graphics));
    end SystemicCirculation;

    model PulmonaryCirculation
      extends Cardiovascular.PulmonaryCirculation;

      Physiolibrary.Hydraulic.Components.Conductor RPulmonaryVeins(
          useConductanceInput=true) annotation (Placement(visible=true,
            transformation(
            origin={40,44},
            extent={{15,-15},{-15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Inertia pulmonaryVeinsInertia(I(
            displayUnit="mmHg.s2/ml") = 410632.9532382, volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06) annotation (Placement(visible=true,
            transformation(
            origin={-18,44},
            extent={{15,-15},{-15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Conductor RPulmonaryArtery(
          useConductanceInput=true) annotation (Placement(visible=true,
            transformation(
            origin={12,-68},
            extent={{17.5,-17.5},{-17.5,17.5}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Inertia pulmonaryArterialInertia(I(
            displayUnit="mmHg.s2/ml") = 99991.79056125, volumeFlow_start(
            displayUnit="ml/min") = 8.8e-06) annotation (Placement(visible=true,
            transformation(
            origin={-48,-68},
            extent={{15,-15},{-15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryVeins(
        useComplianceInput=false,
        volume_start(displayUnit="l") = 0.00025,
        Compliance=3.5027875591992e-07) annotation (Placement(visible=true,
            transformation(
            origin={-75,41},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryArtery(Compliance=6.7505541826109e-10)
        annotation (Placement(visible=true, transformation(
            origin={85,-67},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel pulmonaryArterioles(
          Compliance=2.0026644075079e-08) annotation (Placement(visible=true,
            transformation(
            origin={-88,-68},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R6(k(
            displayUnit="(mmHg.s)/ml") = 4501097.1215178)
        annotation (Placement(transformation(extent={{0,-52},{8,-44}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R7(k(
            displayUnit="(mmHg.s)/ml") = 13465561.128915)
        annotation (Placement(transformation(extent={{28,58},{36,66}})));
    equation
      connect(RPulmonaryVeins.q_out,pulmonaryVeinsInertia. q_in) annotation(Line(points={{25,44},
              {-3,44}}));
      connect(pulmonaryArterialInertia.q_out,pulmonaryArterioles. q_in) annotation(Line(points={{-63,-68},
              {-88.129,-68},{-88,-68}}));
      connect(RPulmonaryArtery.q_out,pulmonaryArterialInertia. q_in) annotation(Line(points={{-5.5,
              -68},{-33.027,-68},{-33,-68}}));
      connect(R6.y,RPulmonaryArtery. cond) annotation (Line(
          points={{9,-48},{12,-48},{12,-57.5}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R7.y,RPulmonaryVeins. cond) annotation (Line(
          points={{37,62},{40,62},{40,53}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(RPulmonaryArtery.q_in, pulmonaryArtery.q_in) annotation (Line(
          points={{29.5,-68},{58,-68},{58,-67},{85,-67}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(pulmonaryVeins.q_in, pulmonaryVeinsInertia.q_out) annotation (Line(
          points={{-75,41},{-54.5,41},{-54.5,44},{-33,44}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(q_in, pulmonaryArtery.q_in) annotation (Line(
          points={{-100,0},{-130,0},{-130,-102},{114,-102},{114,-67},{85,-67}},

          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(RPulmonaryVeins.q_in, pulmonaryArterioles.q_in) annotation (Line(
          points={{55,44},{70,44},{70,46},{76,46},{76,-28},{-88,-28},{-88,-68}},

          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(pulmonaryVeins.q_in, q_out) annotation (Line(
          points={{-75,41},{-75,66},{100,66},{100,0}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
              preserveAspectRatio=false), graphics),                         Icon(
            coordinateSystem(extent={{-100,-100},{100,100}})));
    end PulmonaryCirculation;

    model Heart
      extends Cardiovascular.Heart;

      Physiolibrary.Hydraulic.Components.IdealValve mitralValve(useLimitationInputs=
           true) annotation (Placement(visible=true, transformation(
            origin={-61,-81},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel leftVentricle(
          useComplianceInput=true, volume_start=1e-07) annotation (Placement(
            visible=true, transformation(
            origin={-21,-79},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Conductor RLeftMyo(useConductanceInput=true)
        annotation (Placement(visible=true, transformation(
            origin={19,-81},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.IdealValve aorticValve(useLimitationInputs=
           true) annotation (Placement(visible=true, transformation(
            origin={59,-81},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.IdealValve tricuspidValve(
          useLimitationInputs=true) annotation (Placement(visible=true,
            transformation(
            origin={-61,53},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.ElasticVessel rightVentricle(
          useComplianceInput=true, volume_start=1e-07) annotation (Placement(
            visible=true, transformation(
            origin={-21,53},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.Conductor RRightMyo(useConductanceInput=true)
        annotation (Placement(visible=true, transformation(
            origin={19,51},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Hydraulic.Components.IdealValve pulmonaryValve(
          useLimitationInputs=true) annotation (Placement(visible=true,
            transformation(
            origin={59,53},
            extent={{-15,-15},{15,15}},
            rotation=0)));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R8(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{-86,-52},{-78,-44}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb8(k=0)
        annotation (Placement(transformation(extent={{-64,-46},{-56,-38}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst Rml(k(
            displayUnit="(mmHg.s)/ml") = 10665790.9932)
        annotation (Placement(transformation(extent={{14,-48},{22,-40}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R1(k(
            displayUnit="(mmHg.s)/ml") = 500105.60743241)
        annotation (Placement(transformation(extent={{42,-42},{50,-34}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb1(k=0)
        annotation (Placement(transformation(extent={{60,-42},{68,-34}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R4(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{-86,80},{-78,88}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb4(k=0)
        annotation (Placement(transformation(extent={{-64,80},{-56,88}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst Rmr(k(
            displayUnit="(mmHg.s)/ml") = 2333141.7797625)
        annotation (Placement(transformation(extent={{8,80},{16,88}})));
      Physiolibrary.Types.Constants.HydraulicResistanceToConductanceConst R5(k(
            displayUnit="(mmHg.s)/ml") = 500092.27519367)
        annotation (Placement(transformation(extent={{38,86},{46,94}})));
      Physiolibrary.Types.Constants.HydraulicConductanceConst Rb5(k=0)
        annotation (Placement(transformation(extent={{58,86},{66,94}})));
      TimeVaryingElastance timeVaryingElastance(
        Ed=13332238.7415,
        Es=183318282.69563,
        HR=1.25)
        annotation (Placement(transformation(extent={{-28,-54},{-8,-34}})));
      TimeVaryingElastance timeVaryingElastance1(
        Ed=3999671.62245,
        Es=43729743.07212,
        HR=1.25)
        annotation (Placement(transformation(extent={{-30,74},{-10,94}})));
    equation
      connect(RRightMyo.q_out,pulmonaryValve. q_in) annotation(Line(points={{34,51},
              {44,51},{44,53}}));
      connect(RRightMyo.q_in,rightVentricle. q_in) annotation(Line(points={{4,51},{
              -21,51},{-21,53}}));
      connect(tricuspidValve.q_out,rightVentricle. q_in) annotation(Line(points={{-46,53},
              {-20.656,53},{-21,53}}));
      connect(RLeftMyo.q_in,leftVentricle. q_in) annotation(Line(points={{4,-81},
              {-21,-81},{-21,-79}}));
      connect(RLeftMyo.q_out,aorticValve. q_in) annotation(Line(points={{34,-81},
              {44.222,-81},{44,-81}}));
      connect(mitralValve.q_out,leftVentricle. q_in) annotation(Line(points={{-46,-81},
              {-21,-81},{-21,-79}}));
      connect(R8.y,mitralValve. Gon) annotation (Line(
          points={{-77,-48},{-74,-48},{-74,-66},{-70,-66}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb8.y,mitralValve. Goff) annotation (Line(
          points={{-55,-42},{-55,-54},{-52,-54},{-52,-66}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rml.y,RLeftMyo. cond) annotation (Line(
          points={{23,-44},{23,-57},{19,-57},{19,-72}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R1.y,aorticValve. Gon) annotation (Line(
          points={{51,-38},{50,-38},{50,-66}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb1.y,aorticValve. Goff) annotation (Line(
          points={{69,-38},{69,-51},{68,-51},{68,-66}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R4.y,tricuspidValve. Gon) annotation (Line(
          points={{-77,84},{-74,84},{-74,68},{-70,68}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb4.y,tricuspidValve. Goff) annotation (Line(
          points={{-55,84},{-52,84},{-52,68}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rmr.y,RRightMyo. cond) annotation (Line(
          points={{17,84},{18,84},{18,60},{19,60}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(R5.y,pulmonaryValve. Gon) annotation (Line(
          points={{47,90},{47,79},{50,79},{50,68}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Rb5.y,pulmonaryValve. Goff) annotation (Line(
          points={{67,90},{67,79},{68,79},{68,68}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(timeVaryingElastance.C,leftVentricle. compliance) annotation (
          Line(
          points={{-18,-53},{-21,-53},{-21,-67}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(timeVaryingElastance1.C,rightVentricle. compliance) annotation (
          Line(
          points={{-20,75},{-20,65},{-21,65}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(mitralValve.q_in, rightHeartInflow) annotation (Line(
          points={{-76,-81},{-90,-81},{-90,-80},{-100,-80},{-100,-20}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(rightHeartOutflow, aorticValve.q_out) annotation (Line(
          points={{-100,20},{-86,20},{-86,-28},{86,-28},{86,-81},{74,-81}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(tricuspidValve.q_in, leftHeartInflow) annotation (Line(
          points={{-76,53},{-86,53},{-86,52},{-90,52},{-90,28},{-50,28},{-50,2},
              {100,2},{100,20}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      connect(pulmonaryValve.q_out, leftHeartOutflow) annotation (Line(
          points={{74,53},{80,53},{80,-20},{100,-20}},
          color={0,0,0},
          thickness=1,
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
              preserveAspectRatio=false), graphics),                         Icon(
            coordinateSystem(extent={{-100,-100},{100,100}})));
    end Heart;

    model TimeVaryingElastance
      parameter Physiolibrary.Types.HydraulicElastance Ed;
      parameter Physiolibrary.Types.HydraulicElastance Es;
      parameter Physiolibrary.Types.Frequency HR;
      Physiolibrary.Types.Time tm;
      discrete Physiolibrary.Types.Time HP;
      discrete Physiolibrary.Types.Time t0;
      discrete Physiolibrary.Types.Time ts;
      Real a;
      Physiolibrary.Types.RealIO.HydraulicComplianceOutput C
        annotation (Placement(transformation(extent={{-4,-102},{16,-82}}),
            iconTransformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={0,-90})));
            Physiolibrary.Types.HydraulicElastance E;
    equation
      tm = time - pre(t0);

      if
        (tm<pre(ts)) then
        a= (1-cos(2*Modelica.Constants.pi*tm/pre(ts)))/2;
      else
        a=0;
      end if;
      E=Ed+Es*a;
      C=1/E;
      when {initial(), tm > pre(HP)} then
        HP = 1/HR;
        t0= time;
        ts = 0.16+0.3*HP;
      end when;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}), graphics={
            Rectangle(
              extent={{-80,80},{80,-80}},
              lineColor={0,0,255},
              lineThickness=1),
            Line(
              points={{-78,0},{-68,18},{-54,52},{-44,64},{-30,60},{-26,46}},
              color={0,0,255},
              smooth=Smooth.None,
              thickness=1),
            Line(
              points={{-26,46},{-26,32},{-20,10},{-8,2},{36,2},{80,2}},
              color={0,0,255},
              smooth=Smooth.None,
              thickness=1)}));
    end TimeVaryingElastance;
  end Parts;
end Fernandez2013Model;
