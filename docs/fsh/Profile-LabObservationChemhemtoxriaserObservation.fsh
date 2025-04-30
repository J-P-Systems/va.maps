Profile: LabObservationChemhemtoxriaserObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationChemhemtoxriaserObservation
Title: "Lab Observation: Chem, hem, tox, ria, ser Observation"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (63.04) to us-core-observation-lab."
* ^status = #draft
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-at 0..1 and va-by 0..1
* effectiveDateTime and note and performer[va-at] and performer[va-by] and specimen and referenceRange.high and referenceRange.low and identifier.value and identifier.system and interpretation and code.coding and code.coding.system and code.coding.code and code.coding.display and issued and status and valueQuantity.value and valueQuantity.unit and category[Laboratory] and subject MS
* performer[va-at] only Reference(Organization)
* performer[va-by] only Reference(Practitioner)
* specimen only Reference(LabObservationChemhemtoxriaserSpecimen)
* subject only Reference(Patient)
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.04"
* interpretation from http://va.gov/fhir/ValueSet/LabInterpretation
* interpretation ^binding.description = "see mapping [VF_LabInterpretation](ConceptMap-VF-LabInterpretation.html)"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/LabObservationStatus
* status ^binding.description = "see mapping [VF_LabObservationStatus](ConceptMap-VF-LabObservationStatus.html)"
* status obeys loco-41-2234
* status obeys loco-41-2235
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Invariant: loco-41-2234
Description: "If (63.04-.03) is is not NULL and 63.07-10 is not available then fixed value #completed"
Severity: #warning
Expression: "true"

Invariant: loco-41-2235
Description: "If (63.04-.03) is is NULL and 63.07-10 is not available then fixed value #preliminary"
Severity: #warning
Expression: "true"

Mapping: source-to-LabObservationChemhemtoxriaserObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "845: source value based on CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (63.04-.01)"
* note -> "846: source value based on CHEM, HEM, TOX, RIA, SER, etc. - COMMENT > COMMENT - COMMENT (63.04-.99 > 63.041-.01)"
* performer[va-at] -> "847: reference based on CHEM, HEM, TOX, RIA, SER, etc. - ACCESSIONING INSTITUTION (63.04-.112)"
* performer[va-by] -> "1676: reference based on CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (63.04-.04)"
* specimen -> "1656: reference based on CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (63.04-.06)"
* referenceRange.high -> "850: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE HIGH (63.04-.35 > 63.07-13 > 60-100 > 60.01-2)"
* referenceRange.low -> "854: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE LOW (63.04-.35 > 63.07-13 > 60-100 > 60.01-1)"
* identifier.value -> "851: source value based on CHEM, HEM, TOX, RIA, SER, etc. - IEN (63.04-.001)" "Changed from .id to .identifier, added subPath, removed id_generator from mapValue, added .system, and changed from transform to source value"
* identifier.system -> "851-1: fixed value = http://va.gov/identifiers/$Sta3n/63.04" "generated from mapParameter line 1"
* interpretation -> "852: terminologyMaps using VF_LabInterpretation on CHEM, HEM, TOX, RIA, SER, etc. - testnames (63.04-2+through+862)" "Service compares value to reference and infers flag"
* code.coding -> "853: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.04-.35 > 63.07-13 > 60-100 > 60.01-95.3 > 95.3-)"
* code.coding.system -> "853-1: fixed value = http://loinc.org" "generated from mapParameter line 1"
* code.coding.code -> "853-2: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC - CODE (63.04-.35 > 63.07-13 > 60-100 > 60.01-95.3 > 95.3-.01)" "generated from mapParameter line 2"
* code.coding.display -> "853-3: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC - COMPONENT (63.04-.35 > 63.07-13 > 60-100 > 60.01-95.3 > 95.3-1)" "generated from mapParameter line 3"
* issued -> "858: source value based on CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (63.04-.03)"
* status -> "860: terminologyMaps using VF_LabObservationStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (63.04-.35 > 63.07-10)"
* status -> "2234: fixed value = #completed when CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST (63.04-.03) if is not NULL and 63.07-10 is not available"
* status -> "2235: fixed value = #preliminary when CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST (63.04-.03) if is NULL and 63.07-10 is not available"
* valueQuantity.value -> "857: source value based on CHEM, HEM, TOX, RIA, SER, etc. - testnames (63.04-2+through+862)"
* valueQuantity.unit -> "864: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - UNITS (63.04-.35 > 63.07-13 > 60-100 > 60.01-6)" "Use CTTDM map \"VistA Lab Chem Units to UCUM\" to convert VistA text units to UCUM, where possible"
* category[Laboratory] -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* dataAbsentReason -> "2031: target not supported" "because of must-support"
* subject -> "844: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationChemhemtoxriaserObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime,Chem.LabPanel.LabChemSpecimenDateTime,Chem.OrderedLabPanel.LabChemSpecimenDateTime,Chem.PatientLabChem.LabChemSpecimenDateTime"
* note -> "Chem.LabPanel.LabPanelComment"
* performer[va-at] -> "Chem.LabChem.AccessionInstitutionIEN,Chem.PatientLabChem.AccessionInstitutionIEN"
* specimen -> "Chem.LabChem.ShortAccessionNumber,Chem.PatientLabChem.ShortAccessionNumber"
* issued -> "Chem.LabChem.LabChemCompleteDateTime,Chem.LabPanel.LabChemCompleteDateTime,Chem.OrderedLabPanel.LabChemCompleteDateTime,Chem.PatientLabChem.LabChemCompleteDateTime"
* status -> "Chem.LabChem.LabChemCompleteDateTime,Chem.LabPanel.LabChemCompleteDateTime,Chem.OrderedLabPanel.LabChemCompleteDateTime,Chem.PatientLabChem.LabChemCompleteDateTime"
* status -> "Chem.LabChem.LabChemCompleteDateTime,Chem.LabPanel.LabChemCompleteDateTime,Chem.OrderedLabPanel.LabChemCompleteDateTime,Chem.PatientLabChem.LabChemCompleteDateTime"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"

