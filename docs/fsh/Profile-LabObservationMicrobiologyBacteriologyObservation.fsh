Profile: LabObservationMicrobiologyBacteriologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservation
Title: "Lab Observation: Microbiology Bacteriology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains va-component 0..1
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-at 0..1 and va-by 0..1
* note and status and component[va-component].code and component[va-component].code.coding.code and component[va-component].code.coding.system and component[va-component].valueString and component[va-component].interpretation and effectiveDateTime and performer[va-at] and performer[va-by] and specimen and identifier.value and identifier.system and code.coding and code.coding.system and code.coding.code and code.coding.display and issued and category[Laboratory] and subject MS
* performer[va-at] only Reference(Organization)
* performer[va-by] only Reference(Practitioner)
* specimen only Reference(LabObservationMicrobiologyBacteriologySpecimen)
* subject only Reference(Patient)
* status from http://va.gov/fhir/ValueSet/LabObservationStatus
* status ^binding.description = "see mapping [VF_LabObservationStatus](ConceptMap-VF-LabObservationStatus.html)"
* component[va-component].code.coding.system = "http://loinc.org"
* component[va-component].interpretation from http://va.gov/fhir/ValueSet/AntibioticSensitivityInterpretation
* component[va-component].interpretation ^binding.description = "see mapping [VF_AntibioticSensitivityInterpretation](ConceptMap-VF-AntibioticSensitivityInterpretation.html)"
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.05"
* code.coding obeys lombo-49-1480
* code.coding.system obeys lombo-49-1480-1
* code.coding.code obeys lombo-49-1480-2
* code.coding.display obeys lombo-49-1480-3
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Invariant: lombo-49-1480
Description: "If Not NULL then source value from (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: lombo-49-1480-1
Description: "If Not NULL then fixed value http://loinc.org"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: lombo-49-1480-2
Description: "If Not NULL then source value from (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: lombo-49-1480-3
Description: "If Not NULL then source value from (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-1)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservation
* note -> "1455: source value based on MICROBIOLOGY - ORGANISM > ORGANISM - COMMENT > COMMENT - COMMENT (63.05-12 > 63.3-2 > 63.31-.01)"
* status -> "1488: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - BACT RPT STATUS (63.05-11.5)"
* component[va-component].code -> "1522: transform using null on MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM (63.05-12 > 63.3-5+to+160)" "antibiotic sensitivity\nWhat is default if no LOINC? Use text or is there a default LOINC?\n48611-8 Antibiotic tested [Identifier] against isolate"
* component[va-component].code.coding.code -> "1522-1: fixed value" "generated from mapParameter line 1"
* component[va-component].code.coding.system -> "1522-2: fixed value = http://loinc.org" "generated from mapParameter line 2"
* component[va-component].valueString -> "1523: source value based on MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM (63.05-12 > 63.3-5+to+160)" "antibiotic sensitivity.AntibioticSensitivityValue"
* component[va-component].interpretation -> "1524: terminologyMaps using VF_AntibioticSensitivityInterpretation on MICROBIOLOGY - ORGANISM > ORGANISM - * INTERPR (63.05-12 > 63.3-5.1+to+160.1)" "antibiotic sensitivity.AntibioticSensitivityInterpretation"
* effectiveDateTime -> "1450: source value based on MICROBIOLOGY - DATE/TIME SPECIMEN TAKEN (63.05-.01)"
* note -> "1454: source value based on MICROBIOLOGY - COMMENT ON SPECIMEN (63.05-.99)"
* performer[va-at] -> "1464: reference based on MICROBIOLOGY - ACCESSIONING INSTITUTION (63.05-.112)"
* performer[va-by] -> "1679: reference based on MICROBIOLOGY - VERIFY PERSON (63.05-.04)"
* specimen -> "1659: reference based on MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* identifier.value -> "1476: source value based on MICROBIOLOGY - IEN (63.05-.001)"
* identifier.system -> "1476-1: fixed value = http://va.gov/identifiers/$Sta3n/63.05" "generated from mapParameter line 1"
* code.coding -> "1480: source value based on MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) if Not NULL"
* code.coding.system -> "1480-1: fixed value = http://loinc.org if Not NULL" "generated from mapParameter line 1"
* code.coding.code -> "1480-2: source value based on MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC - CODE (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-.01) if Not NULL" "generated from mapParameter line 2"
* code.coding.display -> "1480-3: source value based on MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC - COMPONENT (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-1) if Not NULL" "generated from mapParameter line 3"
* issued -> "1484: source value based on MICROBIOLOGY - DATE REPORT COMPLETED (63.05-.03)"
* category[Laboratory] -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* dataAbsentReason -> "2031: target not supported" "because of must-support"
* subject -> "844: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservation
* status -> "Micro.Microbiology.BacteriologyReportStatus"
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime,Micro.AntibioticSensitivityComment.SpecimenTakenDateTime,Micro.BacteriologyReports.SpecimenTakenDateTime,Micro.MicroAntibioticLevel.SpecimenTakenDateTime,Micro.MicroAudit.SpecimenTakenDateTime,Micro.Microbiology.SpecimenTakenDateTime,Micro.MicroOrderedTest.SpecimenTakenDateTime,Micro.MicroSterilityResults.SpecimenTakenDateTime,Micro.MycobacteriologyReports.SpecimenTakenDateTime,Micro.Mycology.SpecimenTakenDateTime,Micro.MycologyReports.SpecimenTakenDateTime,Micro.Parasitology.SpecimenTakenDateTime,Micro.ParasitologyReports.SpecimenTakenDateTime,Micro.ParasitologyStage.SpecimenTakenDateTime,Micro.Virology.SpecimenTakenDateTime,Micro.VirologyReports.SpecimenTakenDateTime,SStaff.SMicroOrderedTest.SpecimenTakenDateTime"
* note -> "Micro.Microbiology.SpecimenComment"
* performer[va-at] -> "Micro.Microbiology.AccessioningInstitutionIEN"
* performer[va-by] -> "Micro.Microbiology.VerifyingStaffIEN"
* specimen -> "Micro.Microbiology.MicrobiologyAccession"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"

Mapping: sda-to-LabObservationMicrobiologyBacteriologyObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationMicrobiologyBacteriologyObservation
* status -> "Documents.DocumentCompletionStatus,LabOrder.Result.ResultStatus"
* performer[va-at] -> "Documents.EnteredAt,LabOrder.Result.EnteredAt"
* performer[va-by] -> "Documents.Clinician,Documents.Extension[DocumentExtension].CareProviders,LabOrder.Result.VerifiedBy"
* specimen -> "LabOrder.Extension[ResultExtension].GroupName"
* issued -> "Documents.ToTime,LabOrder.Result.ResultTime"
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"

Mapping: vpr-to-LabObservationMicrobiologyBacteriologyObservation
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: LabObservationMicrobiologyBacteriologyObservation
* note -> "accession.value [m]"
* component[va-component].code -> "accession.value [m]"
* component[va-component].valueString -> "accession.value [m]"
* component[va-component].interpretation -> "accession.value [m]"
* subject -> "demographics.lrdfn"