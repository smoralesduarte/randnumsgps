LoadPackage("numericalsgps");
LoadPackage("intpic");

cls := [ "blue","-red","red!70", "black!40" ];
ns := NumericalSemigroup(6, 9, 20);
P := MinimalGenerators(ns);
m := Multiplicity(ns);
f := FrobeniusNumber(ns);
c := Conductor(ns);
q := CeilingOfRational(c/m);
rho := q*m-c;
list := [-rho .. c+m-1];
ti := [c..c+m-1];
importants := Union(SmallElements(ns),ti);
options := rec(colors := cls,highlights:=[[c],importants,P]);
# options := rec(
# highlights:=[[],[],[c],importants,[],[],[],[],P],
# cell_width := "6",colsep:="0",rowsep:="0",inner_sep:="2",
# shape_only:=" ",line_width:="0",line_color:="black!20");;
tkz := IP_TikzArrayOfIntegers(list,m,options);;
Print(tkz);