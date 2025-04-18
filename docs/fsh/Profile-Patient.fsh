Profile: Patient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: Patient
Title: "Patient"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-patient."
* ^status = #active
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "$this"
* telecom ^slicing.rules = #open
* telecom contains va-home 0..1 and va-work 0..1 and va-mobile 0..1
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains va-home 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/patient-religion named patient-religion 0..1
* identifier.value and identifier.system and identifier.type.coding.code and identifier.type.coding.system and name.text and name.family and name.given and name.suffix and telecom[va-home].value and telecom[va-home].system and telecom[va-home].use and telecom[va-work].value and telecom[va-work].system and telecom[va-work].use and telecom[va-mobile].value and telecom[va-mobile].system and telecom[va-mobile].use and birthDate and deceasedDateTime and address[va-home].line and address[va-home].use and address[va-home].type and address[va-home].city and address[va-home].state and address[va-home].postalCode and address[va-home].country and address[va-home].period.start and address[va-home].period.end and communication.language and managingOrganization.display and gender and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString and maritalStatus and extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept MS
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type.coding.code = #MR
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* name.family = "LAST"
* name.given = "FIRST & MIDDLE"
* name.suffix = "SUFFIX"
* telecom[va-home].system = #phone
* telecom[va-home].use = #home
* telecom[va-work].system = #phone
* telecom[va-work].use = #work
* telecom[va-mobile].system = #phone
* telecom[va-mobile].use = #mobile
* deceasedDateTime obeys p-7-285
* address[va-home].use = #home
* address[va-home].type = #postal
* managingOrganization.display = "Veterans Health Administration"
* gender from http://va.gov/fhir/ValueSet/adminGender
* gender ^binding.description = "see mapping [VF_adminGender](ConceptMap-VF-adminGender.html)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept from http://va.gov/fhir/ValueSet/genderIdentity
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept ^binding.description = "see mapping [VF_genderIdentity](ConceptMap-VF-genderIdentity.html)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code from http://va.gov/fhir/ValueSet/ethnicityCategory
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code ^binding.description = "see mapping [VF_ethnicityCategory](ConceptMap-VF-ethnicityCategory.html)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code from http://va.gov/fhir/ValueSet/raceCategory
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code ^binding.description = "see mapping [VF_raceCategory](ConceptMap-VF-raceCategory.html)"
* maritalStatus from http://va.gov/fhir/ValueSet/MaritalStatus
* maritalStatus ^binding.description = "see mapping [VF_MaritalStatus](ConceptMap-VF-MaritalStatus.html)"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept from http://va.gov/fhir/ValueSet/Religion
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept ^binding.description = "see mapping [VF_Religion](ConceptMap-VF-Religion.html)"

Invariant: p-7-285
Description: "If not null then source value from (2-.351)"
Severity: #warning
Expression: "true"

Mapping: source-to-Patient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Patient
* identifier.value -> "272: source value based on PATIENT - INTEGRATION CONTROL NUMBER (2-991.01)"
* identifier.system -> "272-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "generated from mapParameter line 1"
* identifier.type.coding.code -> "272-2: fixed value = #MR" "generated from mapParameter line 2"
* identifier.type.coding.system -> "272-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "generated from mapParameter line 3"
* name.text -> "273: source value based on PATIENT - NAME (2-.01)"
* name.family -> "273-1: fixed value = LAST" "generated from mapParameter line 1"
* name.given -> "273-2: fixed value = FIRST & MIDDLE" "generated from mapParameter line 2"
* name.suffix -> "273-3: fixed value = SUFFIX" "generated from mapParameter line 3"
* telecom[va-home].value -> "274: source value based on PATIENT - PHONE NUMBER [RESIDENCE] (2-.131)"
* telecom[va-home].system -> "274-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-home].use -> "274-2: fixed value = #home" "generated from mapParameter line 2"
* telecom[va-work].value -> "275: source value based on PATIENT - PHONE NUMBER [WORK] (2-.132)"
* telecom[va-work].system -> "275-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-work].use -> "275-2: fixed value = #work" "generated from mapParameter line 2"
* telecom[va-mobile].value -> "276: source value based on PATIENT - PHONE NUMBER [CELLULAR] (2-.134)"
* telecom[va-mobile].system -> "276-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-mobile].use -> "276-2: fixed value = #mobile" "generated from mapParameter line 2"
* birthDate -> "284: source value based on PATIENT - DATE OF BIRTH (2-.03)"
* deceasedDateTime -> "285: source value based on PATIENT - DATE OF DEATH (2-.351) if not null" "removed \"true\" based on Validator testing 6/30/23"
* address[va-home].line -> "286: source value based on PATIENT - STREET ADDRESS [LINE 1] (2-.111)"
* address[va-home].use -> "286-1: fixed value = #home" "generated from mapParameter line 1"
* address[va-home].type -> "286-2: fixed value = #postal" "generated from mapParameter line 2"
* address[va-home].line -> "287: source value based on PATIENT - STREET ADDRESS [LINE 2] (2-.112)"
* address[va-home].line -> "288: source value based on PATIENT - STREET ADDRESS [LINE 3] (2-.113)"
* address[va-home].city -> "289: source value based on PATIENT - CITY (2-.114)"
* address[va-home].state -> "290: source value based on PATIENT - STATE (2-.115)"
* address[va-home].postalCode -> "291: source value based on PATIENT - ZIP+4 (2-.1112)"
* address[va-home].country -> "292: source value based on PATIENT - COUNTRY (2-.1173)" "confirm association with .111 etc."
* address[va-home].period.start -> "293: source value based on PATIENT - TEMPORARY ADDRESS START DATE (2-.1217)" "need other addresses, including temp; not just range"
* address[va-home].period.end -> "294: source value based on PATIENT - TEMPORARY ADDRESS END DATE (2-.1218)" "need other addresses, including temp; not just range"
* communication.language -> "295: source value based on PATIENT - LANGUAGE DATE/TIME > LANGUAGE DATE/TIME - PREFERRED LANGUAGE (2-7 > 2.07-.02)"
* managingOrganization.display -> "296: fixed value = Veterans Health Administration"
* gender -> "555: terminologyMaps using VF_adminGender on PATIENT - SEX (2-.02)" "Map VA sex to FHIR gender; both are vague. For now."
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept -> "1808: terminologyMaps using VF_genderIdentity on PATIENT - SELF IDENTIFIED GENDER (2-.024)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code -> "575: terminologyMaps using VF_ethnicityCategory on PATIENT - ETHNICITY INFORMATION (2-6)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString -> "575-1: source value based on PATIENT - ETHNICITY INFORMATION (2-6)" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code -> "576: terminologyMaps using VF_raceCategory on PATIENT - RACE INFORMATION (2-2)" "Do we collect any detailed race data?"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "576-1: source value based on PATIENT - RACE INFORMATION (2-2)" "generated from mapParameter line 1"
* maritalStatus -> "1597: terminologyMaps using VF_MaritalStatus on PATIENT - MARITAL STATUS (2-.05)"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept -> "1598: terminologyMaps using VF_Religion on PATIENT - RELIGIOUS PREFERENCE (2-.08)"

