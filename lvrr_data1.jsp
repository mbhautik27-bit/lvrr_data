<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%
String economic[] = new String[12];
String technique[] = new String[15];
String safety[] = new String[4];
String management[] = new String[14];
String innovation[] = new String[3];
String environment[] = new String[12];
String material[] = new String[15];
String social[] = new String[18];
String rating = new String("Not Sustainable");

float total_score_sum = 200; // Total_score
float total_score = 0.0f;
float criteria_sum[] = new float[8];
criteria_sum[0] = 15; //Economic
criteria_sum[1] = 23; //Technique
criteria_sum[2] = 56; //Safety
criteria_sum[3] = 30; //Management
criteria_sum[4] = 8; //Innovation
criteria_sum[5] = 29; //Environment
criteria_sum[6] = 20; //Material
criteria_sum[7] = 19; //Social
float criteria_sum_analysis[] = new float[8];
float criteria_sum_analysis_per[] = new float[8];

float economic_value[] = new float[12];
float economic_dist[][] = new float[4][3];
float economic_sum[] = new float[4];
float economic_sum_per[] = new float[4];

float tech_value[] = new float[15];
float tech_dist[][] = new float[5][3];
float tech_sum[] = new float[5];
float tech_sum_per[] = new float[5];

float safety_value[] = new float[4];
float safety_dist[] = new float[4];
float safety_sum[] = new float[4];
float safety_sum_per[] = new float[4];

float mgmt_value[] = new float[14];
float mgmt_dist[][] = new float[7][2];
float mgmt_sum[] = new float[7];
float mgmt_sum_per[] = new float[7];

float innovation_value[] = new float[3];
float innovation_dist[] = new float[3];
float innovation_sum[] = new float[3];
float innovation_sum_per[] = new float[3];

float env_value[] = new float[12];
float env_dist[][] = new float[4][3];
float env_sum[] = new float[4];
float env_sum_per[] = new float[4];

float mat_value[] = new float[15];
float mat_dist[][] = new float[5][3];
float mat_sum[] = new float[5];
float mat_sum_per[] = new float[5];

float social_value[] = new float[21];
float social_dist[][] = new float[7][3];
float social_sum[] = new float[7];
float social_sum_per[] = new float[7];


int jj = 0;
//Economic
for (int i = 1; i <= 12; i++)
{
	economic[i-1] = request.getParameter("economic".concat(Integer.toString(i)));
	
	if (i > 9)
	{
	  if (economic[i-1].equals("1"))
	  {
	    if (i == 10)
		{
		  economic_value[i-1] = 2;
		}
		else
		{
		  economic_value[i-1] = 1;
		}
	  }
	}
	else if (i > 6)
	{
	  if (economic[i-1].equals("1"))
	  {
	    economic_value[i-1] = 1;
	  }
	}
	else if (i > 3)
	{
	  if (economic[i-1].equals("1"))
	  {
	    if (i == 4)
		{
		  economic_value[i-1] = 2;
		}
		else
		{
		  economic_value[i-1] = 1;
		}
	  }
	}
	else if ( i >= 1)
	{
	  if (economic[i-1].equals("1"))
	  {
	    if (i == 1)
		{
		  economic_value[i-1] = 2;
		}
		else
		{
		  economic_value[i-1] = 1;
		}
	  }
	}
}

jj = 0;
for (int i = 1; i <= 12; i++)
{
  economic_dist[jj][(i-1)%3] = economic_value[i-1];
  if (i%3 == 0)
  	jj++;
}

criteria_sum_analysis[0] = 0.0f;
for (int i = 0; i < 4; i++)
{
	economic_sum[i] = 0.0f;
	for (int j = 0; j < 3; j++)
	{
		economic_sum[i] += economic_dist[i][j];
	}
	criteria_sum_analysis[0] += economic_sum[i];
	
	economic_sum_per[i] = economic_sum[i]/criteria_sum[0]*100;
}
total_score += criteria_sum_analysis[0];

//Technique
for (int i = 1; i <= 15; i++)
{
	technique[i-1] = request.getParameter("technique".concat(Integer.toString(i)));
	
	if (i > 12)
	{
	  if (technique[i-1].equals("1"))
	  {
	    if (i == 13)
		{
		  tech_value[i-1] = 2;
		}
		else
		{
		  tech_value[i-1] = 1;
		}
	  }
	}
	else if (i > 9)
	{
	  if (technique[i-1].equals("1"))
	  {
	    if (i == 12)
		{
		  tech_value[i-1] = 1;
		}
		else
		{
		  tech_value[i-1] = 2;
		}
	  }
	}
	else if (i > 6)
	{
	  if (technique[i-1].equals("1"))
	  {
	    if (i == 7)
		{
		  tech_value[i-1] = 2;
		}
		else
	      tech_value[i-1] = 1;
	  }
	}
	else if (i > 3)
	{
	  if (technique[i-1].equals("1"))
	  {
	    if (i == 6)
		{
		  tech_value[i-1] = 1;
		}
		else
		{
		  tech_value[i-1] = 2;
		}
	  }
	}
	else
	{
	  if (technique[i-1].equals("1"))
	  {
	    if (i == 3)
		{
		  tech_value[i-1] = 1;
		}
		else
		{
		  tech_value[i-1] = 2;
		}
	  }
	}
}

jj = 0;
for (int i = 1; i <= 15; i++)
{
  tech_dist[jj][(i-1)%3] = tech_value[i-1];
  if (i % 3 == 0)
  	jj++;
}

