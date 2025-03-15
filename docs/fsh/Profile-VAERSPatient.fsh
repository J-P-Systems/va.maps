Profile: VAERSPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: VAERSPatient
Title: "VAERS Patient"
Description: "This StructureDefinition contains the maps for ADERS to us-core-patient."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|7.0.0"
* extension contains http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination named patient-ageAtVaccination 0..1
* identifier.value and identifier.system and identifier.type.coding.code and identifier.type.coding.system and birthDate and gender and extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString and deceasedDateTime and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString MS
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type.coding.code = #MR
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1948
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1948-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1949
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1949-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1950
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1950-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1951
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1951-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1952
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1952-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1953
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1953-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding obeys vaersp-12-1954
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString obeys vaersp-12-1954-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1955
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString obeys vaersp-12-1955-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1956
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString obeys vaersp-12-1956-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1957
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString obeys vaersp-12-1957-1
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding obeys vaersp-12-1958
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString obeys vaersp-12-1958-1

Invariant: vaersp-12-1948
Description: "If (24-1) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#1002-5 \"American Indian or Alaska Native\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1948-1
Description: "If not xsi:nil then fixed value AIAN"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1949
Description: "If (24-2) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2028-9 \"Asian\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1949-1
Description: "If not xsi:nil then fixed value Asian"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1950
Description: "If (24-3) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2054-5 \"Black or African American\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1950-1
Description: "If not xsi:nil then fixed value BlkAM"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1951
Description: "If (24-4) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2076-8 \"Native Hawaiian or Other Pacific Islander\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1951-1
Description: "If not xsi:nil then fixed value NH_OPI"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1952
Description: "If (24-5) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2106-3 \"White\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1952-1
Description: "If not xsi:nil then fixed value White"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1953
Description: "If (24-6) is not xsi:nil then fixed value http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1953-1
Description: "If not xsi:nil then fixed value Unk"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1954
Description: "If (24-7) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2131-1 \"Other Race\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1954-1
Description: "If not xsi:nil then fixed value Other"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1955
Description: "If (25-1) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2135-2 \"Hispanic or Latino\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1955-1
Description: "If not xsi:nil then fixed value HispLat"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1956
Description: "If (25-2) is not xsi:nil then fixed value urn:oid:2.16.840.1.113883.6.238#2186-5 \"Not Hispanic or Latino\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1956-1
Description: "If not xsi:nil then fixed value NHL"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1957
Description: "If (25-3) is not xsi:nil then fixed value http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1957-1
Description: "If not xsi:nil then fixed value Unk"
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1958
Description: "If (25-4) is not xsi:nil then fixed value http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH \"other\""
Severity: #warning
Expression: "true"

Invariant: vaersp-12-1958-1
Description: "If not xsi:nil then fixed value Other"
Severity: #warning
Expression: "true"

Mapping: source-to-VAERSPatient
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSPatient
* identifier.value -> "1863: source value based on ADERS - 0_Pt_ICN_Full (0)"
* identifier.system -> "1863-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "generated from mapParameter line 1"
* identifier.type.coding.code -> "1863-2: fixed value = #MR" "generated from mapParameter line 2"
* identifier.type.coding.system -> "1863-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "generated from mapParameter line 3"
* birthDate -> "1874: source value based on ADERS - 2_ptDOB (2)"
* gender -> "1880: source value based on ADERS - 3_ptSex (3)"
* name -> "2022: target not supported" "because of must-support; FDA receives minimal deidentified data"
* address -> "2024: target not supported" "because of must-support; FDA receives minimal deidentified data"
* communication.language -> "2025: target not supported" "because of must-support; FDA receives minimal deidentified data"
* extension[http://va.gov/fhir/StructureDefinition/patient-ageAtVaccination].valueString -> "1882: transform using concat(6_PtAgeVacYears, 6_PtAgeVacMonths)"
* deceasedDateTime -> "1917: source value based on ADERS - 21_DeathDt (21-7.1)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1948: fixed value = urn:oid:2.16.840.1.113883.6.238#1002-5 \"American Indian or Alaska Native\" when ADERS - 24_PtRace_AIAN (24-1) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1948-1: fixed value = AIAN if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1949: fixed value = urn:oid:2.16.840.1.113883.6.238#2028-9 \"Asian\" when ADERS - 24_PtRace_Asian (24-2) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1949-1: fixed value = Asian if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1950: fixed value = urn:oid:2.16.840.1.113883.6.238#2054-5 \"Black or African American\" when ADERS - 24_PtRace_BlkAM (24-3) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1950-1: fixed value = BlkAM if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1951: fixed value = urn:oid:2.16.840.1.113883.6.238#2076-8 \"Native Hawaiian or Other Pacific Islander\" when ADERS - 24_PtRace_NH_OPI (24-4) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1951-1: fixed value = NH_OPI if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1952: fixed value = urn:oid:2.16.840.1.113883.6.238#2106-3 \"White\" when ADERS - 24_PtRace_White (24-5) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1952-1: fixed value = White if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1953: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\" when ADERS - 24_PtRace_Unk (24-6) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1953-1: fixed value = Unk if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding -> "1954: fixed value = urn:oid:2.16.840.1.113883.6.238#2131-1 \"Other Race\" when ADERS - 24_PtRace_Other (24-7) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "1954-1: fixed value = Other if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1955: fixed value = urn:oid:2.16.840.1.113883.6.238#2135-2 \"Hispanic or Latino\" when ADERS - 25_PtEthnicity_HispLat (25-1) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString -> "1955-1: fixed value = HispLat if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1956: fixed value = urn:oid:2.16.840.1.113883.6.238#2186-5 \"Not Hispanic or Latino\" when ADERS - 25_PtEthnicity_NHL (25-2) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString -> "1956-1: fixed value = NHL if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1957: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK \"unknown\" when ADERS - 25_PtEthnicity_Unk (25-3) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString -> "1957-1: fixed value = Unk if not xsi:nil" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "1958: fixed value = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH \"other\" when ADERS - 25_PtEthnicity_Other (25-4) if not xsi:nil"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString -> "1958-1: fixed value = Other if not xsi:nil" "generated from mapParameter line 1"

Mapping: cdw-to-VAERSPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSPatient
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding -> "Dim.DischargeType.DischargeTypeAbbreviation"