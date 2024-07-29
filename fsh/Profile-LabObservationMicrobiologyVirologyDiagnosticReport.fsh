Profile: LabObservationMicrobiologyVirologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyVirologyDiagnosticReport
Title: "Lab Observation: Microbiology Virology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-by 0..1 and va-at 0..1
* extension contains http://va.gov/fhir/StructureDefinition/extension-DiagnosticReport-note named extension-DiagnosticReport-note 0..1
* extension[http://va.gov/fhir/StructureDefinition/extension-DiagnosticReport-note].valueString and identifier.value and identifier.system and basedOn and status and effectiveDateTime and issued and performer[va-by] and performer[va-at] and category[LaboratorySlice] and category.text and code.coding and code.coding.code and code.coding.system and code.coding.display and code.text and subject and result MS
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.5"
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer[va-by] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* performer[va-at] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code.coding.system = "http://loinc.org"
* result only Reference(LabObservationObservation)

Mapping: vista-to-LabObservationMicrobiologyVirologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyDiagnosticReport
* extension[http://va.gov/fhir/StructureDefinition/extension-DiagnosticReport-note].valueString -> "1446: source value from MICROBIOLOGY - VIROLOGY RPT REMARK > VIROLOGY RPT REMARK - VIROLOGY RPT REMARK (63.05-37 > 63.44-.01)" "This is the correct mapping, however, .note was not added to DR until FHIR R5. Keeping the mapping here for future"
* identifier.value -> "1605: source value from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - IEN (63.05-.35 > 63.5-.001)"
* identifier.system -> "1605-1: fixed value = http://va.gov/identifiers/$Sta3n/63.5" "from mapParameter 1"
* basedOn -> "1690: reference from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.05-.35 > 63.5-3)"
* status -> "1416: terminologyMaps using VF_DiagnosticReportLabStatus on MICROBIOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (63.05-.35 > 63.5-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1424: source value from MICROBIOLOGY - DATE/TIME SPECIMEN TAKEN (63.05-.01)"
* issued -> "1429: source value from MICROBIOLOGY - DATE REPORT COMPLETED (63.05-.03)"
* performer[va-by] -> "1434: reference from MICROBIOLOGY - VERIFY PERSON (63.05-.04)" "US Core Practitioner is must support resource"
* performer[va-at] -> "1682: reference from MICROBIOLOGY - ACCESSIONING INSTITUTION (63.05-.112)"
* category[LaboratorySlice] -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* category.text -> "1662: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - WKLD CODE LAB SECTION > WKLD CODE LAB SECT - NAME (60-64 > 64-13 > 64.21-.01)" "Lab Section"
* code.coding -> "1420: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.coding.code -> "1420-1: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - CODE (60-64 > 64-25 > 95.3-.01)" "from mapParameter 1"
* code.coding.system -> "1420-2: fixed value = http://loinc.org" "from mapParameter 2"
* code.coding.display -> "1420-3: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - COMPONENT (60-64 > 64-25 > 95.3-1)" "from mapParameter 3"
* code.text -> "1661: source value from LABORATORY TEST - NAME (60-.01)" "Added the lab test name (non-standardized)"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Lab Observation"

Mapping: cdw-to-LabObservationMicrobiologyVirologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyVirologyDiagnosticReport
* extension[http://va.gov/fhir/StructureDefinition/extension-DiagnosticReport-note].valueString -> "Micro.VirologyReports.VirologyReportRemark"
* basedOn -> "Micro.MicroOrderedTest.CPRSOrderIEN,SStaff.SMicroOrderedTest.CPRSOrderIEN"
* status -> "Micro.MicroOrderedTest.DispositionLabCodeIEN,SStaff.SMicroOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime,Micro.AntibioticSensitivityComment.SpecimenTakenDateTime,Micro.BacteriologyReports.SpecimenTakenDateTime,Micro.MicroAntibioticLevel.SpecimenTakenDateTime,Micro.MicroAudit.SpecimenTakenDateTime,Micro.Microbiology.SpecimenTakenDateTime,Micro.MicroOrderedTest.SpecimenTakenDateTime,Micro.MicroSterilityResults.SpecimenTakenDateTime,Micro.MycobacteriologyReports.SpecimenTakenDateTime,Micro.Mycology.SpecimenTakenDateTime,Micro.MycologyReports.SpecimenTakenDateTime,Micro.Parasitology.SpecimenTakenDateTime,Micro.ParasitologyReports.SpecimenTakenDateTime,Micro.ParasitologyStage.SpecimenTakenDateTime,Micro.Virology.SpecimenTakenDateTime,Micro.VirologyReports.SpecimenTakenDateTime,SStaff.SMicroOrderedTest.SpecimenTakenDateTime"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"
* performer[va-by] -> "Micro.Microbiology.VerifyingStaffIEN"
* performer[va-at] -> "Micro.Microbiology.AccessioningInstitutionIEN"
* category.text -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.code -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.display -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.text -> "Dim.LabChemTest.LabChemTestName"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"