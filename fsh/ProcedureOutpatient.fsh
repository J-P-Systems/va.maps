Profile: ProcedureOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureOutpatient
Title: "Procedure: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file V CPT (#9000010.18) to us-core-procedure"
* ^status = #draft
* subject and encounter and code.text and reasonCode and performedDateTime and performer.actor and note.text and category.coding.code and code.coding and status MS
* category.coding.code = #371883000
* status = #completed

Mapping: vista-to-ProcedureOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureOutpatient
* subject -> "1299: reference from V CPT - PATIENT NAME > PATIENT/IHS - NAME (#9000010.18-.02 > 9000001-.01)" "is reference to file #2"
* encounter -> "1300: reference from V CPT - VISIT (#9000010.18-.03)"
* code.text -> "1301: source value from V CPT - PROVIDER NARRATIVE > PROVIDER NARRATIVE - NARRATIVE (#9000010.18-.04 > 9999999.27-.01)"
* reasonCode -> "1302: source value from V CPT - DIAGNOSIS > ICD DIAGNOSIS (#9000010.18-.05 > 80-)"
* reasonCode -> "1303: source value from V CPT - DIAGNOSIS 2 > ICD DIAGNOSIS (#9000010.18-.09 > 80-)"
* reasonCode -> "1304: source value from V CPT - DIAGNOSIS 3 > ICD DIAGNOSIS (#9000010.18-.1 > 80-)"
* reasonCode -> "1305: source value from V CPT - DIAGNOSIS 4 > ICD DIAGNOSIS (#9000010.18-.11 > 80-)"
* reasonCode -> "1306: source value from V CPT - DIAGNOSIS 5 > ICD DIAGNOSIS (#9000010.18-.12 > 80-)"
* reasonCode -> "1307: source value from V CPT - DIAGNOSIS 6 > ICD DIAGNOSIS (#9000010.18-.13 > 80-)"
* reasonCode -> "1308: source value from V CPT - DIAGNOSIS 7 > ICD DIAGNOSIS (#9000010.18-.14 > 80-)"
* reasonCode -> "1309: source value from V CPT - DIAGNOSIS 8 > ICD DIAGNOSIS (#9000010.18-.15 > 80-)"
* performedDateTime -> "1310: source value from V CPT - EVENT DATE AND TIME (#9000010.18-1201)"
* performer.actor -> "1311: reference from V CPT - ENCOUNTER PROVIDER (#9000010.18-1204)"
* note.text -> "1312: source value from V CPT - COMMENTS (#9000010.18-81101)"
* category.coding.code -> "1314: fixed value = #371883000"
* code.coding -> "1413: source value from V CPT - CPT > CPT (#9000010.18-.01 > 81-)"
* status -> "1539: fixed value = #completed" "From the description of the file these look like completed procedures. Check with Jay."

Mapping: cdw-to-ProcedureOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureOutpatient
* encounter -> "Outpat.VProcedure.VisitDateTime\nOutpat.VProcedureCPTModifier.VisitDateTime\nOutpat.VProcedureDiagnosis.VisitDateTime\nOutpat.WorkloadVProcedure.VisitDateTime\nOutpat.WorkloadVProcedureCPTModifier.VisitDateTime\nOutpat.WorkloadVProcedureDiagnosis.VisitDateTime"
* code.text -> "Dim.ProviderNarrative.ProviderNarrative"
* performedDateTime -> "Outpat.VProcedure.EventDateTime\nOutpat.VProcedureDiagnosis.EventDateTime\nOutpat.WorkloadVProcedure.EventDateTime\nOutpat.WorkloadVProcedureDiagnosis.EventDateTime"
* note.text -> "Outpat.VProcedure.Comments\nOutpat.WorkloadVProcedure.Comments"