#import "@preview/elsearticle:1.0.0": *
#import "@preview/typsium:0.3.0": *

#show: elsearticle.with(
  title: "TW N°1: Volumetric Titration of Acid–Base Reactions ",
  authors: (
    (
      name: "Fadeli Ala Eddine",
    ),
    (
      name: "Djoualah Dhiaa Eddine",
    ),
    (name: "Douihasni Abderaouf"),
  ),
  // line-numbering: true,
)
#figure(
  image("Logo-ENP.png", width: 50%),
)

= *Introduction*

Acid–base titration is one of the most fundamental techniques in analytical chemistry. It allows the quantitative determination of an acid or base by neutralization with a reagent of known concentration. In this lab, we apply this method to both monoacid and polyacid systems in order to understand their behavior and differences during titration. Alongside experimental work, the software Dozzzaqueux is used to simulate titration curves and distribution diagrams, which provides a deeper understanding of the theoretical principles and strengthens the link between practical results and chemical modeling.
== *Materials & Products*
\
 *Materials*: Gauger pipet (volumetric pipet) 10 mL, beaker, buret, erlenmeyer flask, flask 50 mL,pH indicator paper.\
 *Products*: NaOH (0,1 N), HCl (1 N), HCl (0,1 N), CH3COOH (N unknown), H3PO4 (unknown normality), H2SO4 (unknown normality), CH3COOH (0,1M), CH3COONa(0,1M),Phenolphtalein, Helianthine.




= *Acid-Base Titration*
== *Monoacid Dosage*

=== *Identification of the nature of solutions*

Three unlabeled solutions were tested (HCl, NaOH, CH₃COOH). For each, 1 mL was placed in a test tube, and one drop of indicator (methyl orange / helianthine or phenolphthalein) was added. In addition, pH indicator paper was used to distinguish between the strong acid (HCl), the strong base (NaOH), and the weak acid (CH₃COOH).



==== *Dissociation reactions in water:*



$ "HCl" → "H"^+ + "Cl"^- $
$ "NaOH" → "Na"^+ + "OH"^- $
$ "CH"_3"COOH" ⇌ "CH"_3"COO"^- + H^+ $
==== *Observations & Results*:

#set table(
  stroke: none,
  gutter: 0.2em,
  fill: (x, y) =>
    if x == 0 or y == 0 { gray },          
  inset: (right: 1.5em),
)

#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    set text(white)
    strong(it)

  }
  else if it.body == [] {
    pad(..it.inset)[_N/A_]
  } else {
    it
  }
}

#let a = table.cell(
  fill: gray,
)[Red]
#let b = table.cell(
  fill: gray,
)[Orange]
#let c = table.cell(
  fill: gray,
)[Methyl orange]
#let d = table.cell(
  fill: gray,
)[Pink]
#let e = table.cell( fill: gray,)[Phenolphtalein]

#let f = table.cell(
  fill: gray,
)[Stronge acid]
#let g = table.cell(
  fill: gray,
)[Weak acid]
#let h = table.cell(
  fill: gray,
)[Strong base]

#let l = table.cell( fill: gray,)[1]
#let m = table.cell( fill: gray,)[13]
#let n = table.cell( fill: gray,)[4-5]
#table(
  columns: 5,
  [Solution], [Indicator], [Color observed], [Nature],[Approx.pH],

  [HCl],c, a, f,l,
  [NaOH], e, d, h,m,
  [CH₃COOH],c,b,g,n,
)
=== *Preparation & Dilution*
==== *Volume of concentrated HCl required for 1 L of 1 N solution*:
Normality (*N*) is related to molarity (*M*), since *HCl* is monoprotic :
$ N = M $
To find concentration of commercial HCl :
$ C = frac(d  P, M) $
Substituting : 

$ C = frac(1.18*0.37*1000,36.5) ≈ 11.96M $
So, to prepare 1 L of 1 N HCl :
$ V = frac(C_2 V_2,C_1) = frac(1*1000,11.96) ≈ 83.6"ml" $

==== *Method & Glassware*
+ Use a pipette to measure *83ml* of concentrated HCl.
+ Transfer carefully into a *1L* volumetric flask half-filled with distilled water (always add acid to water, not the reverse).
+ Mix gently, then fill to the calibration mark with distilled water.
+ Invert flask several times to homogenize.

==== *Dilution to 0.1 N*
From 1 N solution, to prepare 50 mL of 0.1 N HCl:
$ V_1 C_1 = V_2 C_2 $
$ V_1 = frac(C_2 V_2,C_1) = frac(0.1 * 50,1) = 5"ml" $ 
==== *Method & Glassware* (This process is called a dilution)
+ Pippete *5ml* of *1N* HCl into into a *50ml* volumetric flask.
+ Add distilled water up to the mark.
+ Invert several times to homogenize.

=== *Dosage of weak monoacid (Acetic acid)*

==== *Experimental setup*
In an *Erlenmeyer flask*, collect *10 mL* of CH₃COOH solution (unknown normality).  
Add *3 drops of phenolphthalein* indicator.  
Fill the *buret* with standard *0.1 N NaOH* solution.  
Titrate by pouring the base until the indicator shifts to faint pink.  
Do *3 tests* and record the volumes $V_b$ of NaOH.  

==== *Indicator choice*
- For *HCl*: *Methyl orange* (equivalence at low pH, strong acid vs strong base).  
- For *CH₃COOH*: *Phenolphthalein* (equivalence occurs in the basic range, weak acid vs strong base).  

==== *Neutralisation reactions*  
$ "HCl" + "NaOH" → "NaCl" + "H"_2"O" $  
$ "CH"_3"COOH" + "NaOH" → "CH"_3"COONa" + "H"_2"O" $  

==== *Determination of normality of CH₃COOH*
The relation of titration is:  
$ N_a V_a = N_b V_b $  

With:  
- $V_a = 10"mL" $ (acid taken)  
- $N_b = 0.1"N" $ (base concentration)  
- $V_b$ = average volume of base used (measured)  
$ V_b = frac(V_"eq1" + V_"eq2" + V_"eq3", 3) = 9.97"ml" $

So:  
$ N("CH_3COOH") = frac(N_b V_b, V_a) $  
$ N("CH_3COOH") = 0.0997 $ 
The relative uncertainty is given by:  

$ frac("ΔN", N) = frac("ΔV"_"pipet", V_"pipet") + frac("ΔV"_"buret", V_"buret") $

Substituting values:  

$ frac("ΔN", N) = frac(0.02, 10.0) + frac(0.01, 9.97) ≈ 0.0030 $

Hence:  

$ "ΔN"= N × 0.0030 = 0.0997 × 0.0030 ≈ 0.0003 \, N $

==== *Final result*  
$ N("CH_3COOH") = 0.0997 ± 0.0030$  

==== *Why volumetric titration and not potentiometry?*  
+ Easier and faster to implement with simple lab equipment.  
+ Requires only glassware and indicators.  
+ Provides sufficient accuracy for weak acid titrations at this concentration.

== *Polyacids Dosage*

=== *Dosage of diacid (H₂SO₄)*

==== *Experimental setup*
In an *Erlenmeyer flask*, collect *10 mL* of H₂SO₄ solution (unknown normality).  
Add *2–3 drops* of suitable indicator (methyl orange).  
Fill the *buret* with standard *0.1 N NaOH* solution.  
Titrate by pouring the base until the indicator shifts (red → yellow).  
Do *3 tests* and record the volumes $V_b$ of NaOH.  

==== *Neutralisation reaction*  
$ "H"_2"SO"_4 + 2 "NaOH" → "Na"_2"SO"_4 + 2 "H"_2"O" $  

==== *Determination of normality of H₂SO₄*
The relation of titration is:  
$ N_a V_a = N_b V_b $  

With:  
- $V_a = 10"mL"$ (acid taken)  
- $N_b = 0.1"N"$ (base concentration)  
- $V_b = 20.03"ml"$ (average measured)  

So:  
$ N("H"_2"SO"_4) = frac(N_b V_b, V_a) = frac(0.1 × 20.03, 10) = 0.2003 $  

Uncertainty:  
$ frac("ΔN", N) = frac("ΔV"_"pipet", V_"pipet") + frac("ΔV"_"buret", V_"buret") $  

Substituting:  
$ frac("ΔN", N) = frac(0.02, 10.0) + frac(0.01, 20.03) = 0.00250 $  

Hence:  
$ "ΔN" = 0.2003 × 0.00250 ≈ 0.0005 \, N $  

==== *Final result*  
$ N("H"_2"SO"_4) = 0.2003 ± 0.0005 $  


=== *Dosage of triacid (H₃PO₄)*

==== *Experimental setup*
In an *Erlenmeyer flask*, collect *10 mL* of H₃PO₄ solution (unknown normality).  
Add *phenolphthalein* (for the 1st neutralization). Record $V_1$ of NaOH.  
Then add *methyl orange* (for the 2nd neutralization) to the same flask. Record $V_2$.  
Do *3 tests*. The 3rd acidity cannot be followed (equivalence pH ≈ 13, no sharp indicator change).  

==== *Neutralisation reactions*  
$ "H"_3"PO"_4 + "NaOH" → "NaH"_2"PO"_4 + "H"_2"O" $  
$ "NaH"_2"PO"_4 + "NaOH" → "Na"_2"HPO"_4 + "H"_2"O" $  
$ "Na"_2"HPO"_4 + "NaOH" → "Na"_3"PO"_4 + "H"_2"O" $  

==== *Determination of normality of H₃PO₄*
The relation of titration is:  
$ N_a V_a = N_b V_b $  

With:  
- $V_a = 10"mL"$ (acid taken)  
- $N_b = 0.1"N"$ (base concentration)  
- $V_b = 10.47"ml"$ (average measured for 1st + 2nd equivalence)  

So:  
$ N("H"_3"PO"_4) = frac(N_b V_b, V_a) = frac(0.1 × 10.47, 10) = 0.1047 $  

Uncertainty:  
$ frac("ΔN", N) = frac("ΔV"_"pipet", V_"pipet") + frac("ΔV"_"buret", V_"buret") $  

Substituting:  
$ frac("ΔN", N) = frac(0.02, 10.0) + frac(0.01, 10.47) = 0.00296 $  

Hence:  
$ "ΔN" = 0.1047 × 0.00296 ≈ 0.0003 \, N $  

==== *Final result*  
$ N("H"_3"PO"_4) = 0.1047 ± 0.0003 $  

==== *Remarks*  
- The necessary total volume of NaOH for neutralisation of 10 mL H₃PO₄ is:  
$ V = frac(N_a V_a, N_b) = frac(0.1047 × 10, 0.1) = 10.47"ml"$  
- The 3rd acidity cannot be followed because the equivalence pH is very high (≈13) and color indicators are not reliable in this range.
=== *Preparation of buffer solution (pH = 4.8)*

==== *Experimental setup*
We want to prepare 20 mL of an acetate buffer with pH = 4.8.  
Available solutions: *CH₃COOH 0.1 M* and *CH₃COONa 0.1 M*.  

==== *Henderson–Hasselbalch relation*
$ "pH" = "pK_a" + log frac([A"⁻"],"[HA]") $  
$ 4.80 = 4.76 + log frac([A"⁻"],"[HA]") $  
$ frac([A"⁻"],"[HA]") = 10^{0.04} ≈ 1.096 $  

==== *Volumes required*
Let $ V_"HA" + V_"A"^-"" = 20"mL" $ and $ frac(V_"A"⁻"",V_"HA") = 1.096 $.  
Solving gives:  
$ V_"HA" ≈ 9.55 "mL", V_"A"^-"" ≈ 10.45"mL" $  

==== *Practical method*
- Pipette *9.55 mL* of CH₃COOH (0.1 M).  
- Pipette *10.45 mL* of CH₃COONa (0.1 M).  
- Mix in a flask and complete to 20.0 mL with distilled water.  
- The resulting solution has pH ≈ 4.8 and resists pH change → confirmed buffer.  

==== *Uses of buffer solutions*
- Maintain pH in biochemical reactions (enzymes).  
- Stabilize pharmaceutical formulations.  
- Used in analytical titrations near equivalence.  
- Calibration in electrochemistry and pH meters.  

= *Software Study*
== *Monoacid Titrations*
=== *HBr/NaOH*(first volume)
#figure(
  image("1st HBr;NaOH.png", width: 80%),
  caption: [
   pH = f(Vb) 
  ],
)
=== *HBr/NaOH*(second volume)
#figure(
  image("2ndHBr;NaOH.png", width: 80%),
  caption: [
   pH = f(Vb) 
  ],
)
== *Polyacid Titrations*
=== *H2SO4/NaOH*
#figure(
  image("H2SO4.png", width: 80%),
  caption: [
   pH = f(Vb) 
  ],
)
=== *H3PO4/KOH*
#figure(
  image("H3SO4.png", width: 80%),
  caption: [
   pH = f(Vb) 
  ],
)

#figure(
  image("Distribution.png", width: 80%),
  caption: [
    Distribution graph for H3PO4
  ],
)
= *Conclusion* 
1. **Monoacid titrations:**  
   - The strong acid *HCl* titrated with NaOH showed a sharp equivalence point at pH ≈ 7, confirming complete dissociation.  
   - The weak acid *CH₃COOH* titrated with NaOH displayed a buffer region before the equivalence point, characteristic of weak acids, with equivalence reached at pH > 7.  
   - Calculated normalities of *HCl* and *CH₃COOH* from volumetric titration agreed well with expected values, demonstrating the accuracy of the method.

2. **Polyacid titrations:**  
   - Diprotic acid *H₂SO₄* titration showed two acidic protons neutralized simultaneously, with equivalence near pH 7.  
   - Triprotic acid *H₃PO₄* exhibited successive equivalence points for the first and second acidic protons; the third acidity was not detectable due to high pH (~13).  
   - Appropriate indicators enabled selective detection of each titration stage.

3. **Buffer formation:**  
   - Weak acids and their salts (e.g., *CH₃COOH/CH₃COONa*) successfully formed buffer solutions, maintaining stable pH upon addition of small amounts of acid or base.  
   - This lab demonstrated practical buffer preparation and highlighted their importance in controlling pH in chemical systems.

4. **Software and graph analysis:**  
   - Titration curves plotted using Python clearly illustrated differences between strong vs weak acids, mono- vs polyacids, and buffer regions.  
   - Equivalence points were accurately predicted and matched experimental data, validating both theoretical calculations and experimental procedures.

**Overall**, the lab reinforced key concepts of acid-base chemistry: dissociation, neutralization, titration methodology, buffer action, and polyprotic acid behavior. Combining experimental titration with software visualization enhanced understanding of pH changes throughout the titration process.
