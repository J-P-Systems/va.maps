Profile: VAERSPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: VAERSPatient
Title: "VAERS Patient"
Description: "This StructureDefinition contains the maps for ADERS to us-core-patient."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* extension contains http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination named patient-ageAtVaccination 0..1
* identifier and identifier.system and identifier.type.coding.code and identifier.type.coding.system and birthDate and gender and extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString and deceasedDateTime and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding MS
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type.coding.code = #MR
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] obeys vaersp-12-1948
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1949
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1950
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1951
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1952
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1953
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1954
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1955
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1956
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1957
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1958

Invariant: vaersp-12-1948
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#1002-5 American Indian or Alaska Native"
Severity: #warning

Invariant: vaersp-12-1949
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2028-9 \"Asian\""
Severity: #warning

Invariant: vaersp-12-1950
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2054-5 \"Black or African American\""
Severity: #warning

Invariant: vaersp-12-1951
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2076-8 \"Native Hawaiian or Other Pacific Islander\""
Severity: #warning

Invariant: vaersp-12-1952
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2106-3 \"White\""
Severity: #warning

Invariant: vaersp-12-1953
Description: "null: if not xsi:nil then http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\""
Severity: #warning

Invariant: vaersp-12-1954
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2131-1 \"Other Race\""
Severity: #warning

Invariant: vaersp-12-1955
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2135-2 \"Hispanic or Latino\""
Severity: #warning

Invariant: vaersp-12-1956
Description: "null: if not xsi:nil then urn:oid:2.16.840.1.113883.6.238#2186-5 \"Not Hispanic or Latino\""
Severity: #warning

Invariant: vaersp-12-1957
Description: "null: if not xsi:nil then http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\""
Severity: #warning

Invariant: vaersp-12-1958
Description: "null: if not xsi:nil then http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH \"other\""
Severity: #warning

Mapping: source-to-VAERSPatient
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSPatient
* identifier -> "1863: source value from ADERS - 0_Pt_ICN_Full"
* identifier.system -> "1863-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier.type.coding.code -> "1863-2: fixed value = #MR" "from mapParameter 2"
* identifier.type.coding.system -> "1863-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "from mapParameter 3"
* birthDate -> "1874: source value from ADERS - 2_ptDOB"
* gender -> "1880: source value from ADERS - 3_ptSex"
* name -> "2022: target not supported" "because of must-support; FDA receives minimal deidentified data"
* telecom -> "2023: target not supported" "because of must-support; FDA receives minimal deidentified data"
* address -> "2024: target not supported" "because of must-support; FDA receives minimal deidentified data"
* communication.language -> "2025: target not supported" "because of must-support; FDA receives minimal deidentified data"
* extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString -> "1882: transform using concat(6_PtAgeVacYears, 6_PtAgeVacMonths)"
* deceasedDateTime -> "1917: source value from ADERS - 21_DeathDt"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory] -> "1948: fixed value = urn:oid:2.16.840.1.113883.6.238#1002-5 American Indian or Alaska Native case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1949: fixed value = urn:oid:2.16.840.1.113883.6.238#2028-9 \"Asian\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1950: fixed value = urn:oid:2.16.840.1.113883.6.238#2054-5 \"Black or African American\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1951: fixed value = urn:oid:2.16.840.1.113883.6.238#2076-8 \"Native Hawaiian or Other Pacific Islander\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1952: fixed value = urn:oid:2.16.840.1.113883.6.238#2106-3 \"White\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1953: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1954: fixed value = urn:oid:2.16.840.1.113883.6.238#2131-1 \"Other Race\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1955: fixed value = urn:oid:2.16.840.1.113883.6.238#2135-2 \"Hispanic or Latino\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1956: fixed value = urn:oid:2.16.840.1.113883.6.238#2186-5 \"Not Hispanic or Latino\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1957: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\" case not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1958: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH \"other\" case not xsi:nil"