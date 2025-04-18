Profile: LabObservationChemhemtoxriaserDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationChemhemtoxriaserDiagnosticReport
Title: "Lab Observation: Chem, hem, tox, ria, ser DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (63.04) to us-core-diagnosticreport-lab."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab|7.0.0"
* basedOn and category[LaboratorySlice] and category.text and code.coding and code.coding.code and code.coding.system and code.coding.display and code.text and subject and result MS
* basedOn only Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest)
* subject only Reference(Patient)
* result only Reference(LabObservationChemhemtoxriaserObservation)
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code.coding.system = "http://loinc.org"
* subject obeys locdr-46-1421

Invariant: locdr-46-1421
Description: "If PATIENT - LABORATORY REFERENCE (2-63) == LAB DATA – LRDFN (63-.01) then reference /Patient based on (2-)"
Severity: #warning
Expression: "true"

Mapping: source-to-LabObservationChemhemtoxriaserDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserDiagnosticReport
* basedOn -> "1687: reference based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.04-.35 > 63.07-3)" "CDW does not contain this linkage for Chem, but still a valid map"
* status -> "2050: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2051: target not supported" "auto added because of must-support"
* issued -> "2052: target not supported" "auto added because of must-support"
* performer -> "2053: target not supported" "auto added because of must-support"
* category[LaboratorySlice] -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* category.text -> "1662: source value based on LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - WKLD CODE LAB SECTION > WKLD CODE LAB SECT - NAME (60-64 > 64-13 > 64.21-.01)" "Lab Section"
* code.coding -> "1420: source value based on LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.coding.code -> "1420-1: source value based on LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - CODE (60-64 > 64-25 > 95.3-.01)" "generated from mapParameter line 1"
* code.coding.system -> "1420-2: fixed value = http://loinc.org" "generated from mapParameter line 2"
* code.coding.display -> "1420-3: source value based on LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - COMPONENT (60-64 > 64-25 > 95.3-1)" "generated from mapParameter line 3"
* code.text -> "1661: source value based on LABORATORY TEST - NAME (60-.01)" "Added the lab test name (non-standardized)"
* subject -> "1421: reference based on PATIENT - (2-) if PATIENT - LABORATORY REFERENCE (2-63) == LAB DATA – LRDFN (63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference based on See mapping for Lab Observation"

Mapping: cdw-to-LabObservationChemhemtoxriaserDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserDiagnosticReport
* category.text -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.code -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.display -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.text -> "Dim.LabChemTest.LabChemTestName"