criteria_sum_analysis[1] = 0.0f;
for (int i = 0; i < 5; i++)
{
	tech_sum[i] = 0.0f;
	for (int j = 0; j < 3; j++)
	{
		tech_sum[i] += tech_dist[i][j];
	}
	criteria_sum_analysis[1] += tech_sum[i];
	
	tech_sum_per[i] = tech_sum[i]/criteria_sum[1]*100;
}
total_score += criteria_sum_analysis[1];


//Safety
for (int i = 1; i <= 4; i++)
{
	safety[i-1] = request.getParameter("safety_c".concat(Integer.toString(i)));
	
    safety_value[i-1] = Float.parseFloat(safety[i-1]);
}

for (int i = 1; i <= 4; i++)
{
  if ( i == 1 )
    safety_dist[i-1] = safety_value[i-1] * 3.6f;
  else if (i == 2)
  	safety_dist[i-1] = safety_value[i-1] * 2.4f;
  else if (i == 3)
    safety_dist[i-1] = safety_value[i-1] * 2.8f;
  else
    safety_dist[i-1] = safety_value[i-1] * 2.4f;
}

criteria_sum_analysis[2] = 0.0f;
for (int i = 0; i < 4; i++)
{
	safety_sum[i] = 0.0f;
	//for (int j = 0; j < 3; j++)
	{
		safety_sum[i] += safety_dist[i];
	}
	criteria_sum_analysis[2] += safety_sum[i];
	
	safety_sum_per[i] = safety_sum[i]/criteria_sum[2]*100;
}
total_score += criteria_sum_analysis[2];


//management
for (int i = 1; i <= 14; i++)
{
    if ( i <= 9 )
	{
	  management[i-1] = request.getParameter("mgmt_c".concat(Integer.toString(i)));
	
	  mgmt_value[i-1] = Float.parseFloat(management[i-1]);
	}
	else if ( i >= 11)
	{
	  int i2 = i-1;
	  management[i-1] = request.getParameter("mgmt_c".concat(Integer.toString(i2)));
	
	  mgmt_value[i-1] = Float.parseFloat(management[i-1]);
	}
	else
	{
	  mgmt_value[i-1] = 0.0f;
	}
}

int iii = 0, jjj = 0;
for (int i = 1; i <= 14; i++)
{

  if ((i-1)%2 == 0 && i != 1)
  {
    iii++;
	jjj = 0;
  }
  if (i >= 13)
  {
    mgmt_dist[iii][jjj] = 0.3f * mgmt_value[i-1];

  }
  else if (i >= 11)
  {
    mgmt_dist[iii][jjj] = 0.4f * mgmt_value[i-1];

  }
  else if (i >= 9)
  {
    mgmt_dist[iii][jjj] = 0.6f * mgmt_value[i-1];

  }
  else if (i >= 7)
  {
    mgmt_dist[iii][jjj] = 0.4f * mgmt_value[i-1];

  }
  else if (i >= 5)
  {
    mgmt_dist[iii][jjj] = 0.6f * mgmt_value[i-1];

  }
  else if (i >= 3)
  {
    mgmt_dist[iii][jjj] = 0.5f * mgmt_value[i-1];

  }
  else
  {
    mgmt_dist[iii][jjj] = 0.5f * mgmt_value[i-1];
	
  }
  jjj++;
}

criteria_sum_analysis[3] = 0.0f;
for (int i = 0; i < 7; i++)
{
	mgmt_sum[i] = 0.0f;
	for (int j = 0; j < 2; j++)
	{
		mgmt_sum[i] += mgmt_dist[i][j];
	}
	criteria_sum_analysis[3] += mgmt_sum[i];
	
	mgmt_sum_per[i] = mgmt_sum[i]/criteria_sum[3]*100;
}
total_score += criteria_sum_analysis[3];

//Innovation
for (int i = 1; i <= 3; i++)
{
	innovation[i-1] = request.getParameter("innovation_".concat(Integer.toString(i)));
    innovation_value[i-1] = Float.parseFloat(innovation[i-1]);
}

for (int i = 1; i <= 3; i++)
{
  if ( i == 1 )
    innovation_dist[i-1] = innovation_value[i-1] * 0.4f;
  else if (i == 2)
  	innovation_dist[i-1] = innovation_value[i-1] * 0.4f;
  else
    innovation_dist[i-1] = innovation_value[i-1] * 0.8f;
}

criteria_sum_analysis[4] = 0.0f;
for (int i = 0; i < 3; i++)
{
	innovation_sum[i] = 0.0f;
	//for (int j = 0; j < 3; j++)
	{
		innovation_sum[i] += innovation_dist[i];
	}
	criteria_sum_analysis[4] += innovation_sum[i];
	
	innovation_sum_per[i] = innovation_sum[i]/criteria_sum[4]*100;
}
total_score += criteria_sum_analysis[4];

//Environment
for (int i = 1; i <= 12; i++)
{
	environment[i-1] = request.getParameter("env".concat(Integer.toString(i)));
	if (i > 9)
	{
	  if (environment[i-1].equals("1"))
	  {
	    env_value[i-1] = 2;
	  }
	}
	else if (i > 6)
	{
	    if (environment[i-1].equals("1"))
		{
			if (i == 9)
			{
			  env_value[i-1] = 3;
			}
			else
			{
			  env_value[i-1] = 2;
			}
		}
	}
	else if (i > 3)
	{
	  if (environment[i-1].equals("1"))
	  {
	    if (i == 6)
		{
		  env_value[i-1] = 3;
		}
		else
		{
		  env_value[i-1] = 2;
		}
	  }
	}
	else if ( i >= 1)
	{
	  if (environment[i-1].equals("1"))
	  {
	    env_value[i-1] = 3; 
	  }
	}
}
 jj = 0;
for (int i = 1; i <= 12; i++)
{
  env_dist[jj][(i-1)%3] = env_value[i-1];
   if (i%3 == 0)
  	jj++;
}

criteria_sum_analysis[5] = 0.0f;
for (int i = 0; i < 4; i++)
{
	env_sum[i] = 0.0f;
	for (int j = 0; j < 3; j++)
	{
		env_sum[i] += env_dist[i][j];
	}
	criteria_sum_analysis[5] += env_sum[i];
	
	env_sum_per[i] = env_sum[i]/criteria_sum[5]*100;
}
total_score += criteria_sum_analysis[5];

//Material
for (int i = 1; i <= 15; i++)
{
	material[i-1] = request.getParameter("material_c".concat(Integer.toString(i)));
	
	if (i > 12)
	{
	  if (material[i-1].equals("1"))
	  {
	    	if (i == 13)
			{
			  mat_value[i-1] = 2;
			}
			else
			{
			  mat_value[i-1] = 1;
			}
	  }
	}
	else if (i > 9)
	{
	  if (material[i-1].equals("1"))
	  {
	    mat_value[i-1] = 1;
	  }
	}
	else if (i > 6)
	{
	    if (material[i-1].equals("1"))
		{
			if (i == 7)
			{
			  mat_value[i-1] = 2;
			}
			else
			{
			  mat_value[i-1] = 1;
			}
		}
	}
	else if (i > 3)
	{
	  if (material[i-1].equals("1"))
	  {
	    if (i == 6)
		{
		  mat_value[i-1] = 1;
		}
		else
		{
		  mat_value[i-1] = 2;
		}
	  }
	}
	else if ( i >= 1)
	{
	  if (material[i-1].equals("1"))
	  {
	    if (i == 1)
		{
	      mat_value[i-1] = 2; 
		}
		else
		{
		  mat_value[i-1] = 1;
		}
	  }
	}
}
 jj = 0;
for (int i = 1; i <= 15; i++)
{
  mat_dist[jj][(i-1)%3] = mat_value[i-1];
   if (i%3 == 0)
  	jj++;
}

criteria_sum_analysis[6] = 0.0f;
for (int i = 0; i < 5; i++)
{
	mat_sum[i] = 0.0f;
	for (int j = 0; j < 3; j++)
	{
		mat_sum[i] += mat_dist[i][j];
	}
	criteria_sum_analysis[6] += mat_sum[i];
	
	mat_sum_per[i] = mat_sum[i]/criteria_sum[6]*100;
}
total_score += criteria_sum_analysis[6];

//Social
for (int i = 1; i <= 18; i++)
{
	social[i-1] = request.getParameter("social_c".concat(Integer.toString(i)));
}

for (int i = 1; i <= 21; i++)
{
    if ( i >= 19)
	{
	  if (i <= 20)
	  {
		social_value[i-1] = Float.parseFloat(social[i-3]);
	  }
	  else
	  {
	    social_value[i-1] = 0.0f;
	  }
	}
    else if ( i >= 16 )
	{
	  if (i <= 17)
	  {
	    social_value[i-1] = Float.parseFloat(social[i-2]);
	  }
	  else
	  {
	    social_value[i-1] = 0.0f;
	  }
	}
	else if ( i >= 13)
	{
	  if (i <= 14)
	  {
        social_value[i-1] = Float.parseFloat(social[i-1]);
	  }
	  else
	  {
	    social_value[i-1] = 0.0f;
	  }
	}
	else
	{
	  if (social[i-1].equals("1"))
	  {
	    if ( i > 9)
		{
		  social_value[i-1] = 1.0f;
		}
	    else if ( i > 6)
		{
		  social_value[i-1] = 1.0f;
		}
		else if ( i > 3)
		{
		  social_value[i-1] = 1.0f;
		}
		else
		{
	      if ( i != 2)
	        social_value[i-1] = 1.5f;
		  else
		    social_value[i-1] = 1.0f;
		}
	  }
	}
}

iii = 0;
jjj = 0;
for (int i = 1; i <= 21; i++)
{

  if ((i-1)%3 == 0 && i != 1)
  {
    iii++;
	jjj = 0;
  }
  if (i >= 19)
  {
    social_dist[iii][jjj] = 0.1f * social_value[i-1];

  }
  else if (i >= 16)
  {
    social_dist[iii][jjj] = 0.2f * social_value[i-1];

  }
  else if (i >= 13)
  {
    social_dist[iii][jjj] = 0.3f * social_value[i-1];

  }
  else
  {
    social_dist[iii][jjj] = social_value[i-1];
  }
  jjj++;
}

criteria_sum_analysis[7] = 0.0f;
for (int i = 0; i < 7; i++)
{
	social_sum[i] = 0.0f;
	for (int j = 0; j < 3; j++)
	{
		social_sum[i] += social_dist[i][j];
	}
	criteria_sum_analysis[7] += social_sum[i];
	
	social_sum_per[i] = social_sum[i]/criteria_sum[7]*100;
}
total_score += criteria_sum_analysis[7];

if (total_score >= 121.0f)
{
  rating = "****";
}
else if (total_score >= 101.0f)
{
  rating = "***";
}
else if (total_score >= 81.0f)
{
  rating = "**";
}
else if (total_score >= 61.0f)
{
  rating = "*";
}

for (int i = 0; i < 8; i++)
{
  criteria_sum_analysis_per[i] = Math.round(criteria_sum_analysis[i]/total_score_sum*100.0);
}

Gson gsonObj1 = new Gson();
Map<Object,Object> map1 = null;
List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();
 
map1 = new HashMap<Object,Object>(); map1.put("label", "Economic"); map1.put("y", criteria_sum_analysis[0]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Technique"); map1.put("y", criteria_sum_analysis[1]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Safety Criteria"); map1.put("y", criteria_sum_analysis[2]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Management Criteria"); map1.put("y", criteria_sum_analysis[3]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Innovation"); map1.put("y", criteria_sum_analysis[4]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Environment"); map1.put("y", criteria_sum_analysis[5]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Material Criteria"); map1.put("y", criteria_sum_analysis[6]); list1.add(map1);
map1 = new HashMap<Object,Object>(); map1.put("label", "Social Criteria"); map1.put("y", criteria_sum_analysis[7]); list1.add(map1);
 
String base8_pie = gsonObj1.toJson(list1);

Gson gsonObj1_per = new Gson();
Map<Object,Object> map1_per = null;
List<Map<Object,Object>> list1_per = new ArrayList<Map<Object,Object>>();
 
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Economic"); map1_per.put("y", criteria_sum_analysis_per[0]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Technique"); map1_per.put("y", criteria_sum_analysis_per[1]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Safety Criteria"); map1_per.put("y", criteria_sum_analysis_per[2]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Management Criteria"); map1_per.put("y", criteria_sum_analysis_per[3]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Innovation"); map1_per.put("y", criteria_sum_analysis_per[4]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Environment"); map1_per.put("y", criteria_sum_analysis_per[5]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Material Criteria"); map1_per.put("y", criteria_sum_analysis_per[6]); list1_per.add(map1_per);
map1_per = new HashMap<Object,Object>(); map1_per.put("label", "Social Criteria"); map1_per.put("y", criteria_sum_analysis_per[7]); list1_per.add(map1_per);

String base8_pie_per = gsonObj1_per.toJson(list1_per);

Gson gsonObj_soc8 = new Gson();
Map<Object,Object> map_economic = null;
List<Map<Object,Object>> list_economic = new ArrayList<Map<Object,Object>>();
 
map_economic = new HashMap<Object,Object>(); map_economic.put("label", "Market Supply & Demand"); map_economic.put("y", economic_sum[0]); list_economic.add(map_economic);
map_economic = new HashMap<Object,Object>(); map_economic.put("label", "Transportation"); map_economic.put("y", economic_sum[1]); list_economic.add(map_economic);
map_economic = new HashMap<Object,Object>(); map_economic.put("label", "Supply Chain"); map_economic.put("y", economic_sum[2]); list_economic.add(map_economic);
map_economic = new HashMap<Object,Object>(); map_economic.put("label", "Financial Investment"); map_economic.put("y", economic_sum[3]); list_economic.add(map_economic);
 
String economic_4 = gsonObj_soc8.toJson(list_economic);

Gson gsonObj_eco_per = new Gson();
Map<Object,Object> map_economic_per = null;
List<Map<Object,Object>> list_economic_per = new ArrayList<Map<Object,Object>>();
 
map_economic_per = new HashMap<Object,Object>(); map_economic_per.put("label", "Market Supply & Demand"); map_economic_per.put("y", economic_sum_per[0]); list_economic_per.add(map_economic_per);
map_economic_per = new HashMap<Object,Object>(); map_economic_per.put("label", "Transportation"); map_economic_per.put("y", economic_sum_per[1]); list_economic_per.add(map_economic_per);
map_economic_per = new HashMap<Object,Object>(); map_economic_per.put("label", "Supply Chain"); map_economic_per.put("y", economic_sum_per[2]); list_economic_per.add(map_economic_per);
map_economic_per = new HashMap<Object,Object>(); map_economic_per.put("label", "Financial Investment"); map_economic_per.put("y", economic_sum_per[3]); list_economic_per.add(map_economic_per);
 
String economic_4_per = gsonObj_eco_per.toJson(list_economic_per);

Gson gsonObj_tech = new Gson();
Map<Object,Object> map_tech = null;
List<Map<Object,Object>> list_tech = new ArrayList<Map<Object,Object>>();
 
map_tech = new HashMap<Object,Object>(); map_tech.put("label", "Material Production"); map_tech.put("y", tech_sum[0]); list_tech.add(map_tech);
map_tech = new HashMap<Object,Object>(); map_tech.put("label", "Standard Procedure"); map_tech.put("y", tech_sum[1]); list_tech.add(map_tech);
map_tech = new HashMap<Object,Object>(); map_tech.put("label", "Smoothness Adjustment"); map_tech.put("y", tech_sum[2]); list_tech.add(map_tech);
map_tech = new HashMap<Object,Object>(); map_tech.put("label", "Maintenance Technique"); map_tech.put("y", tech_sum[3]); list_tech.add(map_tech);
map_tech = new HashMap<Object,Object>(); map_tech.put("label", "Repair & Disturbance"); map_tech.put("y", tech_sum[4]); list_tech.add(map_tech);
 
String tech_5 = gsonObj_tech.toJson(list_tech);

Gson gsonObj_tech_per = new Gson();
Map<Object,Object> map_tech_per = null;
List<Map<Object,Object>> list_tech_per = new ArrayList<Map<Object,Object>>();
 
map_tech_per = new HashMap<Object,Object>(); map_tech_per.put("label", "Material Production"); map_tech_per.put("y", tech_sum_per[0]); list_tech_per.add(map_tech_per);
map_tech_per = new HashMap<Object,Object>(); map_tech_per.put("label", "Standard Procedure"); map_tech_per.put("y", tech_sum_per[1]); list_tech_per.add(map_tech_per);
map_tech_per = new HashMap<Object,Object>(); map_tech_per.put("label", "Smoothness Adjustment"); map_tech_per.put("y", tech_sum_per[2]); list_tech_per.add(map_tech_per);
map_tech_per = new HashMap<Object,Object>(); map_tech_per.put("label", "Maintenance Technique"); map_tech_per.put("y", tech_sum_per[3]); list_tech_per.add(map_tech_per);
map_tech_per = new HashMap<Object,Object>(); map_tech_per.put("label", "Repair & Disturbance"); map_tech_per.put("y", tech_sum_per[4]); list_tech_per.add(map_tech_per);
 
String tech_5_per = gsonObj_tech_per.toJson(list_tech_per);

Gson gsonObj_safety = new Gson();
Map<Object,Object> map_safety = null;
List<Map<Object,Object>> list_safety = new ArrayList<Map<Object,Object>>();
 
map_safety = new HashMap<Object,Object>(); map_safety.put("label", "Construction Safety"); map_safety.put("y", safety_sum[0]); list_safety.add(map_safety);
map_safety = new HashMap<Object,Object>(); map_safety.put("label", "Glare Control"); map_safety.put("y", safety_sum[1]); list_safety.add(map_safety);
map_safety = new HashMap<Object,Object>(); map_safety.put("label", "Traffic Control"); map_safety.put("y", safety_sum[2]); list_safety.add(map_safety);
map_safety = new HashMap<Object,Object>(); map_safety.put("label", "Traffic Marking"); map_safety.put("y", safety_sum[3]); list_safety.add(map_safety);
 
String safety_4 = gsonObj_safety.toJson(list_safety);

Gson gsonObj_safety_per = new Gson();
Map<Object,Object> map_safety_per = null;
List<Map<Object,Object>> list_safety_per = new ArrayList<Map<Object,Object>>();
 
map_safety_per = new HashMap<Object,Object>(); map_safety_per.put("label", "Construction Safety"); map_safety_per.put("y", safety_sum_per[0]); list_safety_per.add(map_safety_per);
map_safety_per = new HashMap<Object,Object>(); map_safety_per.put("label", "Glare Control"); map_safety_per.put("y", safety_sum_per[1]); list_safety_per.add(map_safety_per);
map_safety_per = new HashMap<Object,Object>(); map_safety_per.put("label", "Traffic Control"); map_safety_per.put("y", safety_sum_per[2]); list_safety_per.add(map_safety_per);
map_safety_per = new HashMap<Object,Object>(); map_safety_per.put("label", "Traffic Marking"); map_safety_per.put("y", safety_sum_per[3]); list_safety_per.add(map_safety_per);
 
String safety_4_per = gsonObj_safety_per.toJson(list_safety_per);


Gson gsonObj_mgmt = new Gson();
Map<Object,Object> map_mgmt = null;
List<Map<Object,Object>> list_mgmt = new ArrayList<Map<Object,Object>>();
 
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Budget Plan"); map_mgmt.put("y", mgmt_sum[0]); list_mgmt.add(map_mgmt);
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Maintenance Schedule"); map_mgmt.put("y", mgmt_sum[1]); list_mgmt.add(map_mgmt);
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Quality Management"); map_mgmt.put("y", mgmt_sum[2]); list_mgmt.add(map_mgmt);
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Workzone Management"); map_mgmt.put("y", mgmt_sum[3]); list_mgmt.add(map_mgmt);
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Project Team"); map_mgmt.put("y", mgmt_sum[4]); list_mgmt.add(map_mgmt);
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Project Record"); map_mgmt.put("y", mgmt_sum[5]); list_mgmt.add(map_mgmt);
map_mgmt = new HashMap<Object,Object>(); map_mgmt.put("label", "Project Interaction"); map_mgmt.put("y", mgmt_sum[6]); list_mgmt.add(map_mgmt);

 
String mgmt_4 = gsonObj_mgmt.toJson(list_mgmt);

Gson gsonObj_mgmt_per = new Gson();
Map<Object,Object> map_mgmt_per = null;
List<Map<Object,Object>> list_mgmt_per = new ArrayList<Map<Object,Object>>();
 
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Budget Plan"); map_mgmt_per.put("y", mgmt_sum_per[0]); list_mgmt_per.add(map_mgmt_per);
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Maintenance Schedule"); map_mgmt_per.put("y", mgmt_sum_per[1]); list_mgmt_per.add(map_mgmt_per);
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Quality Management"); map_mgmt_per.put("y", mgmt_sum_per[2]); list_mgmt_per.add(map_mgmt_per);
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Workzone Management"); map_mgmt_per.put("y", mgmt_sum_per[3]); list_mgmt_per.add(map_mgmt_per);
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Project Team"); map_mgmt_per.put("y", mgmt_sum_per[4]); list_mgmt_per.add(map_mgmt_per);
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Project Record"); map_mgmt_per.put("y", mgmt_sum_per[5]); list_mgmt_per.add(map_mgmt_per);
map_mgmt_per = new HashMap<Object,Object>(); map_mgmt_per.put("label", "Project Interaction"); map_mgmt_per.put("y", mgmt_sum_per[6]); list_mgmt_per.add(map_mgmt_per);
 
String mgmt_4_per = gsonObj_mgmt_per.toJson(list_mgmt_per);

Gson gsonObj_innovation = new Gson();
Map<Object,Object> map_innovation = null;
List<Map<Object,Object>> list_innovation = new ArrayList<Map<Object,Object>>();
 
map_innovation = new HashMap<Object,Object>(); map_innovation.put("label", "Sustainability Representative"); map_innovation.put("y", innovation_sum[0]); list_innovation.add(map_innovation);
map_innovation = new HashMap<Object,Object>(); map_innovation.put("label", "Creative Ideas"); map_innovation.put("y", innovation_sum[1]); list_innovation.add(map_innovation);
map_innovation = new HashMap<Object,Object>(); map_innovation.put("label", "Certified Sustainable Rural Road"); map_innovation.put("y", innovation_sum[2]); list_innovation.add(map_innovation);
 
String innovation_4 = gsonObj_innovation.toJson(list_innovation);

Gson gsonObj_innovation_per = new Gson();
Map<Object,Object> map_innovation_per = null;
List<Map<Object,Object>> list_innovation_per = new ArrayList<Map<Object,Object>>();
 
map_innovation_per = new HashMap<Object,Object>(); map_innovation_per.put("label", "Sustainability Representative"); map_innovation_per.put("y", innovation_sum_per[0]); list_innovation_per.add(map_innovation_per);
map_innovation_per = new HashMap<Object,Object>(); map_innovation_per.put("label", "Creative Ideas"); map_innovation_per.put("y", innovation_sum_per[1]); list_innovation_per.add(map_innovation_per);
map_innovation_per = new HashMap<Object,Object>(); map_innovation_per.put("label", "Certified Sustainable Rural Road"); map_innovation_per.put("y", innovation_sum_per[2]); list_innovation_per.add(map_innovation_per);
 
String innovation_4_per = gsonObj_innovation_per.toJson(list_innovation_per);


Gson gsonObj_env = new Gson();
Map<Object,Object> map_env = null;
List<Map<Object,Object>> list_env = new ArrayList<Map<Object,Object>>();
 
map_env = new HashMap<Object,Object>(); map_env.put("label", "Atmosphere"); map_env.put("y", env_sum[0]); list_env.add(map_env);
map_env = new HashMap<Object,Object>(); map_env.put("label", "Forest area"); map_env.put("y", env_sum[1]); list_env.add(map_env);
map_env = new HashMap<Object,Object>(); map_env.put("label", "Weather (climate resilience)"); map_env.put("y", env_sum[2]); list_env.add(map_env);
map_env = new HashMap<Object,Object>(); map_env.put("label", "Energy"); map_env.put("y", env_sum[3]); list_env.add(map_env);
 
String env_4 = gsonObj_env.toJson(list_env);

Gson gsonObj_env_per = new Gson();
Map<Object,Object> map_env_per = null;
List<Map<Object,Object>> list_env_per = new ArrayList<Map<Object,Object>>();
 
map_env_per = new HashMap<Object,Object>(); map_env_per.put("label", "Atmosphere"); map_env_per.put("y", env_sum_per[0]); list_env_per.add(map_env_per);
map_env_per = new HashMap<Object,Object>(); map_env_per.put("label", "Forest area"); map_env_per.put("y", env_sum_per[1]); list_env_per.add(map_env_per);
map_env_per = new HashMap<Object,Object>(); map_env_per.put("label", "Weather (climate resilience)"); map_env_per.put("y", env_sum_per[2]); list_env_per.add(map_env_per);
map_env_per = new HashMap<Object,Object>(); map_env_per.put("label", "Energy"); map_env_per.put("y", env_sum_per[3]); list_env_per.add(map_env_per);
 
String env_4_per = gsonObj_env_per.toJson(list_env_per);


Gson gsonObj_mat = new Gson();
Map<Object,Object> map_mat = null;
List<Map<Object,Object>> list_mat = new ArrayList<Map<Object,Object>>();
 
map_mat = new HashMap<Object,Object>(); map_mat.put("label", "Flexible Road"); map_mat.put("y", mat_sum[0]); list_mat.add(map_mat);
map_mat = new HashMap<Object,Object>(); map_mat.put("label", "Quality Certificate"); map_mat.put("y", mat_sum[1]); list_mat.add(map_mat);
map_mat = new HashMap<Object,Object>(); map_mat.put("label", "Recycle Material"); map_mat.put("y", mat_sum[2]); list_mat.add(map_mat);
map_mat = new HashMap<Object,Object>(); map_mat.put("label", "Alternative Materials"); map_mat.put("y", mat_sum[3]); list_mat.add(map_mat);
map_mat = new HashMap<Object,Object>(); map_mat.put("label", "Local Material"); map_mat.put("y", mat_sum[4]); list_mat.add(map_mat);
 
String mat_4 = gsonObj_mat.toJson(list_mat);

Gson gsonObj_mat_per = new Gson();
Map<Object,Object> map_mat_per = null;
List<Map<Object,Object>> list_mat_per = new ArrayList<Map<Object,Object>>();
 
map_mat_per = new HashMap<Object,Object>(); map_mat_per.put("label", "Flexible Road"); map_mat_per.put("y", mat_sum_per[0]); list_mat_per.add(map_mat_per);
map_mat_per = new HashMap<Object,Object>(); map_mat_per.put("label", "Quality Certificate"); map_mat_per.put("y", mat_sum_per[1]); list_mat_per.add(map_mat_per);
map_mat_per = new HashMap<Object,Object>(); map_mat_per.put("label", "Recycle Material"); map_mat_per.put("y", mat_sum_per[2]); list_mat_per.add(map_mat_per);
map_mat_per = new HashMap<Object,Object>(); map_mat_per.put("label", "Alternative Materials"); map_mat_per.put("y", mat_sum_per[3]); list_mat_per.add(map_mat_per);
map_mat_per = new HashMap<Object,Object>(); map_mat_per.put("label", "Local Material"); map_mat_per.put("y", mat_sum_per[4]); list_mat_per.add(map_mat_per);
 
String mat_4_per = gsonObj_mat_per.toJson(list_mat_per);

Gson gsonObj_social = new Gson();
Map<Object,Object> map_social = null;
List<Map<Object,Object>> list_social = new ArrayList<Map<Object,Object>>();
 
map_social = new HashMap<Object,Object>(); map_social.put("label", "Service"); map_social.put("y", social_sum[0]); list_social.add(map_social);
map_social = new HashMap<Object,Object>(); map_social.put("label", "Cultural Heritage"); map_social.put("y", social_sum[1]); list_social.add(map_social);
map_social = new HashMap<Object,Object>(); map_social.put("label", "Livestock"); map_social.put("y", social_sum[2]); list_social.add(map_social);
map_social = new HashMap<Object,Object>(); map_social.put("label", "Community Engagement"); map_social.put("y", social_sum[3]); list_social.add(map_social);
map_social = new HashMap<Object,Object>(); map_social.put("label", "Empowerment"); map_social.put("y", social_sum[4]); list_social.add(map_social);
map_social = new HashMap<Object,Object>(); map_social.put("label", "Public Management"); map_social.put("y", social_sum[5]); list_social.add(map_social);
map_social = new HashMap<Object,Object>(); map_social.put("label", "Value Addition"); map_social.put("y", social_sum[6]); list_social.add(map_social);

 
String social_4 = gsonObj_social.toJson(list_social);

Gson gsonObj_social_per = new Gson();
Map<Object,Object> map_social_per = null;
List<Map<Object,Object>> list_social_per = new ArrayList<Map<Object,Object>>();
 
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Service"); map_social_per.put("y", social_sum_per[0]); list_social_per.add(map_social_per);
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Cultural Heritage"); map_social_per.put("y", social_sum_per[1]); list_social_per.add(map_social_per);
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Livestock"); map_social_per.put("y", social_sum_per[2]); list_social_per.add(map_social_per);
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Community Engagement"); map_social_per.put("y", social_sum_per[3]); list_social_per.add(map_social_per);
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Empowerment"); map_social_per.put("y", social_sum_per[4]); list_social_per.add(map_social_per);
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Public Management"); map_social_per.put("y", social_sum_per[5]); list_social_per.add(map_social_per);
map_social_per = new HashMap<Object,Object>(); map_social_per.put("label", "Value Addition"); map_social_per.put("y", social_sum_per[6]); list_social_per.add(map_social_per);
 
String social_4_per = gsonObj_social_per.toJson(list_social_per);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>NITW LVRRs - Results</title>
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
.style15 {color: #FF0000}
.style13 {
	font-size: 30px;
	font-weight: bold;
}
.style14 {
	font-size: 18px;
	font-weight: bold;
}
.style20 {
	font-size: x-large;
	color: #FF0000;
}
.style21 {
	font-size: x-large;
	color: #0000FF;
}
.style22 {font-size: 24px}
.style25 {color: #0000FF; font-weight: bold; }

-->
</style>
<script type="text/javascript">
window.onload = function() {

var chart_base8_per = new CanvasJS.Chart("chartContainer_sum8", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "MRR Tool",
	exportEnabled: true,
	title:{
		text: "Summary Criteria (%)"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(base8_pie_per);%>
	}]
});

chart_base8_per.render();

var chart_base8 = new CanvasJS.Chart("chartContainer_sum8_points", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "MRR Tool",
	exportEnabled: true,
	title:{
		text: "Summary Criteria (points)"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}",
		dataPoints : <%out.print(base8_pie);%>
	}]
});
 
