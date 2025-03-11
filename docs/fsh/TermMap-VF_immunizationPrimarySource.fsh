Instance: VF-immunizationPrimarySource
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-immunizationPrimarySource"
* name = "VF_immunizationPrimarySource"
* title = "VF_immunizationPrimarySource"
* status = #active
* experimental = false
* description = "Terminology Maps VF_immunizationPrimarySource"
* sourceCanonical = "http://va.gov/fhir/ValueSet/immunizationPrimarySource-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/immunizationPrimarySource"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/boolean"
* group[=].element[0].code = #5197425
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM BIRTH CERTIFICATE"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197421
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM OTHER PROVIDER"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197424
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM OTHER REGISTRY"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197423
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM PARENT'S RECALL"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197422
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM PARENT'S WRITTEN RECORD"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197427
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM PUBLIC AGENCY"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197426
* group[=].element[=].display = "HISTORICAL INFORMATION - FROM SCHOOL RECORD"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197420
* group[=].element[=].display = "HISTORICAL INFORMATION - SOURCE UNSPECIFIED"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5197419
* group[=].element[=].display = "NEW IMMUNIZATION RECORD"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equal

ValueSet: immunizationPrimarySource
Title: "immunizationPrimarySource FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_immunizationPrimarySource](ConceptMap-VF-immunizationPrimarySource.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImmunizationPrimarySource"
* include http://hl7.org/fhir/StructureDefinition/boolean#false 
* include http://hl7.org/fhir/StructureDefinition/boolean#true 

ValueSet: immunizationPrimarySource-vista
Title: "immunizationPrimarySource VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_immunizationPrimarySource](ConceptMap-VF-immunizationPrimarySource.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImmunizationPrimarySource_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#5197425 "HISTORICAL INFORMATION - FROM BIRTH CERTIFICATE"
* include http://terminology.hl7.org/CodeSystem/VHA#5197421 "HISTORICAL INFORMATION - FROM OTHER PROVIDER"
* include http://terminology.hl7.org/CodeSystem/VHA#5197424 "HISTORICAL INFORMATION - FROM OTHER REGISTRY"
* include http://terminology.hl7.org/CodeSystem/VHA#5197423 "HISTORICAL INFORMATION - FROM PARENT'S RECALL"
* include http://terminology.hl7.org/CodeSystem/VHA#5197422 "HISTORICAL INFORMATION - FROM PARENT'S WRITTEN RECORD"
* include http://terminology.hl7.org/CodeSystem/VHA#5197427 "HISTORICAL INFORMATION - FROM PUBLIC AGENCY"
* include http://terminology.hl7.org/CodeSystem/VHA#5197426 "HISTORICAL INFORMATION - FROM SCHOOL RECORD"
* include http://terminology.hl7.org/CodeSystem/VHA#5197420 "HISTORICAL INFORMATION - SOURCE UNSPECIFIED"
* include http://terminology.hl7.org/CodeSystem/VHA#5197419 "NEW IMMUNIZATION RECORD"