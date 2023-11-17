Profile: DiagnosticReportforLabChemhemtoxriaserDiagnosticReport
Parent: http://va.gov/fhir/StructureDefinition/DiagnosticReportforLabDiagnosticReport
Id: DiagnosticReportforLabChemhemtoxriaserDiagnosticReport
Title: "Diagnostic Report for Lab: Chem, hem, tox, ria, ser {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA CHEM, HEM, TOX, RIA, SER, etc. (file 63.04) to FHIR DiagnosticReport"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)

Mapping: vista-to-DiagnosticReportforLabChemhemtoxriaserDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabChemhemtoxriaserDiagnosticReport
* identifier.value -> "1602: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - IEN (#63.04-.35 > 63.07-.001)"
* status -> "1415: terminologyMaps using VF_DiagnosticReportLabStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.04-.35 > 63.07-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* code.text -> "1535: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - LAB SECTION > LAB SECTION - NAME (#63.04-.35 > 63.07-9 > 62-6 > 62.2-.01)" "Use this map in addition to key 1521 to indicate the coded value of \"Laboratory report\" and include the type of report from VistA"
* effectiveDateTime -> "1423: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (#63.04-.01)"
* issued -> "1428: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (#63.04-.03)"
* performer -> "1433: reference from CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (#63.04-.04)" "US Core Practitioner is must support resource"

Mapping: cdw-to-DiagnosticReportforLabChemhemtoxriaserDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabChemhemtoxriaserDiagnosticReport
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime\nChem.LabPanel.LabChemSpecimenDateTime\nChem.OrderedLabPanel.LabChemSpecimenDateTime\nChem.PatientLabChem.LabChemSpecimenDateTime"
* issued -> "Chem.LabChem.LabChemCompleteDateTime\nChem.LabPanel.LabChemCompleteDateTime\nChem.OrderedLabPanel.LabChemCompleteDateTime\nChem.PatientLabChem.LabChemCompleteDateTime"