chart_base8.render();

var chart_dynamic_economic = new CanvasJS.Chart("chartContainer_economic", {
	title: {
		text: "Economic (points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(economic_4);%>
	}]
});
chart_dynamic_economic.render();

var chart_dynamic_economic_per = new CanvasJS.Chart("chartContainer_economic_per", {
	title: {
		text: "Economic (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(economic_4_per);%>
	}]
});
chart_dynamic_economic_per.render();

var chart_dynamic_tech = new CanvasJS.Chart("chartContainer_tech", {
	title: {
		text: "Technique(points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(tech_5);%>
	}]
});
chart_dynamic_tech.render();

var chart_dynamic_tech_per = new CanvasJS.Chart("chartContainer_tech_per", {
	title: {
		text: "Technique (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(tech_5_per);%>
	}]
});
chart_dynamic_tech_per.render();

var chart_dynamic_safety = new CanvasJS.Chart("chartContainer_safety", {
	title: {
		text: "Safety(points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(safety_4);%>
	}]
});
chart_dynamic_safety.render();

var chart_dynamic_safety_per = new CanvasJS.Chart("chartContainer_safety_per", {
	title: {
		text: "Safety (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(safety_4_per);%>
	}]
});
chart_dynamic_safety_per.render();

var chart_dynamic_mgmt = new CanvasJS.Chart("chartContainer_mgmt", {
	title: {
		text: "Management(points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(mgmt_4);%>
	}]
});
chart_dynamic_mgmt.render();

var chart_dynamic_mgmt_per = new CanvasJS.Chart("chartContainer_mgmt_per", {
	title: {
		text: "Management (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(mgmt_4_per);%>
	}]
});
chart_dynamic_mgmt_per.render();

var chart_dynamic_innovation = new CanvasJS.Chart("chartContainer_innovation", {
	title: {
		text: "Innovation(points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(innovation_4);%>
	}]
});
chart_dynamic_innovation.render();

var chart_dynamic_innovation_per = new CanvasJS.Chart("chartContainer_innovation_per", {
	title: {
		text: "Innovation (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(innovation_4_per);%>
	}]
});
chart_dynamic_innovation_per.render();

var chart_dynamic_env = new CanvasJS.Chart("chartContainer_env", {
	title: {
		text: "Environment (points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(env_4);%>
	}]
});
chart_dynamic_env.render();

var chart_dynamic_env_per = new CanvasJS.Chart("chartContainer_env_per", {
	title: {
		text: "Environment (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(env_4_per);%>
	}]
});
chart_dynamic_env_per.render();

var chart_dynamic_mat = new CanvasJS.Chart("chartContainer_mat", {
	title: {
		text: "Material (points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(mat_4);%>
	}]
});
chart_dynamic_mat.render();

var chart_dynamic_mat_per = new CanvasJS.Chart("chartContainer_mat_per", {
	title: {
		text: "Material (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(mat_4_per);%>
	}]
});
chart_dynamic_mat_per.render();

