Profile: LaboratoryResultsChemhemtoxriaserDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsChemhemtoxriaserDiagnosticReport
Title: "Laboratory Results: Chem, hem, tox, ria, ser DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (63.04) to us-core-diagnosticreport-lab"
* ^status = #draft
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-by 0..1 and va-at 0..1
* identifier.value and identifier.system and basedOn and status and effectiveDateTime and issued and performer[va-by] and performer[va-at] and category[LaboratorySlice] and category.text and code.coding and code.coding.code and code.coding.system and code.coding.display and code.text and subject and result MS
* identifier.system = "http://va.gov/fhir/identifiers/Sta3n$stationNr/63.07"
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer[va-by] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* performer[va-at] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code.coding.system = "http://loinc.org"
* result only Reference(LaboratoryResultsObservation)

Mapping: vista-to-LaboratoryResultsChemhemtoxriaserDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsChemhemtoxriaserDiagnosticReport
* identifier.value -> "1602: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - IEN (63.04-.35 > 63.07-.001)"
* identifier.system -> "1602-1: fixed value = http://va.gov/fhir/identifiers/Sta3n$stationNr/63.07" "from mapParameter 1"
* basedOn -> "1687: reference from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.04-.35 > 63.07-3)" "CDW does not contain this linkage for Chem, but still a valid map"
* status -> "1415: terminologyMaps using VF_DiagnosticReportLabStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (63.04-.35 > 63.07-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1423: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (63.04-.01)"
* issued -> "1428: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (63.04-.03)"
* performer[va-by] -> "1433: reference from CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (63.04-.04)" "US Core Practitioner is must support resource"
* performer[va-at] -> "1683: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSIONING INSTITUTION (63.04-.112)"
* category[LaboratorySlice] -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* category.text -> "1662: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - WKLD CODE LAB SECTION > WKLD CODE LAB SECT - NAME (60-64 > 64-13 > 64.21-.01)" "Lab Section"
* code.coding -> "1420: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.coding.code -> "1420-1: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - CODE (60-64 > 64-25 > 95.3-.01)" "from mapParameter 1"
* code.coding.system -> "1420-2: fixed value = http://loinc.org" "from mapParameter 2"
* code.coding.display -> "1420-3: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - COMPONENT (60-64 > 64-25 > 95.3-1)" "from mapParameter 3"
* code.text -> "1661: source value from LABORATORY TEST - NAME (60-.01)" "Added the lab test name (non-standardized)"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Laboratory Results"

Mapping: cdw-to-LaboratoryResultsChemhemtoxriaserDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsChemhemtoxriaserDiagnosticReport
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime,Chem.LabPanel.LabChemSpecimenDateTime,Chem.OrderedLabPanel.LabChemSpecimenDateTime,Chem.PatientLabChem.LabChemSpecimenDateTime"
* issued -> "Chem.LabChem.LabChemCompleteDateTime,Chem.LabPanel.LabChemCompleteDateTime,Chem.OrderedLabPanel.LabChemCompleteDateTime,Chem.PatientLabChem.LabChemCompleteDateTime"
* performer[va-at] -> "Chem.LabChem.AccessionInstitutionIEN,Chem.PatientLabChem.AccessionInstitutionIEN"
* category.text -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.code -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.display -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.text -> "Dim.LabChemTest.LabChemTestName"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"