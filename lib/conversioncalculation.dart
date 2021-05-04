List<String> distConverter(String disUnit,double length) {
  double inmetre=0;
  if (disUnit=='mm')  
  {inmetre=length/(1000);}
  else if(disUnit=='cm')
  {inmetre=length/(100);}
  else if(disUnit=='dm')
  {inmetre=length/(10);}
  else if(disUnit=='m')
  {inmetre=length;}
  else if(disUnit=='km')
  {inmetre=length*1000;}
  else if(disUnit=='in')
  {inmetre=length*(0.024);}
  else if(disUnit=='ft')
  {inmetre=length*(0.3048);}
  else if(disUnit=='yd')
  {inmetre=length*(0.9144);}
  else if(disUnit=='mi')
  {inmetre=length*(1609.344);}
  else if(disUnit=='nmi')
  {inmetre=length*(1851);}
//   finding of length in metre completed.
  
  List<String> measurement=[];   //sequence of length unit [mm,cm,dm,m,km,in,ft,yd,mi,nmi]
  String mm= (inmetre*1000).toStringAsFixed(4);
  String cm= (inmetre*100).toStringAsFixed(5);
  String dm= (inmetre*10).toStringAsFixed(5);
  String m= (inmetre*1).toStringAsFixed(6);
  String km= (inmetre*0.001).toStringAsFixed(8);
  String inch= (inmetre*39.3700787401575).toStringAsFixed(5);
  String ft= (inmetre*3.28083989501312).toStringAsFixed(8);
  String yd= (inmetre*1.09361329833771).toStringAsFixed(8);
  String mi= (inmetre*0.00062137119224).toStringAsExponential(6);
  String nmi= (inmetre*0.00053995680346).toStringAsExponential(6);
  //conversion completed
  
  measurement.add(mm);
  measurement.add(cm);
  measurement.add(dm);
  measurement.add(m);
  measurement.add(km);
  measurement.add(inch);
  measurement.add(ft);
  measurement.add(yd);
  measurement.add(mi);
  measurement.add(nmi);
  
  return measurement;
}

//For mass Conversion

List<String> massConverter(String massUnit,double mass) {
  double inkg=0;
  if(massUnit=='mg')
  {inkg=mass/(1000000);}
  else if(massUnit=='g')
  {inkg=mass/(1000);}
  else if(massUnit=='kg')
  {inkg=mass;}
  else if(massUnit=='t')  
  {inkg=mass*(1000);}
  else if(massUnit=='gr')  
  {inkg=mass*(6.479891/100000);}
  else if(massUnit=='oz')  
  {inkg=mass*(0.028349523125);}
  else if(massUnit=='lb') 
  {inkg=mass*(0.453592);}
  else if(massUnit=='ton_us') 
  {inkg=mass*(907.18474);}
  else if(massUnit=='ton_uk') 
  {inkg=mass*(1016.0469);}
  else if(massUnit=='ct') 
  {inkg=mass*(0.0002);}
  

//finding of mass in kg is finished

List<String> massconverted=[]; 
  //sequence of mass unit [mg,g,kg,t,gr,oz,lb,ton_us,ton_uk,ct]
  
String mg=(inkg*(1000000)).toStringAsFixed(5);
String g=(inkg*(1000)).toStringAsFixed(5);
String kg=(inkg*(1)).toStringAsFixed(5);
String t=(inkg*(0.001)).toStringAsFixed(8);
String gr=(inkg*(15432.35835)).toStringAsFixed(5);     //6.4799/100000
String oz=(inkg*(35.27396)).toStringAsFixed(5);
String lb=(inkg*(2.2046226)).toStringAsFixed(5);
// ignore: non_constant_identifier_names
String ton_us=(inkg*(0.00110231131)).toStringAsExponential(5);
// ignore: non_constant_identifier_names
String ton_uk=(inkg*(0.0009842065)).toStringAsExponential(5);
String ct=(inkg*(5000)).toStringAsFixed(5);

massconverted.add(mg);
massconverted.add(g);
massconverted.add(kg);
massconverted.add(t);
massconverted.add(gr);
massconverted.add(oz);
massconverted.add(lb);
massconverted.add(ton_us);
massconverted.add(ton_uk);
massconverted.add(ct);

return massconverted;
}


List<String> tempConverter(String tempUnit,double temp) {
  double inkelvin=0;
  if (tempUnit=='K')  
  {inkelvin=temp;}
  else if (tempUnit=='C')  
  {inkelvin=temp+273.15;}
  else if (tempUnit=='F')  
  {inkelvin=(temp - 32) *5/9 + 273.15;}
  else if (tempUnit=='R')  
  {inkelvin=temp * 5/9;}
   else if (tempUnit=='Re')  
  {inkelvin=temp * (5/4) + 273.15;}
  
  List<String> tempconverted=[];
  
  String K=(inkelvin).toStringAsFixed(5);
  String C=(inkelvin-273.15).toStringAsFixed(5);
  String F=((inkelvin - 273.15)*9/5 + 32).toStringAsFixed(5);
  String R=(inkelvin*1.8).toStringAsFixed(5);
  // ignore: non_constant_identifier_names
  String Re=((inkelvin-273.15)*0.8).toStringAsFixed(5);
  
  tempconverted.add(K);
  tempconverted.add(C);
  tempconverted.add(F);
  tempconverted.add(R);
  tempconverted.add(Re);
  print(tempconverted);
  //sequence [k,C,F,R,Re]
  return tempconverted;
  
}