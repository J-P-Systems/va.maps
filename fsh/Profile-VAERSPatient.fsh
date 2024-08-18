Profile: VAERSPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: VAERSPatient
Title: "VAERS Patient"
Description: "This StructureDefinition contains the maps for ADERS to us-core-patient"
* ^status = #draft
* extension contains http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination named patient-ageAtVaccination 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race named us-core-race 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race named us-core-race 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity named us-core-ethnicity 0..1
* identifier and identifier.system and identifier.type.coding.code and identifier.type.coding.system and birthDate and gender and extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString and deceasedBoolean and deceasedDateTime and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding MS
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type.coding.code = #MR
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

Mapping: source-to-VAERSPatient
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSPatient
* identifier -> "1863: source value from ADERS - 0_Pt_ICN_Full"
* identifier.system -> "1863-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier.type.coding.code -> "1863-2: fixed value = #MR" "from mapParameter 2"
* identifier.type.coding.system -> "1863-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "from mapParameter 3"
* birthDate -> "1874: source value from ADERS - 2_ptDOB (A-2)"
* gender -> "1880: source value from ADERS - 3_ptSex (A-3)"
* extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString -> "1882: transform using concat(6_PtAgeVacYears, 6_PtAgeVacMonths) on ADERS - (A-)"
* deceasedBoolean -> "1916: source value from ADERS - 21_Death (A-21.6) case 21_DeathDt nil & 21_Death =1"
* deceasedDateTime -> "1917: source value from ADERS - 21_DeathDt (A-21.7) case 21_DeathDt NOT nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1948: fixed value = urn:oid:2.16.840.1.113883.6.238#1002-5 American Indian or Alaska Native when ADERS - 24_PtRace_AIAN (A-24.1) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1949: fixed value = urn:oid:2.16.840.1.113883.6.238#2028-9 Asian when ADERS - 24_PtRace_Asian (A-24.2) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1950: fixed value = urn:oid:2.16.840.1.113883.6.238#2054-5 Black or African American when ADERS - 24_PtRace_BlkAM (A-24.3) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1951: fixed value = urn:oid:2.16.840.1.113883.6.238#2076-8 Native Hawaiian or Other Pacific Islander when ADERS - 24_PtRace_NH_OPI (A-24.4) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1952: fixed value = urn:oid:2.16.840.1.113883.6.238#2106-3 White when ADERS - 24_PtRace_White (A-24.5) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1953: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK unknown when ADERS - 24_PtRace_Unk (A-24.6) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1954: fixed value = urn:oid:2.16.840.1.113883.6.238#2131-1 Other Race when ADERS - 24_PtRace_Other (A-24.7) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1955: fixed value = urn:oid:2.16.840.1.113883.6.238#2135-2 Hispanic or Latino when ADERS - 25_PtEthnicity_HispLat (A-25.1) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1956: fixed value = urn:oid:2.16.840.1.113883.6.238#2186-5 Not Hispanic or Latino when ADERS - 25_PtEthnicity_NHL (A-25.2) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1957: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK unknown when ADERS - 25_PtEthnicity_Unk (A-25.3) case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1958: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#ASKU asked but unknown when ADERS - 25_PtEthnicity_Other (A-25.4) case not xsi:nil"

Mapping: cdw-to-VAERSPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSPatient