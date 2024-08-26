Profile: Patient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: Patient
Title: "Patient"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-patient"
* ^status = #draft
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains va-home 0..1
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "$this"
* telecom ^slicing.rules = #open
* telecom contains va-home 0..1 and va-work 0..1 and va-mobile 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity named us-core-ethnicity 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-race named us-core-race 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/patient-religion named patient-religion 0..1
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity named us-core-genderIdentity 0..1
* identifier.value and identifier.system and identifier.type.coding.code and identifier.type.coding.system and name.text and name.family and name.given and name.suffix and telecom[va-home].value and telecom[va-home].system and telecom[va-home].use and telecom[va-work].value and telecom[va-work].system and telecom[va-work].use and telecom[va-mobile].value and telecom[va-mobile].system and telecom[va-mobile].use and birthDate and deceasedDateTime and address[va-home].line and address[va-home].use and address[va-home].type and address[va-home].city and address[va-home].state and address[va-home].postalCode and address[va-home].country and address[va-home].period.start and address[va-home].period.end and communication.language and managingOrganization.display and gender and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code and maritalStatus and extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept MS
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
* address[va-home].use = #home
* address[va-home].type = #postal
* managingOrganization.display = "Veterans Health Administration"
* gender from http://va.gov/fhir/ValueSet/VSVFadminGender
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code from http://va.gov/fhir/ValueSet/VSVFethnicityCategory
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code from http://va.gov/fhir/ValueSet/VSVFraceCategory
* maritalStatus from http://va.gov/fhir/ValueSet/VSVFMaritalStatus
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFReligion
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFgenderIdentity

Mapping: source-to-Patient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Patient
* identifier.value -> "272: source value from PATIENT - INTEGRATION CONTROL NUMBER (2-991.01)"
* identifier.system -> "272-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier.type.coding.code -> "272-2: fixed value = #MR" "from mapParameter 2"
* identifier.type.coding.system -> "272-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "from mapParameter 3"
* name.text -> "273: source value from PATIENT - NAME (2-.01)"
* name.family -> "273-1: fixed value = LAST" "from mapParameter 1"
* name.given -> "273-2: fixed value = FIRST & MIDDLE" "from mapParameter 2"
* name.suffix -> "273-3: fixed value = SUFFIX" "from mapParameter 3"
* telecom[va-home].value -> "274: source value from PATIENT - PHONE NUMBER [RESIDENCE] (2-.131)"
* telecom[va-home].system -> "274-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-home].use -> "274-2: fixed value = #home" "from mapParameter 2"
* telecom[va-work].value -> "275: source value from PATIENT - PHONE NUMBER [WORK] (2-.132)"
* telecom[va-work].system -> "275-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-work].use -> "275-2: fixed value = #work" "from mapParameter 2"
* telecom[va-mobile].value -> "276: source value from PATIENT - PHONE NUMBER [CELLULAR] (2-.134)"
* telecom[va-mobile].system -> "276-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-mobile].use -> "276-2: fixed value = #mobile" "from mapParameter 2"
* birthDate -> "284: source value from PATIENT - DATE OF BIRTH (2-.03)"
* deceasedDateTime -> "285: source value from PATIENT - DATE OF DEATH (2-.351) case not null" "removed \"true\" based on Validator testing 6/30/23"
* address[va-home].line -> "286: source value from PATIENT - STREET ADDRESS [LINE 1] (2-.111)"
* address[va-home].use -> "286-1: fixed value = #home" "from mapParameter 1"
* address[va-home].type -> "286-2: fixed value = #postal" "from mapParameter 2"
* address[va-home].line -> "287: source value from PATIENT - STREET ADDRESS [LINE 2] (2-.112)"
* address[va-home].line -> "288: source value from PATIENT - STREET ADDRESS [LINE 3] (2-.113)"
* address[va-home].city -> "289: source value from PATIENT - CITY (2-.114)"
* address[va-home].state -> "290: source value from PATIENT - STATE (2-.115)"
* address[va-home].postalCode -> "291: source value from PATIENT - ZIP+4 (2-.1112)"
* address[va-home].country -> "292: source value from PATIENT - COUNTRY (2-.1173)" "confirm association with .111 etc."
* address[va-home].period.start -> "293: source value from PATIENT - TEMPORARY ADDRESS START DATE (2-.1217)" "need other addresses, including temp; not just range"
* address[va-home].period.end -> "294: source value from PATIENT - TEMPORARY ADDRESS END DATE (2-.1218)" "need other addresses, including temp; not just range"
* communication.language -> "295: source value from PATIENT - LANGUAGE DATE/TIME > LANGUAGE DATE/TIME - PREFERRED LANGUAGE (2-7 > 2.07-.02)"
* managingOrganization.display -> "296: fixed value = Veterans Health Administration"
* gender -> "555: terminologyMaps using VF_adminGender on PATIENT - SEX (2-.02)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code -> "575: terminologyMaps using VF_ethnicityCategory on PATIENT - ETHNICITY INFORMATION (2-6)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code -> "576: terminologyMaps using VF_raceCategory on PATIENT - RACE INFORMATION (2-2)" "Do we collect any detailed race data?"
* maritalStatus -> "1597: terminologyMaps using VF_MaritalStatus on PATIENT - MARITAL STATUS (2-.05)"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept -> "1598: terminologyMaps using VF_Religion on PATIENT - RELIGIOUS PREFERENCE (2-.08)"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept -> "1808: terminologyMaps using VF_genderIdentity on PATIENT - SELF IDENTIFIED GENDER (2-.024)"

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
* maritalStatus -> "Outpat.Visit.PatientMaritalStatus,Outpat.Workload.PatientMaritalStatus,Patient.Patient.MaritalStatusIEN,SPatient.SPatient.MaritalStatusIEN"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept -> "Outpat.Visit.PatientReligion,Outpat.Visit.PatientReligionCode,Outpat.Workload.PatientReligion,Outpat.Workload.PatientReligionCode,Patient.Patient.ReligionIEN,SPatient.SPatient.ReligionIEN"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept -> "Patient.Patient.SelfIdentifiedGender,SPatient.SPatient.SelfIdentifiedGender"

Mapping: vpr-to-Patient
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: Patient
* identifier.value -> "GET PATIENT DATA-reaction.mechanism"