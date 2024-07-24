Profile: LabObservationChemhemtoxriaserObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationChemhemtoxriaserObservation
Title: "Lab Observation: Chem, hem, tox, ria, ser Observation"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (63.04) to us-core-observation-lab"
* ^status = #draft
* effectiveDateTime and note and performer and specimen and referenceRange.high and referenceRange.low and identifier.value and identifier.system and interpretation and code.coding and code.coding.system and code.coding.code and code.coding.display and issued and status and valueQuantity.value and valueQuantity.unit and category and subject MS
* specimen only Reference(LabObservationChemhemtoxriaserSpecimen)
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.04"
* interpretation from http://va.gov/fhir/ValueSet/VSVFLabInterpretation
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Mapping: vista-to-LabObservationChemhemtoxriaserObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "845: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (63.04-.01)"
* note -> "846: source value from CHEM, HEM, TOX, RIA, SER, etc. - COMMENT > COMMENT - COMMENT (63.04-.99 > 63.041-.01)"
* performer -> "847: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSIONING INSTITUTION (63.04-.112)"
* performer -> "1676: reference from CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (63.04-.04)"
* specimen -> "1656: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (63.04-.06)"
* referenceRange.high -> "850: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE HIGH (63.04-.35 > 63.07-13 > 60-100 > 60.01-2)"
* referenceRange.low -> "854: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE LOW (63.04-.35 > 63.07-13 > 60-100 > 60.01-1)"
* identifier.value -> "851: source value from CHEM, HEM, TOX, RIA, SER, etc. - IEN (63.04-.001)" "Changed from .id to .identifier, added subPath, removed id_generator from mapValue, added .system, and changed from transform to source value"
* identifier.system -> "851-1: fixed value = http://va.gov/identifiers/$Sta3n/63.04" "from mapParameter 1"
* interpretation -> "852: terminologyMaps using VF_LabInterpretation on CHEM, HEM, TOX, RIA, SER, etc. - testnames (63.04-2+through+862)" "Service compares value to reference and infers flag"
* code.coding -> "853: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.04-.35 > 63.07-13 > 60-100 > 60.01-95.03 > 95.3-)"
* code.coding.system -> "853-1: fixed value = http://loinc.org" "from mapParameter 1"
* code.coding.code -> "853-2: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC - CODE (63.04-.35 > 63.07-13 > 60-100 > 60.01-95.03 > 95.3-.01)" "from mapParameter 2"
* code.coding.display -> "853-3: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC - COMPONENT (63.04-.35 > 63.07-13 > 60-100 > 60.01-95.03 > 95.3-1)" "from mapParameter 3"
* issued -> "858: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (63.04-.03)"
* status -> "860: terminologyMaps using VF_LabObservationStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (63.04-.35 > 63.07-10)"
* valueQuantity.value -> "857: source value from CHEM, HEM, TOX, RIA, SER, etc. - testnames (63.04-2+through+862)"
* valueQuantity.unit -> "864: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - UNITS (63.04-.35 > 63.07-13 > 60-100 > 60.01-6)" "Use CTTDM map \"VistA Lab Chem Units to UCUM\" to convert VistA text units to UCUM, where possible"
* category -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* subject -> "844: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationChemhemtoxriaserObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime,Chem.LabPanel.LabChemSpecimenDateTime,Chem.OrderedLabPanel.LabChemSpecimenDateTime,Chem.PatientLabChem.LabChemSpecimenDateTime"
* note -> "Chem.LabPanel.LabPanelComment"
* performer -> "Chem.LabChem.AccessionInstitutionIEN,Chem.PatientLabChem.AccessionInstitutionIEN"
* specimen -> "Chem.LabChem.ShortAccessionNumber,Chem.PatientLabChem.ShortAccessionNumber"
* issued -> "Chem.LabChem.LabChemCompleteDateTime,Chem.LabPanel.LabChemCompleteDateTime,Chem.OrderedLabPanel.LabChemCompleteDateTime,Chem.PatientLabChem.LabChemCompleteDateTime"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"