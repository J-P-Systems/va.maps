Instance: VF-ImmunizationReaction
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ImmunizationReaction"
* name = "VF_ImmunizationReaction"
* title = "VF_ImmunizationReaction"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ImmunizationReaction"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ImmunizationReaction-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ImmunizationReaction"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000010.11-.06"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #9
* group[=].element[=].display = "ANAPHYLAXIS OR COLLAPSE"
* group[=].element[=].target.code = #293104008
* group[=].element[=].target.display = "Adverse reaction to component of vaccine product (disorder)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #8
* group[=].element[=].display = "ARTHRITIS OR ARTHRALGIAS"
* group[=].element[=].target.code = #293104008
* group[=].element[=].target.display = "Adverse reaction to component of vaccine product (disorder)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #7
* group[=].element[=].display = "CONVULSIONS"
* group[=].element[=].target.code = #91175000
* group[=].element[=].target.display = "Seizure (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "FEVER"
* group[=].element[=].target.code = #386661006
* group[=].element[=].target.display = "Fever (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #2
* group[=].element[=].display = "IRRITABILITY"
* group[=].element[=].target.code = #55929007
* group[=].element[=].target.display = "Feeling irritable (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #6
* group[=].element[=].display = "LETHARGY"
* group[=].element[=].target.code = #214264003
* group[=].element[=].target.display = "Lethargy (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #3
* group[=].element[=].display = "LOCAL REACTION OR SWELLING"
* group[=].element[=].target.code = #293104008
* group[=].element[=].target.display = "Adverse reaction to component of vaccine product (disorder)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #11
* group[=].element[=].display = "OTHER"
* group[=].element[=].target.code = #293104008
* group[=].element[=].target.display = "Adverse reaction to component of vaccine product (disorder)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #5
* group[=].element[=].display = "RASH OR ITCHING"
* group[=].element[=].target.code = #293104008
* group[=].element[=].target.display = "Adverse reaction to component of vaccine product (disorder)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #10
* group[=].element[=].display = "RESPIRATORY DISTRESS"
* group[=].element[=].target.code = #271825005
* group[=].element[=].target.display = "Respiratory distress (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4
* group[=].element[=].display = "VOMITING"
* group[=].element[=].target.code = #422400008
* group[=].element[=].target.display = "Vomiting (disorder)"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://va.gov/terminology/vistaDefinedElements/9000010.11-.06"
* group[=].target = "http://loinc.org"
* group[=].element[0].code = #0
* group[=].element[=].display = "NONE"
* group[=].element[=].target.code = #LA137-2
* group[=].element[=].target.display = "None"
* group[=].element[=].target.equivalence = #equal

ValueSet: ImmunizationReaction
Title: "ImmunizationReaction FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ImmunizationReaction](ConceptMap-VF-ImmunizationReaction.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImmunizationReaction"
* include http://snomed.info/sct#293104008 "Adverse reaction to component of vaccine product (disorder)"
* include http://snomed.info/sct#91175000 "Seizure (finding)"
* include http://snomed.info/sct#386661006 "Fever (finding)"
* include http://snomed.info/sct#55929007 "Feeling irritable (finding)"
* include http://snomed.info/sct#214264003 "Lethargy (finding)"
* include http://snomed.info/sct#271825005 "Respiratory distress (finding)"
* include http://snomed.info/sct#422400008 "Vomiting (disorder)"
* include http://loinc.org#LA137-2 "None"

ValueSet: ImmunizationReaction-vista
Title: "ImmunizationReaction VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ImmunizationReaction](ConceptMap-VF-ImmunizationReaction.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImmunizationReaction_VistA"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#9 "ANAPHYLAXIS OR COLLAPSE"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#8 "ARTHRITIS OR ARTHRALGIAS"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#7 "CONVULSIONS"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#1 "FEVER"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#2 "IRRITABILITY"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#6 "LETHARGY"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#3 "LOCAL REACTION OR SWELLING"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#11 "OTHER"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#5 "RASH OR ITCHING"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#10 "RESPIRATORY DISTRESS"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#4 "VOMITING"
* include http://va.gov/terminology/vistaDefinedElements/9000010.11-.06#0 "NONE"