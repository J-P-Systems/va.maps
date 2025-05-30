Profile: LabObservationMicrobiologyMycologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycologyObservation
Title: "Lab Observation: Microbiology Mycology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-at 0..1 and va-by 0..1
* status and effectiveDateTime and note and performer[va-at] and performer[va-by] and specimen and identifier.value and identifier.system and code.coding and code.coding.system and code.coding.code and code.coding.display and issued and category[Laboratory] and subject MS
* performer[va-at] only Reference(Organization)
* performer[va-by] only Reference(Practitioner)
* specimen only Reference(LabObservationMicrobiologyMycologySpecimen)
* subject only Reference(Patient)
* status from http://va.gov/fhir/ValueSet/LabObservationStatus
* status ^binding.description = "see mapping [VF_LabObservationStatus](ConceptMap-VF-LabObservationStatus.html)"
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.05"
* code.coding obeys lommo-45-1480
* code.coding.system obeys lommo-45-1480-1
* code.coding.code obeys lommo-45-1480-2
* code.coding.display obeys lommo-45-1480-3
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Invariant: lommo-45-1480
Description: "If Not NULL then source value from (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: lommo-45-1480-1
Description: "If Not NULL then fixed value http://loinc.org"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: lommo-45-1480-2
Description: "If Not NULL then source value from (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: lommo-45-1480-3
Description: "If Not NULL then source value from (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-1)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-LabObservationMicrobiologyMycologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycologyObservation
* status -> "1490: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - MYCOLOGY RPT STATUS (63.05-19)"
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

Mapping: cdw-to-LabObservationMicrobiologyMycologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycologyObservation
* status -> "Micro.Microbiology.MycologyReportStatus"
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime\nMicro.AntibioticSensitivityComment.SpecimenTakenDateTime\nMicro.BacteriologyReports.SpecimenTakenDateTime\nMicro.MicroAntibioticLevel.SpecimenTakenDateTime\nMicro.MicroAudit.SpecimenTakenDateTime\nMicro.Microbiology.SpecimenTakenDateTime\nMicro.MicroOrderedTest.SpecimenTakenDateTime\nMicro.MicroSterilityResults.SpecimenTakenDateTime\nMicro.MycobacteriologyReports.SpecimenTakenDateTime\nMicro.Mycology.SpecimenTakenDateTime\nMicro.MycologyReports.SpecimenTakenDateTime\nMicro.Parasitology.SpecimenTakenDateTime\nMicro.ParasitologyReports.SpecimenTakenDateTime\nMicro.ParasitologyStage.SpecimenTakenDateTime\nMicro.Virology.SpecimenTakenDateTime\nMicro.VirologyReports.SpecimenTakenDateTime\nSStaff.SMicroOrderedTest.SpecimenTakenDateTime"
* note -> "Micro.Microbiology.SpecimenComment"
* performer[va-at] -> "Micro.Microbiology.AccessioningInstitutionIEN"
* performer[va-by] -> "Micro.Microbiology.VerifyingStaffIEN"
* specimen -> "Micro.Microbiology.MicrobiologyAccession"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"
* subject -> "Micro.AntibioticSensitivity.LRDFN\nMicro.AntibioticSensitivityComment.LRDFN\nMicro.BacteriologyReports.LRDFN\nMicro.MicroAntibioticLevel.LRDFN\nMicro.MicroAudit.LRDFN\nMicro.Microbiology.LRDFN\nMicro.MicroOrderedTest.LRDFN\nMicro.MicroSterilityResults.LRDFN\nMicro.MycobacteriologyReports.LRDFN\nMicro.Mycology.LRDFN\nMicro.MycologyReports.LRDFN\nMicro.Parasitology.LRDFN\nMicro.ParasitologyReports.LRDFN\nMicro.ParasitologyStage.LRDFN\nMicro.Virology.LRDFN\nMicro.VirologyReports.LRDFN\nPathology.Autopsy.LRDFN\nPathology.CytoOrganTissueFunction.StaffIEN\nSStaff.SMicroOrderedTest.LRDFN"

Mapping: sda-to-LabObservationMicrobiologyMycologyObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationMicrobiologyMycologyObservation
* status -> "Documents.DocumentCompletionStatus\nLabOrder.Result.ResultStatus"
* performer[va-at] -> "Documents.EnteredAt\nLabOrder.Result.EnteredAt"
* performer[va-by] -> "Documents.Clinician\nDocuments.Extension[DocumentExtension].CareProviders\nLabOrder.Result.VerifiedBy"
* specimen -> "LabOrder.Extension[ResultExtension].GroupName"
* issued -> "Documents.ToTime\nLabOrder.Result.ResultTime"
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"

Mapping: vpr-to-LabObservationMicrobiologyMycologyObservation
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: LabObservationMicrobiologyMycologyObservation
* subject -> "demographics.lrdfn"