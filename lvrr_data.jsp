<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>NITW LVRRs Tool - Assessment</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #C6FFC6;
}
.style2 {
	font-size: 60px;
	color: #0000CC;
	font-weight: bold;
}
.style11{
background-color:#CCCC66;
}
.style4 {font-size: 24px; font-weight: bold;}
.style15 {color: #FF0000}
.style13 {
	font-size: 30px;
	font-weight: bold;
}
.style14 {
	font-size: 18px;
	font-weight: bold;
}
.style16 {font-size: 26px; font-weight: bold; }
.style17 {color: #999999}
.style19 {font-size: large}

-->
</style></head>

<body>

<table width="80%" align="center">
  <tr>
    <td><strong>Country:</strong></td>
    <td><input type="text" name="country" size="30"></td>
  </tr>
  <tr>
    <td><strong>State:</strong></td>
    <td><input type="text" name="state" size="30"></td>
  </tr>
  <tr>
    <td><strong>District:</strong></td>
    <td><input type="text" name="district" size="30"></td>
  </tr>
  <tr>
    <td><strong>Road name:</strong></td>
    <td><input type="text" name="roadname" size="30"></td>
  </tr>
</table>


<table width="100%" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
<caption class="style11 style14">
<span class="style2" ><img src="images/logo1.png" alt="NITW" width="193" height="157" align="left" /><span class="style15" >NITW Sustainability Rating Tool for Low-Volume Rural Roads Maintenance</span></span>
<span class="style15"><br />
</span>
</caption>
</table>
<br />
<form id="form1" name="form1" method="post" action="lvrr_data1.jsp">
  <div align="center"><span class="style13">Rating Tool for LVRRs </span><br />
    <br />
  </div>
  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="#FFFFCC">
  <span class="style16">Economic</span>

  </caption>
    <tr>
      <td colspan="3"><div align="center" class="style14">Market Supply &amp; Demand</div></td>
    </tr>
    <tr>
      <td width="4%" class="style19"><div align="center">1</div>      </td>
      <td width="76%"><span class="style19">Are materials readily available in the local market, as per <strong>MoRD 2014</strong> guidelines</span></td>
      <td width="20%"><input name="economic1" type="radio" value="1" />
        Yes
        <input name="economic1" type="radio" value="0" checked="checked" />
        No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">Does supply match the project’s demand schedule?</td>
      <td><input name="economic2" type="radio" value="1" />
Yes
  <input name="economic2" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Is there a history of price volatility for these materials</td>
      <td><input name="economic3" type="radio" value="1" />
Yes
  <input name="economic3" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3"><div align="center"><span class="style14">Transportation</span></div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">Is the average transport distance below 50 km for materials as per SP:  20: 2002?</td>
      <td><input name="economic4" type="radio" value="1" />
Yes
  <input name="economic4" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">5</div></td>
      <td class="style19">Are transportation methods cost-efficient?</td>
      <td><input name="economic5" type="radio" value="1" />
Yes
  <input name="economic5" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">6</div></td>
      <td class="style19">Does transport time impact project timelines?</td>
      <td><input name="economic6" type="radio" value="1" />
Yes
  <input name="economic6" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3" class="style14"><div align="center">Supply Chain</div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">7</div></td>
      <td class="style19">Are supplier contracts reliable and timely?</td>
      <td><input name="economic7" type="radio" value="1" />
Yes
  <input name="economic7" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">8</div></td>
      <td class="style19">Is there a system for tracking deliveries as per MoRD/NRIDA?</td>
      <td><input name="economic8" type="radio" value="1" />
Yes
  <input name="economic8" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	
	<tr>
      <td class="style19"><div align="center">9</div></td>
      <td class="style19">Are alternative suppliers available in case of disruption?</td>
      <td><input name="economic9" type="radio" value="1" />
Yes
  <input name="economic9" type="radio" value="0" checked="checked" />
No</td>
    </tr>
 <tr>
      <td colspan="3" class="style14"><div align="center">Financial Investment</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">10</div></td>
      <td class="style19">Is adequate funding allocated for the project stage?</td>
      <td><input name="economic10" type="radio" value="1" />
Yes
  <input name="economic10" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">11</div></td>
      <td class="style19">Is financial risk management in place?</td>
      <td><input name="economic11" type="radio" value="1" />
Yes
  <input name="economic11" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">12</div></td>
      <td class="style19">Are payments to contractors/suppliers timely as per the <strong>Contract Document</strong>??</td>
      <td><input name="economic12" type="radio" value="1" />
Yes
  <input name="economic12" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	
	
  </table>
  <br />
  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">
  <strong class="style16">Technique</strong>
  </caption>
   <tr>
      <td colspan="3"><div align="center" class="style14">Material Production</div></td>
    </tr>
    <tr>
      <td width="4%" class="style19"><div align="center">1</div>      </td>
      <td width="76%" class="style19">Are locally available materials used for construction to reduce transport emissions?</td>
      <td width="20%"><input name="technique1" type="radio" value="1" />
        Yes
        <input name="technique1" type="radio" value="0" checked="checked" />
      No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">Are recycled or low embodied energy materials incorporated as per IRC/MoRD guidelines?</td>
      <td><input name="technique2" type="radio" value="1" />
Yes
  <input name="technique2" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Are material quality tests conducted as per the  duidelines/specifications?</td>
      <td><input name="technique3" type="radio" value="1" />
Yes
  <input name="technique3" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3"><div align="center"><span class="style14">Standard Procedure</span></div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">Is grading and compaction done as per  standards?</td>
      <td><input name="technique4" type="radio" value="1" />
Yes
  <input name="technique4" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">5</div></td>
      <td class="style19">Are curing practices strictly followed for cement/lime stabilized layers as per <strong>IRC:SP:89 (Part II)-2018</strong>?</td>
      <td><input name="technique5" type="radio" value="1" />
Yes
  <input name="technique5" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">6</div></td>
      <td class="style19">Are construction records maintained to verify compliance with procedures?</td>
      <td><input name="technique6" type="radio" value="1" />
Yes
  <input name="technique6" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3" class="style14"><div align="center">Smoothness Adjustment</div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">7</div></td>
      <td class="style19">Is road surface level maintained to meet smoothness standards?</td>
      <td><input name="technique7" type="radio" value="1" />
Yes
  <input name="technique7" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">8</div></td>
      <td class="style19">Are potholes or depressions addressed within recommended timeframes?</td>
      <td><input name="technique8" type="radio" value="1" />
Yes
  <input name="technique8" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	
	<tr>
      <td class="style19"><div align="center">9</div></td>
      <td class="style19">Are periodic levelling/grading schedules documented and followed?</td>
      <td><input name="technique9" type="radio" value="1" />
Yes
  <input name="technique9" type="radio" value="0" checked="checked" />
No</td>
    </tr>
 <tr>
      <td colspan="3" class="style14"><div align="center">Maintenance Technique</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">10</div></td>
      <td class="style19">Is preventive maintenance planned and executed regularly?</td>
      <td><input name="technique10" type="radio" value="1" />
Yes
  <input name="technique10" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">11</div></td>
      <td class="style19">Are crack sealing and patch repairs done before major distress occurs?</td>
      <td><input name="technique11" type="radio" value="1" />
Yes
  <input name="technique11" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">12</div></td>
      <td class="style19">Is maintenance prioritised over full rehabilitation where feasible?</td>
      <td><input name="technique12" type="radio" value="1" />
Yes
  <input name="technique12" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td colspan="3" class="style14"><div align="center">Repair & Disturbance</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">13</div></td>
      <td class="style19">Is traffic disruption minimized during repair activities?</td>
      <td><input name="technique13" type="radio" value="1" />
Yes
  <input name="technique13" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">14</div></td>
      <td class="style19">Are environmental disturbances (dust, noise) minimized during works?</td>
      <td><input name="technique14" type="radio" value="1" />
Yes
  <input name="technique14" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">15</div></td>
      <td class="style19">Is work zone safety maintained as per guidelines?</td>
      <td><input name="technique15" type="radio" value="1" />
Yes
  <input name="technique15" type="radio" value="0" checked="checked" />
No</td>
    </tr>
  </table>
  <br />
	  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">
  <strong class="style16">Safety Criteria </strong><br />
  </caption>

	<tr>
      <td colspan="3" class="style14"><div align="center">Construction Safety</div></td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">1</div></td>
      <td width="76%" class="style19">To what extent are construction safety protocols implemented?</td>
      <td width="20%"><input name="safety_c1" type="text" id="safety_c1" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>
	
	<tr>
      <td colspan="3" class="style14"><div align="center">Glare Control</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">How effectively is glare from road surfaces and lighting controlled?</td>
      <td><input name="safety_c2" type="text" id="safety_c2" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>

	<tr>
      <td colspan="3" class="style14"><div align="center">Traffic Control</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">How adequate are the traffic control measures during maintenance works?</td>
      <td><input name="safety_c3" type="text" id="safety_c3" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>
	
	<tr>
      <td colspan="3" class="style14"><div align="center">Traffic Marking</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">How visible and durable are the traffic markings on the road?</td>
      <td><input name="safety_c4" type="text" id="safety_c4" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>

  </table>
	<br />
	  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">

  <span class="style4">Management Criteria</span>
  <br />
  </caption>

<tr>
      <td colspan="3" class="style14"><div align="center">Budget Plan</div></td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">1</div></td>
      <td width="76%" class="style19">Does your project have a documented and approved budget plan for maintenance activities?</td>
      <td width="20%"><input name="mgmt_c1" type="text" id="mgmt_c1" value="0" size="4" maxlength="4" /> Response Scale (1–5)</td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">2</div></td>
      <td width="76%" class="style19">Is the budget allocation adequate to meet annual maintenance needs without backlog?</td>
      <td width="20%"><input name="mgmt_c2" type="text" id="mgmt_c2" value="0" size="4" maxlength="4" /> Response Scale (1–5)</td>
    </tr>
	
	<tr>
      <td colspan="3" class="style14"><div align="center">Maintenance Schedule</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Is there a written preventive maintenance schedule covering all low-volume rural roads?</td>
      <td><input name="mgmt_c3" type="text" id="mgmt_c3" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">How often is the schedule reviewed and updated?</td>
      <td><input name="mgmt_c4" type="text" id="mgmt_c4" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>

	<tr>
      <td colspan="3" class="style14"><div align="center">Quality Management</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">5</div></td>
      <td class="style19">Are quality control checks performed during all maintenance works?</td>
      <td><input name="mgmt_c5" type="text" id="mgmt_c5" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">6</div></td>
      <td class="style19">Is there a documented QA/QC process followed during construction and maintenance?</td>
      <td><input name="mgmt_c6" type="text" id="mgmt_c6" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td colspan="3" class="style14"><div align="center">Workzone Management</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">7</div></td>
      <td class="style19">Are work zones set up with proper signage, barricades, and safety protocols?</td>
      <td><input name="mgmt_c7" type="text" id="mgmt_c7" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">8</div></td>
      <td class="style19">Are workers provided with adequate PPE and safety training?</td>
      <td><input name="mgmt_c8" type="text" id="mgmt_c8" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td colspan="3" class="style14"><div align="center">Project Team</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">9</div></td>
      <td class="style19">Does the maintenance team include trained engineers and supervisors?</td>
      <td><input name="mgmt_c9" type="text" id="mgmt_c9" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	
	<tr>
      <td colspan="3" class="style14"><div align="center">Project Record</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">10</div></td>
      <td class="style19">Are historical maintenance records maintained and updated regularly?</td>
      <td><input name="mgmt_c10" type="text" id="mgmt_c10" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">11</div></td>
      <td class="style19">Are inspection results documented for future planning?</td>
      <td><input name="mgmt_c11" type="text" id="mgmt_c11" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	
	<tr>
      <td colspan="3" class="style14"><div align="center">Project Interaction</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">12</div></td>
      <td class="style19">Is there regular coordination with local authorities regarding maintenance activities?</td>
      <td><input name="mgmt_c12" type="text" id="mgmt_c12" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">13</div></td>
      <td class="style19">Is community feedback incorporated into project planning?</td>
      <td><input name="mgmt_c13" type="text" id="mgmt_c13" value="0" size="4" maxlength="4" /> Response Scale  (1–5)</td>
    </tr>

</table>
<br />
	  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">
  
  <span class="style4">Innovation</span>
  <br />
  </caption>
<tr>
      <td colspan="3" class="style14"><div align="center">Sustainability Representative</div></td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">1</div></td>
      <td width="76%" class="style19">Is there a dedicated sustainability representative in the project team ensuring integration of sustainable practices across all stages of maintenance?</td>
      <td width="20%"><input name="innovation_1" type="text" id="innovation_1" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>
	
	<tr>
      <td colspan="3" class="style14"><div align="center">Creative Ideas</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">Have innovative or creative ideas in maintenance, materials, or processes been introduced and implemented to improve sustainability outcomes?</td>
      <td><input name="innovation_2" type="text" id="innovation_2" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>

	<tr>
      <td colspan="3" class="style14"><div align="center">Certified Sustainable Rural Road</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Has the rural road maintenance project obtained certification under an  approved sustainability rating system (PMGSY guidelines necessitate using green  technologies&mdash;such as cold mix, waste plastics, fly ash, and slag&mdash;in at least  15% of the annual construction and maintenance proposals.)?</td>
      <td><input name="innovation_3" type="text" id="innovation_3" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>

</table>
<br />
	  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">

  <span class="style4">Environment</span>
  <br />
  </caption>
    <tr>
      <td colspan="3"><div align="center" class="style14">Atmosphere</div></td>
    </tr>
    <tr>
      <td width="4%" class="style19"><div align="center">1</div>      </td>
      <td width="76%" class="style19">Are PM10 and PM2.5 concentrations during maintenance activities within  limits?</td>
      <td width="20%"><input name="env1" type="radio" value="1" />
        Yes
        <input name="env1" type="radio" value="0" checked="checked" />
        No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">Is dust suppression (e.g., water sprinkling) carried out during construction/maintenance to control particulate matter?</td>
      <td><input name="env2" type="radio" value="1" />
Yes
  <input name="env2" type="radio" value="0" />
No
<input name="env2" type="radio" value="0" checked="checked" />
Never</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Are vehicular emissions from maintenance equipment tested and within  norms?</td>
      <td><input name="env3" type="radio" value="1" />
Yes
  <input name="env3" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3"><div align="center"><span class="style14">Forest Area</span></div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">Does the road alignment/maintenance work avoid diversion of forest land?</td>
      <td><input name="env4" type="radio" value="1" />
Yes
  <input name="env4" type="radio" value="0" />
No
<input name="env4" type="radio" value="0" checked="checked" />
Not Applicable</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">5</div></td>
      <td class="style19">If forest land is affected, is compensatory afforestation carried out as per MOEFA  rules?</td>
      <td><input name="env5" type="radio" value="1" />
Yes
  <input name="env5" type="radio" value="0" />
No
<input name="env5" type="radio" value="0" checked="checked" />
Partial</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">6</div></td>
      <td class="style19">6.	Are native species used for roadside plantation or afforestation activities?</td>
      <td><input name="env6" type="radio" value="1" />
Yes
  <input name="env6" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3" class="style14"><div align="center">Weather </div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">7</div></td>
      <td class="style19">Has the pavement design incorporated measures for resilience against local climatic extremes (heat, heavy rain, flooding)?</td>
      <td><input name="env7" type="radio" value="1" />
Yes
  <input name="env7" type="radio" value="0"  />
No
<input name="env7" type="radio" value="0" checked="checked" />
Partial</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">8</div></td>
      <td class="style19">Are drainage structures adequate and functional to withstand monsoon rainfall intensity?</td>
      <td><input name="env8" type="radio" value="1" />
Yes
  <input name="env8" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	
	<tr>
      <td class="style19"><div align="center">9</div></td>
      <td class="style19">Are slope protection and erosion control measures implemented in vulnerable sections?</td>
      <td><input name="env9" type="radio" value="1" />
Yes
  <input name="env9" type="radio" value="0" checked="checked" />
No</td>
    </tr>
 <tr>
      <td colspan="3" class="style14"><div align="center">Energy </div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">10</div></td>
      <td class="style19">Is energy-efficient machinery/equipment used for road maintenance?</td>
      <td><input name="env10" type="radio" value="1" />
Yes
  <input name="env10" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">11</div></td>
      <td class="style19">Are renewable energy sources (e.g., solar lighting) used along the rural road?</td>
      <td><input name="env11" type="radio" value="1" />
Yes
  <input name="env11" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">12</div></td>
      <td class="style19">Is there a system to monitor and reduce fuel consumption in maintenance operations?</td>
      <td><input name="env12" type="radio" value="1" />
Yes
  <input name="env12" type="radio" value="0" checked="checked" />
No</td>
    </tr>
</table>
<br />
	  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">
  <strong class="style4">Material Criteria </strong><br />
  </caption>
<tr>
      <td colspan="3"><div align="center"><strong>Flexible Road</strong></div></td>
    </tr>
    <tr>
      <td width="4%" class="style19"><div align="center">1</div>      </td>
      <td width="76%" class="style19">Is the pavement&nbsp; flexible  (bituminous) or rigid? </td>
      <td width="20%"><input name="material_c1" type="radio" value="1" />
        Yes
        <input name="material_c1" type="radio" value="0" checked="checked" />
        No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">Is  the thickness of the bituminous layer adequate as per traffic category? </td>
      <td><input name="material_c2" type="radio" value="1" />
Yes
  <input name="material_c2" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Are  proper compaction tests documented for the flexible pavement?</td>
      <td><input name="material_c3" type="radio" value="1" />
Yes
  <input name="material_c3" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3"><div align="center"><strong>Quality Certificate</strong></div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">Are  the construction materials accompanied by relevant quality test certificates  (aggregate, bitumen, cement, steel)? </td>
      <td><input name="material_c4" type="radio" value="1" />
Yes
  <input name="material_c4" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">5</div></td>
      <td class="style19">Are  lab test results available and conforming to IS/IRC specifications? </td>
      <td><input name="material_c5" type="radio" value="1" />
Yes
  <input name="material_c5" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">6</div></td>
      <td class="style19">Is  there a documented third-party quality inspection report?</td>
      <td><input name="material_c6" type="radio" value="1" />
Yes
  <input name="material_c6" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3" class="style14"><div align="center"><strong>Recycle Material</strong></div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">7</div></td>
      <td class="style19">Is  reclaimed asphalt pavement (RAP) or recycled aggregates used in construction? </td>
      <td><input name="material_c7" type="radio" value="1" />
Yes
  <input name="material_c7" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">8</div></td>
      <td class="style19">Is  the percentage of recycled content within permissible limits? </td>
      <td><input name="material_c8" type="radio" value="1" />
Yes
  <input name="material_c8" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	
	<tr>
      <td class="style19"><div align="center">9</div></td>
      <td class="style19">Are  recycled materials tested for compliance before use?</td>
      <td><input name="material_c9" type="radio" value="1" />
Yes
  <input name="material_c9" type="radio" value="0" checked="checked" />
No</td>
    </tr>
 <tr>
      <td colspan="3" class="style14"><div align="center"><strong>Alternative Materials</strong></div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">10</div></td>
      <td class="style19">Is the construction or maintenance of this road project been used alternative materials like Waste Plastic, Recycled Rubber, Industrial byproducts, Bio Based Binder, Steel Slag offering a Sustainable alternatives to natural aggregates and aiding in Waste reduction?</td>
      <td><input name="material_c10" type="radio" value="1" />
Yes
  <input name="material_c10" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">11</div></td>
      <td class="style19">Do the road been stabilised Sub-grade using industrial byproducts like  lime/rice husk, fly ash, Slag, red mud, kiln dust, Construction demolition  Waste as per the guideline or specifications? </td>
      <td><input name="material_c11" type="radio" value="1" />
Yes
  <input name="material_c11" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">12</div></td>
      <td class="style19">Are the Cold mix Recycling techniques used for construction and or  maintenance be ued to reduce pollution and energy consumption?</td>
      <td><input name="material_c12" type="radio" value="1" />
Yes
  <input name="material_c12" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	 <tr>
      <td colspan="3" class="style14"><div align="center"><strong>Local Material</strong></div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">13</div></td>
      <td class="style19">Is  the use of locally available material (aggregates, sand, soil) maximized  without compromising quality? <br /></td>
      <td><input name="material_c13" type="radio" value="1" />
Yes
  <input name="material_c13" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">14</div></td>
      <td class="style19">Does  the material meet IRC grading requirements? </td>
      <td><input name="material_c14" type="radio" value="1" />
Yes
  <input name="material_c14" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">15</div></td>
      <td class="style19">Is  there a reduction in transportation distance by using local sources?</td>
      <td><input name="material_c15" type="radio" value="1" />
Yes
  <input name="material_c15" type="radio" value="0" checked="checked" />
No</td>
    </tr>
  </table>
  <br />
	  <table width="80%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: #B3EBFB">
  <caption style="">
  <strong class="style4">Social Criteria</strong><br />
  </caption>

    <tr>
      <td colspan="3"><div align="center" class="style14">Service</div></td>
      </tr>
    <tr>
      <td width="4%" class="style19"><div align="center">1</div>      </td>
      <td width="76%" class="style19">Are road services (public transport, freight) regularly available to  residents?</td>
      <td width="20%"><input name="social_c1" type="radio" value="1" />
        Yes
        <input name="social_c1" type="radio" value="0" checked="checked" />
        No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">2</div></td>
      <td class="style19">Does the road provide reliable year-round access to essential services  such as healthcare and education?</td>
      <td><input name="social_c2" type="radio" value="1" />
Yes
  <input name="social_c2" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">3</div></td>
      <td class="style19">Is the road alignment optimized for connectivity between villages and    markets?</td>
      <td><input name="social_c3" type="radio" value="1" />
Yes
  <input name="social_c3" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3"><div align="center" class="style14">Cultural Heritage</div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">4</div></td>
      <td class="style19">Does the road alignment avoid disturbance to heritage or archaeological  sites?</td>
      <td><input name="social_c4" type="radio" value="1" />
Yes
  <input name="social_c4" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">5</div></td>
      <td class="style19">Are there adequate measures for preserving cultural sites during  construction and maintenance?</td>
      <td><input name="social_c5" type="radio" value="1" />
Yes
  <input name="social_c5" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">6</div></td>
      <td class="style19">Has an impact assessment on local heritage been conducted before  maintenance works?</td>
      <td><input name="social_c6" type="radio" value="1" />
Yes
  <input name="social_c6" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td colspan="3" class="style14"><div align="center">Livestock</div></td>
    </tr>
    <tr>
      <td class="style19"><div align="center">7</div></td>
      <td class="style19">Does the road provide safe crossing points for livestock?</td>
      <td><input name="social_c7" type="radio" value="1" />
Yes
  <input name="social_c7" type="radio" value="0" checked="checked" />
No</td>
    </tr>
    <tr>
      <td class="style19"><div align="center">8</div></td>
      <td class="style19">Are livestock watering points or grazing routes preserved after  maintenance?</td>
      <td><input name="social_c8" type="radio" value="1" />
Yes
  <input name="social_c8" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	
	<tr>
      <td class="style19"><div align="center">9</div></td>
      <td class="style19">Has road design incorporated livestock movement patterns?</td>
      <td><input name="social_c9" type="radio" value="1" />
Yes
  <input name="social_c9" type="radio" value="0" checked="checked" />
No</td>
    </tr>
 <tr>
      <td colspan="3" class="style14"><div align="center">Community Engagement</div></td>
    </tr>
	<tr>
      <td class="style19"><div align="center">10</div></td>
      <td class="style19">Was the local community consulted during the planning and maintenance  stages?</td>
      <td><input name="social_c10" type="radio" value="1" />
Yes
  <input name="social_c10" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">11</div></td>
      <td class="style19">Is there a grievance redressal mechanism available for road users?</td>
      <td><input name="social_c11" type="radio" value="1" />
Yes
  <input name="social_c11" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td class="style19"><div align="center">12</div></td>
      <td class="style19">Has training been provided to local stakeholders for road safety and  maintenance?</td>
      <td><input name="social_c12" type="radio" value="1" />
Yes
  <input name="social_c12" type="radio" value="0" checked="checked" />
No</td>
    </tr>
	<tr>
      <td colspan="3" class="style14"><div align="center">Empowerment</div></td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">13</div></td>
      <td width="76%"><span class="style19">Local communities are consulted before maintenance works begin
      </span><br />
      <span class="style17">(1. Strongly Agree; 2.  Agree; 3 Neutral; 4. Disagree; 5. Strongly Disagree)</span></td>
      <td width="20%"><input name="social_c13" type="text" id="social_c13" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>
	<tr>
	  <td width="4%" class="style19"><div align="center">14</div></td>
      <td width="76%"><span class="style19">Rate the inclusiveness of decision-making in LVRR maintenance 
      </span><br />
      <span class="style17">(1 = Very Low, 2 = low, 3. medium, 4. High, 5 = Very High)</span></td>
      <td width="20%"><input name="social_c14" type="text" id="social_c14" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
	  </tr>
	
      <tr>
	      <td colspan="3" class="style14"><div align="center">Public Management</div></td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">15</div></td>
      <td width="76%"><span class="style19">Timeliness of rural road maintenance interventions
      </span><br />
      <span class="style17">(1. Very timely; 2. Mostly timely; 3. Sometimes delayed; 4. Often delayed; and 5. No maintenance observed)</span></td>
      <td width="20%"><input name="social_c15" type="text" id="social_c15" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>
	<tr>
	  <td width="4%" class="style19"><div align="center">16</div></td>
      <td width="76%"><span class="style19">Most needed improvement in public management of LVRR maintenance  
      </span><br />
      <span class="style17">(1. Stronger community monitoring; 2. Faster complaint resolution; 3. Better technical supervision 4. Digital transparency platforms; 5. Enhanced capacity building & training for local officials)</span></td>
      <td width="20%"><input name="social_c16" type="text" id="social_c16" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
	  </tr>
	  
	  <tr>
	      <td colspan="3" class="style14"><div align="center">Value Addition</div></td>
    </tr>
	<tr>
      <td width="4%" class="style19"><div align="center">17</div></td>
      <td width="76%"><span class="style19">Most important form of value addition in rural road maintenance 
      </span><br />
      <span class="style17">(1. Longer road life; 2. Reduced maintenance cost; 3. Better connectivity to markets & services; 4. Improved safety; 5. All of the above)</span></td>
      <td width="20%"><input name="social_c17" type="text" id="social_c17" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
    </tr>
	<tr>
	  <td width="4%" class="style19"><div align="center">18</div></td>
      <td width="76%"><span class="style19">Biggest barrier to achieving greater value addition  
      </span><br />
      <span class="style17">(1. Inadequate funding; 2. Poor quality materials; 3. Lack of technical expertise; 4.  Weak monitoring mechanisms; 5. Limited stakeholder participation in planning)</span></td>
      <td width="20%"><input name="social_c18" type="text" id="social_c18" value="0" size="4" maxlength="4" /> Likert Scale (1–5)</td>
	  </tr>

  </table>
  
  
<br /><br /><br />
      <table width="80%" border="0" align="center">
        <tr>
          <td><div align="left"><a href="index.jsp"><img src="images/back.png" alt="Back" width="40" height="50" align="left" /></a></div><div align="right"><input name="Submit" type="submit" value="Submit" width="20%"/>  <input name="" type="reset" value="Reset" />
          </div></td>
        </tr>
      </table>
</form>
</body>
<script>


</script>
</html>