Mapping: cdw-to-Patient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Patient
* identifier.value -> "Patient.Patient.PatientICN,Patient.PatientICN.PatientICN,SPatient.SPatient.PatientICN,SPatient.SPatientGISAddress.PatientICN"
* name.text -> "SPatient.SPatient.DestinationMergePatientIEN,SPatient.SPatient.PatientFirstName,SPatient.SPatient.PatientLastName,SPatient.SPatient.PatientName,SPatient.SPatientAlias.PatientName"
* birthDate -> "SPatient.PlaceOfBirth.BirthDateTime,SPatient.SPatient.BirthDateTime"
* deceasedDateTime -> "Patient.Patient.DeathDateTime,SPatient.SPatient.DeathDateTime"
* address[va-home].line -> "SPatient.SPatientGISAddress.StreetAddress1"
* address[va-home].line -> "SPatient.SPatientGISAddress.StreetAddress2"
* address[va-home].city -> "SPatient.SPatientGISAddress.City"
* address[va-home].state -> "SPatient.SPatientGISAddress.StateIEN,SPatient.SPatientGISAddress.StateSID"
* address[va-home].postalCode -> "SPatient.SPatientGISAddress.Zip4"
* communication.language -> "Patient.PreferredLanguage.PreferredLanguage"
* gender -> "Patient.Patient.Gender,Patient.PatientBirthSex.BirthSex,SPatient.SPatient.Gender,SPatient.SPatientBirthSex.BirthSex,SPatient.SPatientBirthSex.BirthSex"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept -> "Patient.Patient.SelfIdentifiedGender,SPatient.SPatient.SelfIdentifiedGender"
* maritalStatus -> "Outpat.Visit.PatientMaritalStatus,Outpat.Workload.PatientMaritalStatus,Patient.Patient.MaritalStatusIEN,SPatient.SPatient.MaritalStatusIEN"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept -> "Outpat.Visit.PatientReligion,Outpat.Visit.PatientReligionCode,Outpat.Workload.PatientReligion,Outpat.Workload.PatientReligionCode,Patient.Patient.ReligionIEN,SPatient.SPatient.ReligionIEN"

Mapping: sda-to-Patient
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: Patient
* name.text -> "Patient.Name"
* telecom[va-home].value -> "Patient.HomePhoneNumber"
* telecom[va-work].value -> "Patient.WorkPhoneNumber"
* telecom[va-mobile].value -> "Patient.MobilePhoneNumber"
* birthDate -> "Patient.BirthTime,Patient.Extension[PatientExtension].Dob"
* deceasedDateTime -> "Patient.DeathTime,Patient.IsDead"
* address[va-home].line -> "Patient.PermanentAddress[Address].Street"
* address[va-home].line -> "Patient.PermanentAddress[Address].Street"
* address[va-home].line -> "Patient.PermanentAddress[Address].Street"
* address[va-home].city -> "Patient.PermanentAddress[Address].City"
* address[va-home].state -> "Patient.PermanentAddress[Address].State"
* address[va-home].country -> "Patient.PermanentAddress[Address].Country"
* address[va-home].period.start -> "Patient.TemporaryAddress[Address].FromTime"
* address[va-home].period.end -> "Patient.TemporaryAddress[Address].ToTime"
* communication.language -> "Patient.PatientLanguage.Preferred Language"
* gender -> "Patient.BirthGender,Patient.Gender"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code -> "Patient.EthnicGroup"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString -> "Patient.EthnicGroup"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code -> "Patient.Races"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString -> "Patient.Races"
* maritalStatus -> "Patient.MaritalStatus"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept -> "Patient.Religion"