var chart_dynamic_social = new CanvasJS.Chart("chartContainer_social", {
	title: {
		text: "Social (points)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "score"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(social_4);%>
	}]
});
chart_dynamic_social.render();

var chart_dynamic_social_per = new CanvasJS.Chart("chartContainer_social_per", {
	title: {
		text: "Social (%)"
	},
	axisX: {
		title: "Criteria"
	},
	axisY: {
		title: "%"
	},
	data: [{
		type: "column",
		yValueFormatString: "0.00",
		dataPoints: <%out.print(social_4_per);%>
	}]
});
chart_dynamic_social_per.render();
}
</script>

</head>

<body>
<table width="100%" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
<caption class="style11 style14">
<span class="style2" ><img src="images/logo1.png" alt="NITW" width="193" height="157" align="left" /><span class="style15" >NITW Sustainability Rating Tool for Low-Volume Rural Roads Maintenance</span></span>
<span class="style15"><br />
</span>
</caption>
</table>
<br />
<form id="form1" name="form1" method="post" action="building_data1.jsp">
  <div align="center"><span class="style13">Rating Tool for LVRRs</span><br />
    <br />
  </div>
  
<br /><br /><br />
      <table width="80%" border="0" align="center">
        <tr>
          <td><div align="center"><a href="index.jsp" class="style22">home</a></div></td>
        </tr>
      </table>
	  
	  <table width="90%" border="0" align="center">
  <tr>
    <td colspan="2" align="center"><div align="center"><span class="style20">Total Score: </span><span class="style21"><%=total_score%></span></div></td>
    </tr>
  <tr>
    <td colspan="2" align="center"><div align="center"><span class="style20">Certification Level </span><span class="style21"><%=rating%></span></div></td>
    </tr>
	<tr>
    <td colspan="2" align="center">
	  <table width="33%" border="1" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="53%"><span class="style14">% of Total Points (out of 200) </span></td>
          <td width="47%"><span class="style14">Certification Level </span></td>
        </tr>
        <tr>
          <td><strong>0-30%(0-60 pts)</strong></td>
          <td><span class="style25">Not sustainable </span></td>
        </tr>
        <tr>
          <td><strong>31-40% (61-80 pts) </strong></td>
          <td><span class="style25">*</span></td>
        </tr>
        <tr>
          <td><strong>41-50% (81-100 pts) </strong></td>
          <td><span class="style25">**</span></td>
        </tr>
        <tr>
          <td><strong>51-60% (101-120 pts) </strong></td>
          <td><span class="style25">***</span></td>
        </tr>
        <tr>
          <td><strong>61% and above (121 pts and above) </strong></td>
          <td><span class="style25">****</span></td>
        </tr>
      </table>	</td>
    </tr>
  <tr>
    <td colspan="2" align="center"><div id="chartContainer_sum8" style="height: 400px; width: 65%;" align="center"></div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><div id="chartContainer_sum8_points" style="height: 400px; width: 65%;" align="center"></div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_economic" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_economic_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_tech" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_tech_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_safety" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_safety_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_mgmt" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_mgmt_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_innovation" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_innovation_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_env" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_env_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_mat" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_mat_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" align="center"><div id="chartContainer_social" style="height: 400px; width: 90%;" align="center"></div></td>
    <td width="50%" align="center"><div id="chartContainer_social_per" style="height: 400px; width: 90%;" align="center"></div></td>
  </tr>
</table>

</form>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
<script>


</script>
</html>
