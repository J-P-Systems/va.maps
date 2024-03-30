Profile: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Title: "Laboratory Results: Microbiology Mycology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion and identifier.value and basedOn and status and effectiveDateTime and issued and performer and category and category.text and code.coding and code.text and subject and result MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* result only Reference(LaboratoryResultsObservation)

Mapping: vista-to-LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
* conclusion -> "1444: source value from MICROBIOLOGY - MYCOLOGY RPT REMARK > MYCOLOGY RPT REMARK - MYCOLOGY RPT REMARK (#63.05-21 > 63.38-.01)"
* identifier.value -> "1605: source value from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.05-.35 > 63.5-.001)"
* basedOn -> "1690: reference from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (#63.05-.35 > 63.5-3)"
* status -> "1416: terminologyMaps using VF_DiagnosticReportLabStatus on MICROBIOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.05-.35 > 63.5-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1424: source value from MICROBIOLOGY - DATE/TIME SPECIMEN TAKEN (#63.05-.01)"
* issued -> "1429: source value from MICROBIOLOGY - DATE REPORT COMPLETED (#63.05-.03)"
* performer -> "1434: reference from MICROBIOLOGY - VERIFY PERSON (#63.05-.04)" "US Core Practitioner is must support resource"
* performer -> "1682: reference from MICROBIOLOGY - ACCESSIONING INSTITUTION (#63.05-.112)"
* category -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* category.text -> "1662: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WLKD CODE - WKLD CODE LAB SECTION > WLKD CODE LAB SECT - NAME (#60-64 > 64-13 > 64.21-.01)" "Lab Section"
* code.coding -> "1420: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (#60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.text -> "1661: source value from LABORATORY TEST - NAME (#60-.01)" "Added the lab test name (non-standardized)"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (#2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Laboratory Results"

Mapping: cdw-to-LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
* conclusion -> "Micro.MycologyReports.MycologyReportRemark"
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime,Micro.AntibioticSensitivityComment.SpecimenTakenDateTime,Micro.BacteriologyReports.SpecimenTakenDateTime,Micro.MicroAntibioticLevel.SpecimenTakenDateTime,Micro.MicroAudit.SpecimenTakenDateTime,Micro.Microbiology.SpecimenTakenDateTime,Micro.MicroOrderedTest.SpecimenTakenDateTime,Micro.MicroSterilityResults.SpecimenTakenDateTime,Micro.MycobacteriologyReports.SpecimenTakenDateTime,Micro.Mycology.SpecimenTakenDateTime,Micro.MycologyReports.SpecimenTakenDateTime,Micro.Parasitology.SpecimenTakenDateTime,Micro.ParasitologyReports.SpecimenTakenDateTime,Micro.ParasitologyStage.SpecimenTakenDateTime,SStaff.SMicroOrderedTest.SpecimenTakenDateTime,Micro.Virology.SpecimenTakenDateTime,Micro.VirologyReports.SpecimenTakenDateTime"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"
* code.text -> "Dim.LabChemTest.LabChemTestName"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Pathology.Autopsy.LRDFN,Micro.BacteriologyReports.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,SStaff.SMicroOrderedTest.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN"