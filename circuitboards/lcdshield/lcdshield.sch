<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.0.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="11" fill="1" visible="no" active="no"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
This library contains footprints for SparkFun breakout boards, microcontrollers (Arduino, Particle, Teensy, etc.),  breadboards, non-RF modules, etc.
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="UNO_R3_SHIELD">
<description>&lt;h3&gt;Arduino Uno-Compatible Footprint&lt;/h3&gt;
No holes, no ICSP connections.
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 32&lt;/li&gt;
&lt;li&gt;Pin pitch: 0.1"&lt;/li&gt;
&lt;li&gt;Area:2.1x2.35"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;Arduino Uno R3 Shield&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-24.13" y1="-29.21" x2="-17.17" y2="-29.21" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-29.21" x2="-4.97" y2="-29.21" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-29.21" x2="24.13" y2="-29.21" width="0.254" layer="51"/>
<wire x1="24.13" y1="-29.21" x2="26.67" y2="-26.67" width="0.254" layer="51"/>
<wire x1="26.67" y1="27.94" x2="24.13" y2="27.94" width="0.254" layer="51"/>
<wire x1="24.13" y1="27.94" x2="21.59" y2="30.48" width="0.254" layer="51"/>
<wire x1="-26.67" y1="26.67" x2="-26.67" y2="-26.67" width="0.254" layer="51"/>
<wire x1="-26.67" y1="-26.67" x2="-24.13" y2="-29.21" width="0.254" layer="51"/>
<wire x1="21.59" y1="30.48" x2="-11.43" y2="30.48" width="0.254" layer="51"/>
<wire x1="-11.43" y1="30.48" x2="-13.97" y2="27.94" width="0.254" layer="51"/>
<wire x1="-13.97" y1="27.94" x2="-25.4" y2="27.94" width="0.254" layer="51"/>
<wire x1="-25.4" y1="27.94" x2="-26.67" y2="26.67" width="0.254" layer="51"/>
<wire x1="26.67" y1="-26.67" x2="26.67" y2="27.94" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-44.71" x2="-4.97" y2="-44.71" width="0.254" layer="51"/>
<wire x1="13.53" y1="-39.51" x2="22.53" y2="-39.51" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-44.71" x2="-17.17" y2="-29.21" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-44.71" x2="-4.97" y2="-29.21" width="0.254" layer="51"/>
<wire x1="13.53" y1="-39.51" x2="13.53" y2="-29.31" width="0.254" layer="51"/>
<wire x1="22.53" y1="-39.51" x2="22.53" y2="-29.31" width="0.254" layer="51"/>
<wire x1="-25.4" y1="26.67" x2="-22.86" y2="26.67" width="0.127" layer="51"/>
<wire x1="-22.86" y1="26.67" x2="-22.86" y2="6.35" width="0.127" layer="51"/>
<wire x1="-22.86" y1="6.35" x2="-25.4" y2="6.35" width="0.127" layer="51"/>
<wire x1="-25.4" y1="6.35" x2="-25.4" y2="26.67" width="0.127" layer="51"/>
<wire x1="-25.4" y1="5.08" x2="-22.86" y2="5.08" width="0.127" layer="51"/>
<wire x1="-22.86" y1="5.08" x2="-22.86" y2="-20.32" width="0.127" layer="51"/>
<wire x1="-22.86" y1="-20.32" x2="-25.4" y2="-20.32" width="0.127" layer="51"/>
<wire x1="-25.4" y1="-20.32" x2="-25.4" y2="5.08" width="0.127" layer="51"/>
<wire x1="22.86" y1="-11.43" x2="25.4" y2="-11.43" width="0.127" layer="51"/>
<wire x1="25.4" y1="-11.43" x2="25.4" y2="8.89" width="0.127" layer="51"/>
<wire x1="25.4" y1="8.89" x2="22.86" y2="8.89" width="0.127" layer="51"/>
<wire x1="22.86" y1="8.89" x2="22.86" y2="-11.43" width="0.127" layer="51"/>
<wire x1="25.4" y1="11.43" x2="22.86" y2="11.43" width="0.127" layer="51"/>
<wire x1="22.86" y1="11.43" x2="22.86" y2="26.67" width="0.127" layer="51"/>
<wire x1="22.86" y1="26.67" x2="25.4" y2="26.67" width="0.127" layer="51"/>
<wire x1="25.4" y1="26.67" x2="25.4" y2="11.43" width="0.127" layer="51"/>
<pad name="RES" x="24.13" y="-5.08" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="24.13" y="-2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V" x="24.13" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="24.13" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="24.13" y="5.08" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="24.13" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="24.13" y="12.7" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="24.13" y="15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="24.13" y="17.78" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="24.13" y="20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="24.13" y="22.86" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="24.13" y="25.4" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RX" x="-24.13" y="25.4" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="TX" x="-24.13" y="22.86" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D2" x="-24.13" y="20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D3" x="-24.13" y="17.78" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D4" x="-24.13" y="15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D5" x="-24.13" y="12.7" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D6" x="-24.13" y="10.16" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D7" x="-24.13" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D8" x="-24.13" y="3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D9" x="-24.13" y="1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D10" x="-24.13" y="-1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D11" x="-24.13" y="-3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D12" x="-24.13" y="-6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D13" x="-24.13" y="-8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@2" x="-24.13" y="-11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-24.13" y="-13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="22.7457" y="3.048" size="1.016" layer="21" font="vector" ratio="15" rot="R180">GND</text>
<text x="22.7457" y="5.588" size="1.016" layer="21" font="vector" ratio="15" rot="R180">GND</text>
<text x="22.7457" y="0.508" size="1.016" layer="21" font="vector" ratio="15" rot="R180">+5V</text>
<text x="22.7457" y="-4.572" size="1.016" layer="21" font="vector" ratio="15" rot="R180">RST</text>
<text x="22.7457" y="8.128" size="1.016" layer="21" font="vector" ratio="15" rot="R180">VIN</text>
<text x="22.7457" y="-2.032" size="1.016" layer="21" font="vector" ratio="15" rot="R180">+3.3V</text>
<text x="22.7457" y="13.208" size="1.016" layer="21" font="vector" ratio="15" rot="R180">0</text>
<text x="22.7457" y="15.748" size="1.016" layer="21" font="vector" ratio="15" rot="R180">1</text>
<text x="22.7457" y="18.288" size="1.016" layer="21" font="vector" ratio="15" rot="R180">2</text>
<text x="22.7457" y="20.828" size="1.016" layer="21" font="vector" ratio="15" rot="R180">3</text>
<text x="22.7457" y="23.368" size="1.016" layer="21" font="vector" ratio="15" rot="R180">4</text>
<text x="22.7457" y="25.908" size="1.016" layer="21" font="vector" ratio="15" rot="R180">5</text>
<text x="-22.86" y="-11.938" size="1.016" layer="21" font="vector" ratio="15">GND</text>
<text x="-22.86" y="-9.398" size="1.016" layer="21" font="vector" ratio="15">13</text>
<text x="-22.86" y="-6.858" size="1.016" layer="21" font="vector" ratio="15">12</text>
<text x="-22.86" y="-4.318" size="1.016" layer="21" font="vector" ratio="15">11</text>
<text x="-22.86" y="-14.478" size="1.016" layer="21" font="vector" ratio="15">AREF</text>
<text x="-22.86" y="-1.778" size="1.016" layer="21" font="vector" ratio="15">10</text>
<text x="-22.86" y="0.762" size="1.016" layer="21" font="vector" ratio="15">9</text>
<text x="-22.86" y="3.302" size="1.016" layer="21" font="vector" ratio="15">8</text>
<text x="-22.86" y="7.112" size="1.016" layer="21" font="vector" ratio="15">7</text>
<text x="-22.86" y="9.652" size="1.016" layer="21" font="vector" ratio="15">6</text>
<text x="-22.86" y="12.192" size="1.016" layer="21" font="vector" ratio="15">5</text>
<text x="-22.86" y="14.732" size="1.016" layer="21" font="vector" ratio="15">4</text>
<text x="-22.86" y="17.272" size="1.016" layer="21" font="vector" ratio="15">3</text>
<text x="-22.86" y="19.812" size="1.016" layer="21" font="vector" ratio="15">2</text>
<text x="-22.86" y="22.352" size="1.016" layer="21" font="vector" ratio="15">TX</text>
<text x="-22.86" y="24.892" size="1.016" layer="21" font="vector" ratio="15">RX</text>
<pad name="SDA" x="-24.13" y="-16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="SCL" x="-24.13" y="-19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-22.86" y="-17.018" size="1.016" layer="21" font="vector" ratio="15">SDA</text>
<text x="-22.86" y="-19.558" size="1.016" layer="21" font="vector" ratio="15">SCL</text>
<pad name="IOREF" x="24.13" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="NC" x="24.13" y="-10.16" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="22.7457" y="-7.112" size="1.016" layer="21" font="vector" ratio="15" rot="R180">IOREF</text>
<wire x1="-4.445" y1="24.13" x2="-5.08" y2="24.765" width="0.254" layer="51"/>
<wire x1="-5.08" y1="24.765" x2="-5.08" y2="28.575" width="0.254" layer="51"/>
<wire x1="-5.08" y1="28.575" x2="-4.445" y2="29.21" width="0.254" layer="51"/>
<wire x1="-4.445" y1="29.21" x2="1.905" y2="29.21" width="0.254" layer="51"/>
<wire x1="1.905" y1="29.21" x2="2.54" y2="28.575" width="0.254" layer="51"/>
<wire x1="2.54" y1="28.575" x2="2.54" y2="24.765" width="0.254" layer="51"/>
<wire x1="2.54" y1="24.765" x2="1.905" y2="24.13" width="0.254" layer="51"/>
<wire x1="1.905" y1="24.13" x2="-4.445" y2="24.13" width="0.254" layer="51"/>
<text x="0.635" y="23.241" size="0.508" layer="51" font="vector" ratio="15">RST</text>
<text x="-1.778" y="26.416" size="0.508" layer="51" font="vector" ratio="15">ISP</text>
<wire x1="-3.175" y1="23.622" x2="-4.445" y2="23.622" width="0.2032" layer="51"/>
<text x="-12.065" y="-44.069" size="0.508" layer="51" font="vector" ratio="15">USB</text>
<text x="15.875" y="-38.989" size="0.508" layer="51" font="vector" ratio="15">POWER JACK</text>
<text x="0" y="30.734" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-29.718" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
</package>
<package name="UNO_R3_SHIELD_NOLABELS">
<description>&lt;h3&gt;Arduino Uno-Compatible Footprint&lt;/h3&gt;
No holes, no ICSP connections, no silk labels. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 32&lt;/li&gt;
&lt;li&gt;Pin pitch: 0.1"&lt;/li&gt;
&lt;li&gt;Area:2.1x2.35"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;Arduino Uno R3 Shield&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-24.13" y1="-30.48" x2="-17.17" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-30.48" x2="-4.97" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-30.48" x2="24.13" y2="-30.48" width="0.254" layer="51"/>
<wire x1="24.13" y1="-30.48" x2="26.67" y2="-27.94" width="0.254" layer="51"/>
<wire x1="26.67" y1="26.67" x2="24.13" y2="26.67" width="0.254" layer="51"/>
<wire x1="24.13" y1="26.67" x2="21.59" y2="29.21" width="0.254" layer="51"/>
<wire x1="-26.67" y1="25.4" x2="-26.67" y2="-27.94" width="0.254" layer="51"/>
<wire x1="-26.67" y1="-27.94" x2="-24.13" y2="-30.48" width="0.254" layer="51"/>
<wire x1="21.59" y1="29.21" x2="-11.43" y2="29.21" width="0.254" layer="51"/>
<wire x1="-11.43" y1="29.21" x2="-13.97" y2="26.67" width="0.254" layer="51"/>
<wire x1="-13.97" y1="26.67" x2="-25.4" y2="26.67" width="0.254" layer="51"/>
<wire x1="-25.4" y1="26.67" x2="-26.67" y2="25.4" width="0.254" layer="51"/>
<wire x1="26.67" y1="-27.94" x2="26.67" y2="26.67" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-45.98" x2="-4.97" y2="-45.98" width="0.254" layer="51"/>
<wire x1="13.53" y1="-40.78" x2="22.53" y2="-40.78" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-45.98" x2="-17.17" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-45.98" x2="-4.97" y2="-30.48" width="0.254" layer="51"/>
<wire x1="13.53" y1="-40.78" x2="13.53" y2="-30.58" width="0.254" layer="51"/>
<wire x1="22.53" y1="-40.78" x2="22.53" y2="-30.58" width="0.254" layer="51"/>
<wire x1="-25.4" y1="25.4" x2="-22.86" y2="25.4" width="0.127" layer="51"/>
<wire x1="-22.86" y1="25.4" x2="-22.86" y2="5.08" width="0.127" layer="51"/>
<wire x1="-22.86" y1="5.08" x2="-25.4" y2="5.08" width="0.127" layer="51"/>
<wire x1="-25.4" y1="5.08" x2="-25.4" y2="25.4" width="0.127" layer="51"/>
<wire x1="-25.4" y1="3.81" x2="-22.86" y2="3.81" width="0.127" layer="51"/>
<wire x1="-22.86" y1="3.81" x2="-22.86" y2="-21.59" width="0.127" layer="51"/>
<wire x1="-22.86" y1="-21.59" x2="-25.4" y2="-21.59" width="0.127" layer="51"/>
<wire x1="-25.4" y1="-21.59" x2="-25.4" y2="3.81" width="0.127" layer="51"/>
<wire x1="22.86" y1="-12.7" x2="25.4" y2="-12.7" width="0.127" layer="51"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="7.62" width="0.127" layer="51"/>
<wire x1="25.4" y1="7.62" x2="22.86" y2="7.62" width="0.127" layer="51"/>
<wire x1="25.4" y1="10.16" x2="22.86" y2="10.16" width="0.127" layer="51"/>
<wire x1="22.86" y1="10.16" x2="22.86" y2="25.4" width="0.127" layer="51"/>
<wire x1="22.86" y1="25.4" x2="25.4" y2="25.4" width="0.127" layer="51"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="10.16" width="0.127" layer="51"/>
<pad name="RES" x="24.13" y="-6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="24.13" y="-3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V" x="24.13" y="-1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="24.13" y="1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="24.13" y="3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="24.13" y="6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="24.13" y="11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="24.13" y="13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="24.13" y="16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="24.13" y="19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="24.13" y="21.59" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="24.13" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RX" x="-24.13" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="TX" x="-24.13" y="21.59" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D2" x="-24.13" y="19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D3" x="-24.13" y="16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D4" x="-24.13" y="13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D5" x="-24.13" y="11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D6" x="-24.13" y="8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D7" x="-24.13" y="6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D8" x="-24.13" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D9" x="-24.13" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D10" x="-24.13" y="-2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D11" x="-24.13" y="-5.08" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D12" x="-24.13" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D13" x="-24.13" y="-10.16" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@2" x="-24.13" y="-12.7" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-24.13" y="-15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="SDA" x="-24.13" y="-17.78" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="SCL" x="-24.13" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="IOREF" x="24.13" y="-8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="NC" x="24.13" y="-11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<wire x1="-4.445" y1="22.86" x2="-5.08" y2="23.495" width="0.254" layer="51"/>
<wire x1="-5.08" y1="23.495" x2="-5.08" y2="27.305" width="0.254" layer="51"/>
<wire x1="-5.08" y1="27.305" x2="-4.445" y2="27.94" width="0.254" layer="51"/>
<wire x1="-4.445" y1="27.94" x2="1.905" y2="27.94" width="0.254" layer="51"/>
<wire x1="1.905" y1="27.94" x2="2.54" y2="27.305" width="0.254" layer="51"/>
<wire x1="2.54" y1="27.305" x2="2.54" y2="23.495" width="0.254" layer="51"/>
<wire x1="2.54" y1="23.495" x2="1.905" y2="22.86" width="0.254" layer="51"/>
<wire x1="1.905" y1="22.86" x2="-4.445" y2="22.86" width="0.254" layer="51"/>
<text x="0.635" y="21.971" size="0.508" layer="51" font="vector" ratio="15">RST</text>
<text x="-1.778" y="25.146" size="0.508" layer="51" ratio="15">ISP</text>
<wire x1="-3.175" y1="22.352" x2="-4.445" y2="22.352" width="0.2032" layer="51"/>
<wire x1="22.86" y1="7.62" x2="22.86" y2="-12.7" width="0.127" layer="51"/>
<text x="0" y="29.464" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-30.734" size="0.6096" layer="25" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<text x="-11.43" y="-44.45" size="0.8128" layer="51" font="vector" ratio="20" align="top-center">USB</text>
<text x="17.78" y="-39.37" size="0.8128" layer="51" font="vector" ratio="20" align="top-center">PWR JACK</text>
</package>
<package name="UNO_R3_SHIELD_LOCK">
<description>&lt;h3&gt;Arduino Uno-Compatible Footprint&lt;/h3&gt;
No holes, no ICSP connections.
Locking footprint for headers.
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 32&lt;/li&gt;
&lt;li&gt;Pin pitch: 0.1"&lt;/li&gt;
&lt;li&gt;Area:2.1x2.35"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;Arduino Uno R3 Shield&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-24.13" y1="-30.48" x2="-17.17" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-30.48" x2="-4.97" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-30.48" x2="24.13" y2="-30.48" width="0.254" layer="51"/>
<wire x1="24.13" y1="-30.48" x2="26.67" y2="-27.94" width="0.254" layer="51"/>
<wire x1="26.67" y1="26.67" x2="24.13" y2="26.67" width="0.254" layer="51"/>
<wire x1="24.13" y1="26.67" x2="21.59" y2="29.21" width="0.254" layer="51"/>
<wire x1="-26.67" y1="25.4" x2="-26.67" y2="-27.94" width="0.254" layer="51"/>
<wire x1="-26.67" y1="-27.94" x2="-24.13" y2="-30.48" width="0.254" layer="51"/>
<wire x1="21.59" y1="29.21" x2="-11.43" y2="29.21" width="0.254" layer="51"/>
<wire x1="-11.43" y1="29.21" x2="-13.97" y2="26.67" width="0.254" layer="51"/>
<wire x1="-13.97" y1="26.67" x2="-25.4" y2="26.67" width="0.254" layer="51"/>
<wire x1="-25.4" y1="26.67" x2="-26.67" y2="25.4" width="0.254" layer="51"/>
<wire x1="26.67" y1="-27.94" x2="26.67" y2="26.67" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-45.98" x2="-4.97" y2="-45.98" width="0.254" layer="51"/>
<wire x1="13.53" y1="-40.78" x2="22.53" y2="-40.78" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-45.98" x2="-17.17" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-45.98" x2="-4.97" y2="-30.48" width="0.254" layer="51"/>
<wire x1="13.53" y1="-40.78" x2="13.53" y2="-30.58" width="0.254" layer="51"/>
<wire x1="22.53" y1="-40.78" x2="22.53" y2="-30.58" width="0.254" layer="51"/>
<wire x1="-25.4" y1="25.4" x2="-22.86" y2="25.4" width="0.127" layer="51"/>
<wire x1="-22.86" y1="25.4" x2="-22.86" y2="5.08" width="0.127" layer="51"/>
<wire x1="-22.86" y1="5.08" x2="-25.4" y2="5.08" width="0.127" layer="51"/>
<wire x1="-25.4" y1="5.08" x2="-25.4" y2="25.4" width="0.127" layer="51"/>
<wire x1="-25.4" y1="3.81" x2="-22.86" y2="3.81" width="0.127" layer="51"/>
<wire x1="-22.86" y1="3.81" x2="-22.86" y2="-21.59" width="0.127" layer="51"/>
<wire x1="-22.86" y1="-21.59" x2="-25.4" y2="-21.59" width="0.127" layer="51"/>
<wire x1="-25.4" y1="-21.59" x2="-25.4" y2="3.81" width="0.127" layer="51"/>
<wire x1="22.86" y1="-12.7" x2="25.4" y2="-12.7" width="0.127" layer="51"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="7.62" width="0.127" layer="51"/>
<wire x1="25.4" y1="7.62" x2="22.86" y2="7.62" width="0.127" layer="51"/>
<wire x1="22.86" y1="7.62" x2="22.86" y2="-12.7" width="0.127" layer="51"/>
<wire x1="25.4" y1="10.16" x2="22.86" y2="10.16" width="0.127" layer="51"/>
<wire x1="22.86" y1="10.16" x2="22.86" y2="25.4" width="0.127" layer="51"/>
<wire x1="22.86" y1="25.4" x2="25.4" y2="25.4" width="0.127" layer="51"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="10.16" width="0.127" layer="51"/>
<pad name="RES" x="24.384" y="-6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="24.13" y="-3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V" x="24.384" y="-1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="24.13" y="1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="24.384" y="3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="24.13" y="6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="24.384" y="11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="24.13" y="13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="24.384" y="16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="24.13" y="19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="24.384" y="21.59" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="24.13" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RX" x="-24.13" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="TX" x="-24.384" y="21.59" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D2" x="-24.13" y="19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D3" x="-24.384" y="16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D4" x="-24.13" y="13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D5" x="-24.384" y="11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D6" x="-24.13" y="8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D7" x="-24.384" y="6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D8" x="-24.13" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D9" x="-24.384" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D10" x="-24.13" y="-2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D11" x="-24.384" y="-5.08" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D12" x="-24.13" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D13" x="-24.384" y="-10.16" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@2" x="-24.13" y="-12.7" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-24.384" y="-15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="22.7457" y="1.778" size="1.016" layer="21" font="vector" ratio="15" rot="R180">GND</text>
<text x="22.7457" y="4.318" size="1.016" layer="21" font="vector" ratio="15" rot="R180">GND</text>
<text x="22.7457" y="-0.762" size="1.016" layer="21" font="vector" ratio="15" rot="R180">+5V</text>
<text x="22.7457" y="-5.842" size="1.016" layer="21" font="vector" ratio="15" rot="R180">RST</text>
<text x="22.7457" y="6.858" size="1.016" layer="21" font="vector" ratio="15" rot="R180">VIN</text>
<text x="22.7457" y="-3.302" size="1.016" layer="21" font="vector" ratio="15" rot="R180">+3.3V</text>
<text x="22.7457" y="11.938" size="1.016" layer="21" font="vector" ratio="15" rot="R180">0</text>
<text x="22.7457" y="14.478" size="1.016" layer="21" font="vector" ratio="15" rot="R180">1</text>
<text x="22.7457" y="17.018" size="1.016" layer="21" font="vector" ratio="15" rot="R180">2</text>
<text x="22.7457" y="19.558" size="1.016" layer="21" font="vector" ratio="15" rot="R180">3</text>
<text x="22.7457" y="22.098" size="1.016" layer="21" font="vector" ratio="15" rot="R180">4</text>
<text x="22.7457" y="24.638" size="1.016" layer="21" font="vector" ratio="15" rot="R180">5</text>
<text x="20.2057" y="21.717" size="1.016" layer="21" font="vector" ratio="15" rot="R270">Analog In</text>
<text x="-22.86" y="-13.208" size="1.016" layer="21" font="vector" ratio="15">GND</text>
<text x="-22.86" y="-10.668" size="1.016" layer="21" font="vector" ratio="15">13</text>
<text x="-22.86" y="-8.128" size="1.016" layer="21" font="vector" ratio="15">12</text>
<text x="-22.86" y="-5.588" size="1.016" layer="21" font="vector" ratio="15">11</text>
<text x="-22.86" y="-15.748" size="1.016" layer="21" font="vector" ratio="15">AREF</text>
<text x="-22.86" y="-3.048" size="1.016" layer="21" font="vector" ratio="15">10</text>
<text x="-22.86" y="-0.508" size="1.016" layer="21" font="vector" ratio="15">9</text>
<text x="-22.86" y="2.032" size="1.016" layer="21" font="vector" ratio="15">8</text>
<text x="-22.86" y="5.842" size="1.016" layer="21" font="vector" ratio="15">7</text>
<text x="-22.86" y="8.382" size="1.016" layer="21" font="vector" ratio="15">6</text>
<text x="-22.86" y="10.922" size="1.016" layer="21" font="vector" ratio="15">5</text>
<text x="-22.86" y="13.462" size="1.016" layer="21" font="vector" ratio="15">4</text>
<text x="-22.86" y="16.002" size="1.016" layer="21" font="vector" ratio="15">3</text>
<text x="-22.86" y="18.542" size="1.016" layer="21" font="vector" ratio="15">2</text>
<text x="-22.86" y="21.082" size="1.016" layer="21" font="vector" ratio="15">TX</text>
<text x="-22.86" y="23.622" size="1.016" layer="21" font="vector" ratio="15">RX</text>
<pad name="SDA" x="-24.13" y="-17.78" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="SCL" x="-24.13" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-22.86" y="-18.288" size="1.016" layer="21" font="vector" ratio="15">SDA</text>
<text x="-22.86" y="-20.828" size="1.016" layer="21" font="vector" ratio="15">SCL</text>
<pad name="IOREF" x="24.13" y="-8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="NC" x="24.384" y="-11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="22.7457" y="-8.382" size="1.016" layer="21" font="vector" ratio="15" rot="R180">IOREF</text>
<wire x1="-4.445" y1="22.86" x2="-5.08" y2="23.495" width="0.254" layer="51"/>
<wire x1="-5.08" y1="23.495" x2="-5.08" y2="27.305" width="0.254" layer="51"/>
<wire x1="-5.08" y1="27.305" x2="-4.445" y2="27.94" width="0.254" layer="51"/>
<wire x1="-4.445" y1="27.94" x2="1.905" y2="27.94" width="0.254" layer="51"/>
<wire x1="1.905" y1="27.94" x2="2.54" y2="27.305" width="0.254" layer="51"/>
<wire x1="2.54" y1="27.305" x2="2.54" y2="23.495" width="0.254" layer="51"/>
<wire x1="2.54" y1="23.495" x2="1.905" y2="22.86" width="0.254" layer="51"/>
<wire x1="1.905" y1="22.86" x2="-4.445" y2="22.86" width="0.254" layer="51"/>
<text x="0.635" y="21.971" size="0.508" layer="51" font="vector" ratio="15">RST</text>
<text x="-1.778" y="25.146" size="0.508" layer="51" font="vector" ratio="15">ISP</text>
<wire x1="-3.175" y1="22.352" x2="-4.445" y2="22.352" width="0.2032" layer="51"/>
<text x="-1.27" y="29.464" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-30.988" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<text x="-11.43" y="-44.45" size="1.016" layer="51" font="vector" ratio="20" align="top-center">USB</text>
<text x="17.78" y="-39.37" size="1.016" layer="51" font="vector" ratio="20" align="top-center">PWR JACK</text>
</package>
<package name="UNO_R3_SHIELD_NOLABELS_LOCK">
<description>&lt;h3&gt;Arduino Uno-Compatible Footprint&lt;/h3&gt;
No holes, no ICSP connections, no silk labels.
Looking footprint for headers.
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 32&lt;/li&gt;
&lt;li&gt;Pin pitch: 0.1"&lt;/li&gt;
&lt;li&gt;Area:2.1x2.35"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;Arduino Uno R3 Shield&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-24.13" y1="-30.48" x2="-17.17" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-30.48" x2="-4.97" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-30.48" x2="24.13" y2="-30.48" width="0.254" layer="51"/>
<wire x1="24.13" y1="-30.48" x2="26.67" y2="-27.94" width="0.254" layer="51"/>
<wire x1="26.67" y1="26.67" x2="24.13" y2="26.67" width="0.254" layer="51"/>
<wire x1="24.13" y1="26.67" x2="21.59" y2="29.21" width="0.254" layer="51"/>
<wire x1="-26.67" y1="25.4" x2="-26.67" y2="-27.94" width="0.254" layer="51"/>
<wire x1="-26.67" y1="-27.94" x2="-24.13" y2="-30.48" width="0.254" layer="51"/>
<wire x1="21.59" y1="29.21" x2="-11.43" y2="29.21" width="0.254" layer="51"/>
<wire x1="-11.43" y1="29.21" x2="-13.97" y2="26.67" width="0.254" layer="51"/>
<wire x1="-13.97" y1="26.67" x2="-25.4" y2="26.67" width="0.254" layer="51"/>
<wire x1="-25.4" y1="26.67" x2="-26.67" y2="25.4" width="0.254" layer="51"/>
<wire x1="26.67" y1="-27.94" x2="26.67" y2="26.67" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-45.98" x2="-4.97" y2="-45.98" width="0.254" layer="51"/>
<wire x1="13.53" y1="-40.78" x2="22.53" y2="-40.78" width="0.254" layer="51"/>
<wire x1="-17.17" y1="-45.98" x2="-17.17" y2="-30.48" width="0.254" layer="51"/>
<wire x1="-4.97" y1="-45.98" x2="-4.97" y2="-30.48" width="0.254" layer="51"/>
<wire x1="13.53" y1="-40.78" x2="13.53" y2="-30.58" width="0.254" layer="51"/>
<wire x1="22.53" y1="-40.78" x2="22.53" y2="-30.58" width="0.254" layer="51"/>
<wire x1="-25.4" y1="25.4" x2="-22.86" y2="25.4" width="0.127" layer="51"/>
<wire x1="-22.86" y1="25.4" x2="-22.86" y2="5.08" width="0.127" layer="51"/>
<wire x1="-22.86" y1="5.08" x2="-25.4" y2="5.08" width="0.127" layer="51"/>
<wire x1="-25.4" y1="5.08" x2="-25.4" y2="25.4" width="0.127" layer="51"/>
<wire x1="-25.4" y1="3.81" x2="-22.86" y2="3.81" width="0.127" layer="51"/>
<wire x1="-22.86" y1="3.81" x2="-22.86" y2="-21.59" width="0.127" layer="51"/>
<wire x1="-22.86" y1="-21.59" x2="-25.4" y2="-21.59" width="0.127" layer="51"/>
<wire x1="-25.4" y1="-21.59" x2="-25.4" y2="3.81" width="0.127" layer="51"/>
<wire x1="22.86" y1="-12.7" x2="25.4" y2="-12.7" width="0.127" layer="51"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="7.62" width="0.127" layer="51"/>
<wire x1="25.4" y1="7.62" x2="22.86" y2="7.62" width="0.127" layer="51"/>
<wire x1="22.86" y1="7.62" x2="22.86" y2="-12.7" width="0.127" layer="51"/>
<wire x1="25.4" y1="10.16" x2="22.86" y2="10.16" width="0.127" layer="51"/>
<wire x1="22.86" y1="10.16" x2="22.86" y2="25.4" width="0.127" layer="51"/>
<wire x1="22.86" y1="25.4" x2="25.4" y2="25.4" width="0.127" layer="51"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="10.16" width="0.127" layer="51"/>
<pad name="RES" x="24.384" y="-6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="24.13" y="-3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V" x="24.384" y="-1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="24.13" y="1.27" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="24.384" y="3.81" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="24.13" y="6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="24.384" y="11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="24.13" y="13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="24.384" y="16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="24.13" y="19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="24.384" y="21.59" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="24.13" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RX" x="-24.13" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="TX" x="-24.384" y="21.59" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D2" x="-24.13" y="19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D3" x="-24.384" y="16.51" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D4" x="-24.13" y="13.97" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D5" x="-24.384" y="11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D6" x="-24.13" y="8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D7" x="-24.384" y="6.35" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D8" x="-24.13" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D9" x="-24.384" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D10" x="-24.13" y="-2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D11" x="-24.384" y="-5.08" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D12" x="-24.13" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D13" x="-24.384" y="-10.16" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@2" x="-24.13" y="-12.7" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-24.384" y="-15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="SDA" x="-24.13" y="-17.78" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="SCL" x="-24.13" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="IOREF" x="24.13" y="-8.89" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="NC" x="24.384" y="-11.43" drill="1.016" diameter="1.8796" rot="R90"/>
<wire x1="-4.445" y1="22.86" x2="-5.08" y2="23.495" width="0.254" layer="51"/>
<wire x1="-5.08" y1="23.495" x2="-5.08" y2="27.305" width="0.254" layer="51"/>
<wire x1="-5.08" y1="27.305" x2="-4.445" y2="27.94" width="0.254" layer="51"/>
<wire x1="-4.445" y1="27.94" x2="1.905" y2="27.94" width="0.254" layer="51"/>
<wire x1="1.905" y1="27.94" x2="2.54" y2="27.305" width="0.254" layer="51"/>
<wire x1="2.54" y1="27.305" x2="2.54" y2="23.495" width="0.254" layer="51"/>
<wire x1="2.54" y1="23.495" x2="1.905" y2="22.86" width="0.254" layer="51"/>
<wire x1="1.905" y1="22.86" x2="-4.445" y2="22.86" width="0.254" layer="51"/>
<text x="0.635" y="21.971" size="0.508" layer="51" font="vector" ratio="15">RST</text>
<text x="-1.778" y="25.146" size="0.508" layer="51" font="vector" ratio="15">ISP</text>
<wire x1="-3.175" y1="22.352" x2="-4.445" y2="22.352" width="0.2032" layer="51"/>
<text x="-1.27" y="29.464" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-30.734" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<text x="-11.43" y="-44.45" size="0.8128" layer="51" font="vector" ratio="20" align="top-center">USB</text>
<text x="17.78" y="-39.37" size="0.8128" layer="51" font="vector" ratio="20" align="top-center">PWR JACK</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_R3_SHIELD">
<description>&lt;h3&gt;Arduino Uno R3-No ICSP&lt;/h3&gt;
&lt;p&gt;Symbol showing all standard pins on Arduino Uno R3 footprint (no ICSP pins)&lt;/p&gt;</description>
<wire x1="-10.16" y1="-25.4" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="-25.4" width="0.254" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="-10.16" y2="-25.4" width="0.254" layer="94"/>
<text x="-9.652" y="20.574" size="1.778" layer="95" font="vector">&gt;Name</text>
<text x="-8.89" y="-25.654" size="1.778" layer="96" font="vector" align="top-left">&gt;Value</text>
<pin name="RX" x="12.7" y="17.78" visible="pin" length="short" rot="R180"/>
<pin name="TX" x="12.7" y="15.24" visible="pin" length="short" rot="R180"/>
<pin name="D2" x="12.7" y="10.16" visible="pin" length="short" rot="R180"/>
<pin name="*D3" x="12.7" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="D4" x="12.7" y="5.08" visible="pin" length="short" rot="R180"/>
<pin name="*D5" x="12.7" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="*D6" x="12.7" y="0" visible="pin" length="short" rot="R180"/>
<pin name="D7" x="12.7" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="D8" x="12.7" y="-5.08" visible="pin" length="short" rot="R180"/>
<pin name="*D9" x="12.7" y="-7.62" visible="pin" length="short" rot="R180"/>
<pin name="*D10" x="12.7" y="-10.16" visible="pin" length="short" rot="R180"/>
<pin name="*D11" x="12.7" y="-12.7" visible="pin" length="short" rot="R180"/>
<pin name="D12" x="12.7" y="-15.24" visible="pin" length="short" rot="R180"/>
<pin name="D13" x="12.7" y="-17.78" visible="pin" length="short" rot="R180"/>
<pin name="A0" x="-12.7" y="17.78" visible="pin" length="short"/>
<pin name="A1" x="-12.7" y="15.24" visible="pin" length="short"/>
<pin name="A2" x="-12.7" y="12.7" visible="pin" length="short"/>
<pin name="A3" x="-12.7" y="10.16" visible="pin" length="short"/>
<pin name="A4" x="-12.7" y="7.62" visible="pin" length="short"/>
<pin name="A5" x="-12.7" y="5.08" visible="pin" length="short"/>
<pin name="VIN" x="-12.7" y="-7.62" visible="pin" length="short"/>
<pin name="RES" x="-12.7" y="-5.08" visible="pin" length="short"/>
<pin name="5V" x="-12.7" y="-10.16" visible="pin" length="short"/>
<pin name="AREF" x="-12.7" y="-15.24" visible="pin" length="short"/>
<pin name="GND@2" x="-12.7" y="-17.78" visible="pin" length="short"/>
<pin name="GND@1" x="-12.7" y="-20.32" visible="pin" length="short"/>
<pin name="GND@0" x="-12.7" y="-22.86" visible="pin" length="short"/>
<pin name="3.3V" x="-12.7" y="-12.7" visible="pin" length="short"/>
<pin name="IOREF" x="-12.7" y="-2.54" visible="pin" length="short"/>
<pin name="SDA" x="12.7" y="-20.32" visible="pin" length="short" rot="R180"/>
<pin name="SCL" x="12.7" y="-22.86" visible="pin" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_UNO_R3_SHIELD" prefix="B">
<description>&lt;h3&gt;Arduino R3 Shield Footprint&lt;/h3&gt;

Shield form compatible with the Arduino Uno R3.

&lt;p&gt;SparkFun Products:
&lt;ul&gt;&lt;li&gt;&lt;a href=https://www.sparkfun.com/products/13120&gt;MG2639 Cellular Shield&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=https://www.sparkfun.com/products/12898&gt;MIDI Shield&lt;/a&gt;
&lt;li&gt;&lt;a href=https://www.sparkfun.com/products/11417&gt;R3 Stackable Headers Kit&lt;/a&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="ARDUINO_R3_SHIELD" x="0" y="0"/>
</gates>
<devices>
<device name="BASIC" package="UNO_R3_SHIELD">
<connects>
<connect gate="G$1" pin="*D10" pad="D10"/>
<connect gate="G$1" pin="*D11" pad="D11"/>
<connect gate="G$1" pin="*D3" pad="D3"/>
<connect gate="G$1" pin="*D5" pad="D5"/>
<connect gate="G$1" pin="*D6" pad="D6"/>
<connect gate="G$1" pin="*D9" pad="D9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="IOREF" pad="IOREF"/>
<connect gate="G$1" pin="RES" pad="RES"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NOLABELS" package="UNO_R3_SHIELD_NOLABELS">
<connects>
<connect gate="G$1" pin="*D10" pad="D10"/>
<connect gate="G$1" pin="*D11" pad="D11"/>
<connect gate="G$1" pin="*D3" pad="D3"/>
<connect gate="G$1" pin="*D5" pad="D5"/>
<connect gate="G$1" pin="*D6" pad="D6"/>
<connect gate="G$1" pin="*D9" pad="D9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="IOREF" pad="IOREF"/>
<connect gate="G$1" pin="RES" pad="RES"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="UNO_R3_SHIELD_LOCK" package="UNO_R3_SHIELD_LOCK">
<connects>
<connect gate="G$1" pin="*D10" pad="D10"/>
<connect gate="G$1" pin="*D11" pad="D11"/>
<connect gate="G$1" pin="*D3" pad="D3"/>
<connect gate="G$1" pin="*D5" pad="D5"/>
<connect gate="G$1" pin="*D6" pad="D6"/>
<connect gate="G$1" pin="*D9" pad="D9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="IOREF" pad="IOREF"/>
<connect gate="G$1" pin="RES" pad="RES"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="UNO_R3_SHIELD_NOLABELS_LOCK" package="UNO_R3_SHIELD_NOLABELS_LOCK">
<connects>
<connect gate="G$1" pin="*D10" pad="D10"/>
<connect gate="G$1" pin="*D11" pad="D11"/>
<connect gate="G$1" pin="*D3" pad="D3"/>
<connect gate="G$1" pin="*D5" pad="D5"/>
<connect gate="G$1" pin="*D6" pad="D6"/>
<connect gate="G$1" pin="*D9" pad="D9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="IOREF" pad="IOREF"/>
<connect gate="G$1" pin="RES" pad="RES"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Connectors&lt;/h3&gt;
This library contains electrically-functional connectors. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X04">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_NO_SILK">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="MOLEX-1X3">
<description>&lt;h3&gt;PTH - 3 Pin Vertical Molex Polarized Header&lt;/h3&gt;
&lt;p&gt;&lt;b&gt;Datasheet referenced for footprint:&lt;/b&gt;&lt;a href="http://www.4uconnector.com/online/object/4udrawing/01932.pdf"&gt; 4UCONN part # 01932 &lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
<text x="1.143" y="2.159" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="0.889" y="1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-3">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch -3 Pin PTH&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 3&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.75" y1="3.4" x2="8.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="3.4" x2="8.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="8.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.75" y1="3.15" x2="9.25" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="3.15" x2="9.25" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="2.15" x2="8.75" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.413" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.413"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.413"/>
<text x="2.159" y="3.683" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="2.032" y="-4.572" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_LOCK">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin Locking Footprint&lt;/h3&gt;
Pins are staggered 0.005" off center to lock pins while soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_LOCK_LONGPADS">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin Long Pad w/ Locking Footprint&lt;/h3&gt;
Holes are offset 0.005" from center to lock pins in place while soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.35" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-1.1176" x2="6.0706" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.35" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.8636" x2="6.0706" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
<text x="-1.27" y="1.778" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="MOLEX-1X3_LOCK">
<description>&lt;h3&gt;PTH - 3 Pin Vertical Molex Polarized Header&lt;/h3&gt;
Pins are offset 0.005" from center to lock pins in place during soldering. 
&lt;p&gt;&lt;b&gt;Datasheet referenced for footprint:&lt;/b&gt;&lt;a href="http://www.4uconnector.com/online/object/4udrawing/01932.pdf"&gt; 4UCONN part # 01932 &lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<rectangle x1="4.7879" y1="-0.2921" x2="5.3721" y2="0.2921" layer="51"/>
<text x="1.143" y="3.429" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="0.889" y="-2.794" size="0.6096" layer="27" font="vector" ratio="20" align="top-left">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-3_LOCK.007S">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch -3 Pin PTH Locking&lt;/h3&gt;
Holes are offset 0.007" from center to hold pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 3&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.75" y1="3.4" x2="8.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="3.4" x2="8.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="8.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.75" y1="3.15" x2="9.25" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="3.15" x2="9.25" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="2.15" x2="8.75" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7.1778" y="0" drill="1.2" diameter="2.032"/>
<text x="2.032" y="3.683" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="1.905" y="-4.699" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_NO_SILK">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_LONGPADS">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin Long Pads&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="2.032" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.667" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-3-PTH">
<description>&lt;h3&gt;JST 3 Pin Right Angle Plated Through Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/ePH.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.95" y1="-1.6" x2="-3.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="6" x2="3.95" y2="6" width="0.2032" layer="21"/>
<wire x1="3.95" y1="6" x2="3.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="-1.6" x2="-3.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="3.95" y1="-1.6" x2="3.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-1.6" x2="-3.3" y2="0" width="0.2032" layer="21"/>
<wire x1="3.3" y1="-1.6" x2="3.3" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="0" drill="0.7" diameter="1.6"/>
<text x="-2.4" y="0.67" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.67" size="1.27" layer="51">-</text>
<text x="1.7" y="0.87" size="0.8" layer="51">S</text>
<text x="-1.397" y="3.429" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="2.54" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_PP_HOLES_ONLY">
<description>&lt;h3&gt;Pogo Pins - 3 Pin&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="5.08" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
<hole x="5.08" y="0" drill="1.4732"/>
<text x="-1.27" y="1.143" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-1.778" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-5MM-3">
<description>&lt;h3&gt;Screw Terminal  5mm Pitch -3 Pin PTH&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 3&lt;/li&gt;
&lt;li&gt;Pin pitch: 5mm/197mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.1" y1="4.2" x2="13.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.1" y1="4.2" x2="13.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-2.3" x2="13.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="13.1" y1="4" x2="13.7" y2="4" width="0.2032" layer="51"/>
<wire x1="13.7" y1="4" x2="13.7" y2="3" width="0.2032" layer="51"/>
<wire x1="13.7" y1="3" x2="13.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.413" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.413"/>
<pad name="3" x="10" y="0" drill="1.3" diameter="2.413"/>
<text x="3.683" y="2.794" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="3.429" y="1.905" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_LOCK_NO_SILK">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin Locking Footprint w/out Silk Outline&lt;/h3&gt;
Holes are offset from center 0.005" to lock pins in place while soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-3-SMD">
<description>&lt;h3&gt;JST 3 Pin Right Angle SMT&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-4.99" y1="-2.07" x2="-4.99" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="-4.99" y1="-5.57" x2="-4.19" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="-4.19" y1="-5.57" x2="-4.19" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="-4.19" y1="-3.07" x2="-2.99" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="3.01" y1="-3.07" x2="4.21" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="4.21" y1="-3.07" x2="4.21" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="4.21" y1="-5.57" x2="5.01" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="5.01" y1="-5.57" x2="5.01" y2="-2.07" width="0.2032" layer="21"/>
<wire x1="3.01" y1="1.93" x2="-2.99" y2="1.93" width="0.2032" layer="21"/>
<smd name="1" x="-1.99" y="-4.77" dx="1" dy="4.6" layer="1"/>
<smd name="3" x="2.01" y="-4.77" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-4.39" y="0.43" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="4.41" y="0.43" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="2" x="0.01" y="-4.77" dx="1" dy="4.6" layer="1"/>
<text x="-1.397" y="0.635" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03-1MM-RA">
<description>&lt;h3&gt;Plated Through Hole - 3 Pin SMD&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1" y1="-4.6" x2="1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-0.35" width="0.254" layer="21"/>
<wire x1="1.75" y1="-0.35" x2="2.4997" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.4997" y1="-0.35" x2="2.4997" y2="-2" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-0.35" x2="-1.75" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="0" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="1" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.397" y="-1.651" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-2.54" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_SMD_RA_FEMALE">
<description>&lt;h3&gt;SMD - 3 Pin Right Angle Female Header&lt;/h3&gt;
Silk outline of pin location
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.935" y1="4.25" x2="-3.935" y2="-4.25" width="0.1778" layer="21"/>
<wire x1="3.935" y1="4.25" x2="-3.935" y2="4.25" width="0.1778" layer="21"/>
<wire x1="3.935" y1="-4.25" x2="3.935" y2="4.25" width="0.1778" layer="21"/>
<wire x1="-3.935" y1="-4.25" x2="3.935" y2="-4.25" width="0.1778" layer="21"/>
<rectangle x1="-0.32" y1="6.8" x2="0.32" y2="7.65" layer="51"/>
<rectangle x1="2.22" y1="6.8" x2="2.86" y2="7.65" layer="51"/>
<rectangle x1="-2.86" y1="6.8" x2="-2.22" y2="7.65" layer="51"/>
<smd name="3" x="2.54" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="2" x="0" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="1" x="-2.54" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<text x="-1.524" y="0.889" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_SMD_RA_MALE">
<description>&lt;h3&gt;SMD- 3 Pin Right Angle Male Headers&lt;/h3&gt;
No silk outline, but tDocu layer shows pin location. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<text x="-1.524" y="0.254" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-0.889" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_SMD_RA_MALE_POST">
<description>&lt;h3&gt;SMD - 3 Pin Right Angle Male Header w/ Alignment Posts&lt;/h3&gt;
&lt;p&gt;&lt;b&gt;Datasheet referenced for footprint:&lt;/b&gt;&lt;a href="http://www.4uconnector.com/online/object/4udrawing/11026.pdf"&gt; 4UCONN part # 11026 &lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.6"/>
<hole x="1.27" y="0" drill="1.6"/>
<text x="-1.397" y="1.524" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-2.286" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-3-PTH-VERT">
<description>&lt;h3&gt;JST 3 Pin Vertical Plated Through Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/ePH.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.95" y1="-2.25" x2="-3.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="2.25" x2="3.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="3.95" y1="2.25" x2="3.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="3.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-3.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-2.4" y="0.75" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.75" size="1.27" layer="51">-</text>
<text x="1.7" y="0.95" size="0.8" layer="51">S</text>
<text x="-1.397" y="2.54" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-3.302" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X03_SMD_RA_MALE_POST_SMALLER">
<description>&lt;h3&gt;SMD - 3 Pin Right Angle Male Header w/ Alignment Posts&lt;/h3&gt;
&lt;p&gt;&lt;b&gt;Datasheet referenced for footprint:&lt;/b&gt;&lt;a href="http://www.4uconnector.com/online/object/4udrawing/11026.pdf"&gt; 4UCONN part # 11026 &lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.3589"/>
<hole x="1.27" y="0" drill="1.3589"/>
</package>
<package name="1X03_SMD_RA_MALE_POST_SMALLEST">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.3462"/>
<hole x="1.27" y="0" drill="1.3462"/>
</package>
<package name="JST-3-PTH-NS">
<description>&lt;h3&gt;JST 3 Pin Right Angle Plated Through Hole &amp;ndash; NO SILK&lt;/h3&gt;
&lt;p&gt;No silkscreen outline. tDoc layer (51) indicates connector footprint.&lt;/p&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:3&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/ePH.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.95" y1="-1.6" x2="-3.95" y2="6" width="0.2032" layer="51"/>
<wire x1="-3.95" y1="6" x2="3.95" y2="6" width="0.2032" layer="51"/>
<wire x1="3.95" y1="6" x2="3.95" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-3.95" y1="-1.6" x2="-3.3" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="3.95" y1="-1.6" x2="3.3" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="-1.6" x2="-3.3" y2="0" width="0.2032" layer="51"/>
<wire x1="3.3" y1="-1.6" x2="3.3" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-2" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="0" drill="0.7" diameter="1.6"/>
<text x="-2.4" y="0.67" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.67" size="1.27" layer="51">-</text>
<text x="1.7" y="0.87" size="0.8" layer="51">S</text>
<text x="-1.397" y="3.429" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="2.54" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-3-NS">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch -3 Pin PTH &amp;ndash; NO SILK&lt;/h3&gt;
&lt;p&gt;No silkscreen outline. tDoc layer (51) indicates connector footprint.&lt;/p&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 3&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.75" y1="3.4" x2="8.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="8.75" y1="3.4" x2="8.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="8.75" y1="-2.8" x2="8.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="8.75" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="8.75" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.75" y1="3.15" x2="9.25" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="3.15" x2="9.25" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="2.15" x2="8.75" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.413"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.413"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.413"/>
<text x="2.159" y="3.683" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="2.032" y="-4.572" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="I2C_STANDARD">
<description>&lt;h3&gt;SparkFun I&lt;sup&gt;2&lt;/sup&gt;C Standard Pinout Header&lt;/h3&gt;
&lt;p&gt;SparkFun has standardized on a pinout for all I&lt;sup&gt;2&lt;/sup&gt;C based sensor breakouts.&lt;br&gt;</description>
<wire x1="3.81" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<text x="-5.08" y="-5.334" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
<text x="-5.08" y="7.874" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pwr" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pwr" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<text x="-4.572" y="2.54" size="1.778" layer="94" font="vector" align="center-left">SDA</text>
<text x="-4.572" y="0" size="1.778" layer="94" font="vector" align="center-left">VCC</text>
<text x="-4.572" y="-2.54" size="1.778" layer="94" font="vector" align="center-left">GND</text>
<text x="-4.572" y="5.08" size="1.778" layer="94" font="vector" align="center-left">SCL</text>
</symbol>
<symbol name="CONN_03">
<description>&lt;h3&gt;3 Pin Connection&lt;/h3&gt;</description>
<wire x1="3.81" y1="-5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-7.366" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<text x="-2.54" y="5.588" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="I2C_STANDARD" prefix="J" uservalue="yes">
<description>&lt;h3&gt;SparkFun I&lt;sup&gt;2&lt;/sup&gt;C Standard Pinout Header&lt;/h3&gt;
&lt;p&gt;SparkFun has standardized on a pinout for all I&lt;sup&gt;2&lt;/sup&gt;C based sensor breakouts.&lt;br&gt;
&lt;br&gt;
This pinout allows I&lt;sup&gt;2&lt;/sup&gt;C boards to be plugged directly into the headers on Arduino Uno compatible boards, and
to be daisy chained easily.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Example SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13676"&gt;SparkFun Atmospheric Sensor Breakout - BME280&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/11084”&gt;SparkFun Altitude/Pressure Sensor Breakout - MPL3115A2&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12785”&gt;SparkFun TOF Range Finder Sensor - VL6180&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="I2C_STANDARD" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_NO_SILK" package="1X04_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN_03" prefix="J" uservalue="yes">
<description>&lt;h3&gt;Multi connection point. Often used as Generic Header-pin footprint for 0.1 inch spaced/style header connections&lt;/h3&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;On any of the 0.1 inch spaced packages, you can populate with these:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/116"&gt; Break Away Headers - Straight&lt;/a&gt; (PRT-00116)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/553"&gt; Break Away Male Headers - Right Angle&lt;/a&gt; (PRT-00553)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/115"&gt; Female Headers&lt;/a&gt; (PRT-00115)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/117"&gt; Break Away Headers - Machine Pin&lt;/a&gt; (PRT-00117)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/743"&gt; Break Away Female Headers - Swiss Machine Pin&lt;/a&gt; (PRT-00743)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13875"&gt; Stackable Header - 3 Pin (Female, 0.1")&lt;/a&gt; (PRT-13875)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt; For SCREWTERMINALS and SPRING TERMINALS visit here:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/search/results?term=Screw+Terminals"&gt; Screw Terimnals on SparkFun.com&lt;/a&gt; (5mm/3.5mm/2.54mm spacing)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;This device is also useful as a general connection point to wire up your design to another part of your project. Our various solder wires solder well into these plated through hole pads.&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11375"&gt; Hook-Up Wire - Assortment (Stranded, 22 AWG)&lt;/a&gt; (PRT-11375)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11367"&gt; Hook-Up Wire - Assortment (Solid Core, 22 AWG)&lt;/a&gt; (PRT-11367)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/categories/141"&gt; View the entire wire category on our website here&lt;/a&gt;&lt;/li&gt;
&lt;p&gt;&lt;/p&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;Special notes:&lt;/b&gt;
&lt;p&gt; &lt;/p&gt;
&lt;p&gt; &lt;/p&gt; Molex polarized connector foot print use with SKU : PRT-08232 with associated crimp pins and housings.</description>
<gates>
<gate name="J$1" symbol="CONN_03" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X3">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08625" constant="no"/>
<attribute name="SF_ID" value="PRT-08096" constant="no"/>
</technology>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-3">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08288" constant="no"/>
<attribute name="SF_ID" value="PRT-08235" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK" package="1X03_LOCK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X03_LOCK_LONGPADS">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X3_LOCK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08625" constant="no"/>
<attribute name="SF_ID" value="PRT-08096" constant="no"/>
</technology>
</technologies>
</device>
<device name="SCREW_LOCK" package="SCREWTERMINAL-3.5MM-3_LOCK.007S">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08288" constant="no"/>
<attribute name="SF_ID" value="PRT-08235" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X03_NO_SILK" package="1X03_NO_SILK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONGPADS" package="1X03_LONGPADS">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH" package="JST-3-PTH">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="WIRE-10037" constant="no"/>
<attribute name="SF_ID" value="PRT-09915" constant="no"/>
</technology>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X03_PP_HOLES_ONLY">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SCREW-5MM" package="SCREWTERMINAL-5MM-3">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10134" constant="no"/>
<attribute name="SF_SKU" value="PRT-08433" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK_NO_SILK" package="1X03_LOCK_NO_SILK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-SMD" package="JST-3-SMD">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-12591" constant="no"/>
<attribute name="VALUE" value="3-PIN SMD" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD" package="1X03-1MM-RA">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD_RA_FEMALE" package="1X03_SMD_RA_FEMALE">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10926"/>
<attribute name="VALUE" value="1x3 RA Female .1&quot;"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_MALE" package="1X03_SMD_RA_MALE">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10925"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_MALE_POST" package="1X03_SMD_RA_MALE_POST">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-3-PTH-VERT">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-13230" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X03_SMD_RA_MALE_POST_SMALLER" package="1X03_SMD_RA_MALE_POST_SMALLER">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11912" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X03_SMD_RA_MALE_POST_SMALLEST" package="1X03_SMD_RA_MALE_POST_SMALLEST">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-NS" package="JST-3-PTH-NS">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW-NS" package="SCREWTERMINAL-3.5MM-3-NS">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="B1" library="SparkFun-Boards" deviceset="ARDUINO_UNO_R3_SHIELD" device="BASIC"/>
<part name="J1" library="SparkFun-Connectors" deviceset="I2C_STANDARD" device=""/>
<part name="J2" library="SparkFun-Connectors" deviceset="CONN_03" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="B1" gate="G$1" x="104.14" y="25.4"/>
<instance part="J1" gate="G$1" x="45.72" y="38.1"/>
<instance part="J2" gate="J$1" x="43.18" y="20.32"/>
</instances>
<busses>
</busses>
<nets>
<net name="5V" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="53.34" y1="38.1" x2="55.88" y2="38.1" width="0.1524" layer="91"/>
<label x="55.88" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="5V"/>
<wire x1="91.44" y1="15.24" x2="86.36" y2="15.24" width="0.1524" layer="91"/>
<label x="78.74" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="53.34" y1="35.56" x2="55.88" y2="35.56" width="0.1524" layer="91"/>
<label x="55.88" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="GND@2"/>
<wire x1="91.44" y1="7.62" x2="86.36" y2="7.62" width="0.1524" layer="91"/>
<label x="78.74" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="J$1" pin="3"/>
<wire x1="50.8" y1="22.86" x2="55.88" y2="22.86" width="0.1524" layer="91"/>
<label x="53.34" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="GND@1"/>
<wire x1="91.44" y1="5.08" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="53.34" y1="40.64" x2="55.88" y2="40.64" width="0.1524" layer="91"/>
<label x="55.88" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="A4"/>
<wire x1="91.44" y1="33.02" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<label x="86.36" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="53.34" y1="43.18" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<label x="55.88" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="A5"/>
<wire x1="91.44" y1="30.48" x2="86.36" y2="30.48" width="0.1524" layer="91"/>
<label x="86.36" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="STX" class="0">
<segment>
<pinref part="J2" gate="J$1" pin="1"/>
<wire x1="50.8" y1="17.78" x2="55.88" y2="17.78" width="0.1524" layer="91"/>
<label x="53.34" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="*D10"/>
<wire x1="116.84" y1="15.24" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<label x="119.38" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="SRX" class="0">
<segment>
<pinref part="J2" gate="J$1" pin="2"/>
<wire x1="50.8" y1="20.32" x2="55.88" y2="20.32" width="0.1524" layer="91"/>
<label x="53.34" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="*D11"/>
<wire x1="116.84" y1="12.7" x2="119.38" y2="12.7" width="0.1524" layer="91"/>
<label x="119.38" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
