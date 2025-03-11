Instance: VF-VitalsQualifyingDevice
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsQualifyingDevice"
* name = "VF_VitalsQualifyingDevice"
* title = "VF_VitalsQualifyingDevice"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsQualifyingDevice"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsQualifyingDevice-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsQualifyingDevice"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4688635
* group[=].element[=].display = "AEROSOL/HUMIDIFIED MASK"
* group[=].element[=].target.code = #426851007
* group[=].element[=].target.display = "Aerosol oxygen mask (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688698
* group[=].element[=].display = "AMBU BAG (BAG VALVE MASK)"
* group[=].element[=].target.code = #371785003
* group[=].element[=].target.display = "Ambu bag (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688695
* group[=].element[=].display = "BIPAP (BI-LEVEL POSITIVE AIRWAY PRESSURE)"
* group[=].element[=].target.code = #243142003
* group[=].element[=].target.display = "Dual pressure spontaneous ventilation support (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688691
* group[=].element[=].display = "BIPAP-CPAP (BI-LEVEL POSITIVE AIRWAY PRESSURE-CONTINUOUS POSITIVE AIRWAY PRESSURE)"
* group[=].element[=].target.code = #229306004
* group[=].element[=].target.display = "Positive pressure therapy (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688690
* group[=].element[=].display = "CPAP (CONTINUOUS POSITIVE AIRWAY PRESSURE)"
* group[=].element[=].target.code = #47545007
* group[=].element[=].target.display = "Continuous positive airway pressure ventilation treatment (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688654
* group[=].element[=].display = "FACE TENT"
* group[=].element[=].target.code = #426294006
* group[=].element[=].target.display = "Face tent oxygen delivery device (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4536584
* group[=].element[=].display = "LARYNGEAL MASK AIRWAY"
* group[=].element[=].target.code = #257268009
* group[=].element[=].target.display = "Laryngeal mask (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688664
* group[=].element[=].display = "MASK"
* group[=].element[=].target.code = #336602003
* group[=].element[=].target.display = "Oxygen mask (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688687
* group[=].element[=].display = "MUSTACHE CANNULA"
* group[=].element[=].target.code = #336623009
* group[=].element[=].target.display = "Oxygen nasal cannula (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688666
* group[=].element[=].display = "NASAL CANNULA"
* group[=].element[=].target.code = #336623009
* group[=].element[=].target.display = "Oxygen nasal cannula (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688667
* group[=].element[=].display = "NON RE-BREATHER"
* group[=].element[=].target.code = #427591007
* group[=].element[=].target.display = "Nonrebreather oxygen mask (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4711338
* group[=].element[=].display = "PARTIAL RE-BREATHER (PARTIAL REBREATHER)"
* group[=].element[=].target.code = #425926003
* group[=].element[=].target.display = "Partial rebreather oxygen mask (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4711340
* group[=].element[=].display = "PENDANT CANNULA"
* group[=].element[=].target.code = #336623009
* group[=].element[=].target.display = "Oxygen nasal cannula (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4693051
* group[=].element[=].display = "RESERVOIR CANNULA"
* group[=].element[=].target.code = #336623009
* group[=].element[=].target.display = "Oxygen nasal cannula (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688710
* group[=].element[=].display = "T-PIECE"
* group[=].element[=].target.code = #6097006
* group[=].element[=].target.display = "T-tube, device (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688711
* group[=].element[=].display = "TRACHEOSTOMY COLLAR"
* group[=].element[=].target.code = #465839001
* group[=].element[=].target.display = "Tracheostomy mask, oxygen (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688716
* group[=].element[=].display = "VENTURI MASK"
* group[=].element[=].target.code = #465433006
* group[=].element[=].target.display = "Venturi oxygen face mask (physical object)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VitalsQualifyingDevice
Title: "VitalsQualifyingDevice FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsQualifyingDevice](ConceptMap-VF-VitalsQualifyingDevice.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsQualifyingDevice"
* include http://snomed.info/sct#426851007 "Aerosol oxygen mask (physical object)"
* include http://snomed.info/sct#371785003 "Ambu bag (physical object)"
* include http://snomed.info/sct#243142003 "Dual pressure spontaneous ventilation support (regime/therapy)"
* include http://snomed.info/sct#229306004 "Positive pressure therapy (regime/therapy)"
* include http://snomed.info/sct#47545007 "Continuous positive airway pressure ventilation treatment (regime/therapy)"
* include http://snomed.info/sct#426294006 "Face tent oxygen delivery device (physical object)"
* include http://snomed.info/sct#257268009 "Laryngeal mask (physical object)"
* include http://snomed.info/sct#336602003 "Oxygen mask (physical object)"
* include http://snomed.info/sct#336623009 "Oxygen nasal cannula (physical object)"
* include http://snomed.info/sct#427591007 "Nonrebreather oxygen mask (physical object)"
* include http://snomed.info/sct#425926003 "Partial rebreather oxygen mask (physical object)"
* include http://snomed.info/sct#6097006 "T-tube, device (physical object)"
* include http://snomed.info/sct#465839001 "Tracheostomy mask, oxygen (physical object)"
* include http://snomed.info/sct#465433006 "Venturi oxygen face mask (physical object)"

ValueSet: VitalsQualifyingDevice-vista
Title: "VitalsQualifyingDevice VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsQualifyingDevice](ConceptMap-VF-VitalsQualifyingDevice.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsQualifyingDevice_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688635 "AEROSOL/HUMIDIFIED MASK"
* include http://terminology.hl7.org/CodeSystem/VHA#4688698 "AMBU BAG (BAG VALVE MASK)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688695 "BIPAP (BI-LEVEL POSITIVE AIRWAY PRESSURE)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688691 "BIPAP-CPAP (BI-LEVEL POSITIVE AIRWAY PRESSURE-CONTINUOUS POSITIVE AIRWAY PRESSURE)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688690 "CPAP (CONTINUOUS POSITIVE AIRWAY PRESSURE)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688654 "FACE TENT"
* include http://terminology.hl7.org/CodeSystem/VHA#4536584 "LARYNGEAL MASK AIRWAY"
* include http://terminology.hl7.org/CodeSystem/VHA#4688664 "MASK"
* include http://terminology.hl7.org/CodeSystem/VHA#4688687 "MUSTACHE CANNULA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688666 "NASAL CANNULA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688667 "NON RE-BREATHER"
* include http://terminology.hl7.org/CodeSystem/VHA#4711338 "PARTIAL RE-BREATHER (PARTIAL REBREATHER)"
* include http://terminology.hl7.org/CodeSystem/VHA#4711340 "PENDANT CANNULA"
* include http://terminology.hl7.org/CodeSystem/VHA#4693051 "RESERVOIR CANNULA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688710 "T-PIECE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688711 "TRACHEOSTOMY COLLAR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688716 "VENTURI MASK"