Mapping: sda-to-LabObservationChemhemtoxriaserObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "LabOrder.TestItemCode[LabTestItem].Description,LabOrder.PerformedAt[Organization].Description"
* note -> "LabOrder.Result.Comments"
* performer[va-at] -> "LabOrder.Result.EnteredAt"
* performer[va-by] -> "LabOrder.Result.VerifiedBy"
* specimen -> "LabOrder.Extension[ResultExtension].GroupName"
* issued -> "LabOrder.Result.ResultStatus,LabOrder.Result.ResultTime,LabOrder.ResultItem[LabResultItem].TestItemStatus"
* status -> "LabOrder.Result.ResultStatus,LabOrder.Result.ResultTime,LabOrder.ResultItem[LabResultItem].TestItemStatus"
* status -> "LabOrder.Result.ResultStatus,LabOrder.Result.ResultTime,LabOrder.ResultItem[LabResultItem].TestItemStatus"
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"

Mapping: vpr-to-LabObservationChemhemtoxriaserObservation
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "panel.collected,accession.collected,accession.test,lab.collected"
* note -> "panel.comment,accession.comment,lab.comment"
* performer[va-at] -> "panel.facility (>4-.01),panel.facility (>4-99),accession.facility (>4-.01),accession.facility (>4-99),lab.facility (>4-.01),lab.facility (>4-99)"
* specimen -> "panel.groupName,accession.groupName,accession.name (>68-.01),lab.groupName"
* issued -> "panel.resulted,panel.status,accession.resulted,accession.status,lab.resulted,lab.status"
* status -> "panel.resulted,panel.status,accession.resulted,accession.status,lab.resulted,lab.status"
* status -> "panel.resulted,panel.status,accession.resulted,accession.status,lab.resulted,lab.status"
* subject -> "demographics.lrdfn"