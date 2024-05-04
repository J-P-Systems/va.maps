Profile: Patient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: Patient
Title: "Patient"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-patient"
* ^status = #draft
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains home 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/patient-religion named patient-religion 0..1
* identifier.value and name.text and telecom.value and birthDate and deceasedDateTime and address[home].line and address[home].city and address[home].state and address[home].postalCode and address[home].country and address[home].period.start and address[home].period.end and communication.language and managingOrganization.display and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex].valueCode and gender and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code and maritalStatus and extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept and extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept MS
* managingOrganization.display = "Veterans Health Administration"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex].valueCode from http://va.gov/fhir/ValueSet/VSVFbirthSex
* gender from http://va.gov/fhir/ValueSet/VSVFadminGender
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding.code from http://va.gov/fhir/ValueSet/VSVFethnicityCategory
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding.code from http://va.gov/fhir/ValueSet/VSVFraceCategory
* maritalStatus from http://va.gov/fhir/ValueSet/VSVFMaritalStatus
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFReligion
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFgenderIdentity

Mapping: vista-to-Patient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Patient
* identifier.value -> "272: source value from PATIENT - INTEGRATION CONTROL NUMBER (2-991.01)"
* name.text -> "273: source value from PATIENT - NAME (2-.01)"
* telecom.value -> "274: source value from PATIENT - PHONE NUMBER [RESIDENCE] (2-.131)"
* telecom.value -> "275: source value from PATIENT - PHONE NUMBER [WORK] (2-.132)"
* telecom.value -> "276: source value from PATIENT - PHONE NUMBER [CELLULAR] (2-.134)"
* birthDate -> "284: source value from PATIENT - DATE OF BIRTH (2-.03)"
* deceasedDateTime -> "285: source value from PATIENT - DATE OF DEATH (2-.351) case not null" "removed \"true\" based on Validator testing 6/30/23"
* address[home].line -> "286: source value from PATIENT - STREET ADDRESS [LINE 1] (2-.111)"
* address[home].line -> "287: source value from PATIENT - STREET ADDRESS [LINE 2] (2-.112)"
* address[home].line -> "288: source value from PATIENT - STREET ADDRESS [LINE 3] (2-.113)"
* address[home].city -> "289: source value from PATIENT - CITY (2-.114)"
* address[home].state -> "290: source value from PATIENT - STATE (2-.115)"
* address[home].postalCode -> "291: source value from PATIENT - ZIP+4 (2-.1112)"
* address[home].country -> "292: source value from PATIENT - COUNTRY (2-.1173)" "confirm association with .111 etc."
* address[home].period.start -> "293: source value from PATIENT - TEMPORARY ADDRESS START DATE (2-.1217)" "need other addresses, including temp; not just range"
* address[home].period.end -> "294: source value from PATIENT - TEMPORARY ADDRESS END DATE (2-.1218)" "need other addresses, including temp; not just range"
* communication.language -> "295: source value from PATIENT - LANGUAGE DATE/TIME > LANGUAGE DATE/TIME - PREFERRED LANGUAGE (2-7 > 2.07-.02)"
* managingOrganization.display -> "296: fixed value = Veterans Health Administration"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex].valueCode -> "554: terminologyMaps using VF_birthSex on PATIENT - SEX (2-.02)" "added extension url"
* gender -> "555: terminologyMaps using VF_adminGender on PATIENT - SELF IDENTIFIED GENDER (2-.024)"
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
* address[home].line -> "SPatient.SPatientGISAddress.StreetAddress1"
* address[home].line -> "SPatient.SPatientGISAddress.StreetAddress2"
* address[home].city -> "SPatient.SPatientGISAddress.City"
* address[home].state -> "SPatient.SPatientGISAddress.StateIEN,SPatient.SPatientGISAddress.StateSID"
* address[home].postalCode -> "SPatient.SPatientGISAddress.Zip4"
* communication.language -> "Patient.PreferredLanguage.PreferredLanguage"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex].valueCode -> "Patient.Patient.Gender,Patient.PatientBirthSex.BirthSex,SPatient.SPatient.Gender,SPatient.SPatientBirthSex.BirthSex,SPatient.SPatientBirthSex.BirthSex"
* gender -> "Patient.Patient.SelfIdentifiedGender,SPatient.SPatient.SelfIdentifiedGender"
* maritalStatus -> "Outpat.Visit.PatientMaritalStatus,Outpat.Workload.PatientMaritalStatus,Patient.Patient.MaritalStatusIEN,SPatient.SPatient.MaritalStatusIEN"
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept -> "Outpat.Visit.PatientReligion,Outpat.Visit.PatientReligionCode,Outpat.Workload.PatientReligion,Outpat.Workload.PatientReligionCode,Patient.Patient.ReligionIEN,SPatient.SPatient.ReligionIEN"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity].valueCodeableConcept -> "Patient.Patient.SelfIdentifiedGender,SPatient.SPatient.SelfIdentifiedGender"

Mapping: vpr-to-Patient
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: Patient
* identifier.value -> "GET PATIENT DATA-reaction.mechanism"