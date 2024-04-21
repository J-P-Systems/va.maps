Profile: LaboratoryResultsDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsDiagnosticReport
Title: "Laboratory Results DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file LABORATORY TEST (60) to us-core-diagnosticreport-lab"
* ^status = #draft
* ^abstract = true
* category[LaboratorySlice] and category.text and code.coding and code.text and subject and result MS
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* result only Reference(LaboratoryResultsObservation)

Mapping: vista-to-LaboratoryResultsDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsDiagnosticReport
* category[LaboratorySlice] -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* category.text -> "1662: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - WKLD CODE LAB SECTION > WKLD CODE LAB SECT - NAME (60-64 > 64-13 > 64.21-.01)" "Lab Section"
* code.coding -> "1420: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.text -> "1661: source value from LABORATORY TEST - NAME (60-.01)" "Added the lab test name (non-standardized)"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Laboratory Results"

Mapping: cdw-to-LaboratoryResultsDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsDiagnosticReport
* code.text -> "Dim.LabChemTest.LabChemTestName"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Pathology.Autopsy.LRDFN,Micro.BacteriologyReports.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,SStaff.SMicroOrderedTest.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN"