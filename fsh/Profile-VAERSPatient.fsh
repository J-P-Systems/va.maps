Profile: VAERSPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: VAERSPatient
Title: "VAERS Patient"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to us-core-patient"
* ^status = #draft
* extension contains http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination named patient-ageAtVaccination 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race named us-core-race 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race named us-core-race 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity named us-core-ethnicity 0..1
* identifier and identifier.system and identifier.type.coding.code and identifier.type.coding.system and birthDate and gender and extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString and deceasedBoolean and deceasedDateTime and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory] MS
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type.coding.code = #MR
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

Mapping: vista-to-VAERSPatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSPatient
* identifier -> "1863: source value from ADERS - 0_Pt_ICN_Full"
* identifier.system -> "1863-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier.type.coding.code -> "1863-2: fixed value = #MR" "from mapParameter 2"
* identifier.type.coding.system -> "1863-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "from mapParameter 3"
* birthDate -> "1874: source value from ADERS - 2_ptDOB"
* gender -> "1880: source value from ADERS - 3_ptSex"
* extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString -> "1882: transform using concat(6_PtAgeVacYears, 6_PtAgeVacMonths)"
* deceasedBoolean -> "1916: source value from ADERS - 21_Death case 21_DeathDt nil & 21_Death =1"
* deceasedDateTime -> "1917: source value from ADERS - 21_DeathDt case 21_DeathDt NOT nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1948: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1949: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1949-1: fixed value = urn:oid:2.16.840.1.113883.6.238#2028-9 Asian case not xsi:nil" "from mapParameter 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1950: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1951: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1952: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1952-1: fixed value = urn:oid:2.16.840.1.113883.6.238#2106-3 WHITE case not xsi:nil" "from mapParameter 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1953: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1954: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory] -> "1955: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory] -> "1956: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory] -> "1957: fixed value without value? case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory] -> "1958: fixed value without value? case not xsi:nil"

Mapping: cdw-to-VAERSPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSPatient