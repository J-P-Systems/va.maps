Instance: CMVFimmunizationStatusReason
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFimmunizationStatusReason"
* name = "VF_immunizationStatusReason"
* title = "VF_immunizationStatusReason"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_immunizationStatusReason"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFimmunizationStatusReason"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9999999.14-.01"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* group[=].element[0].code = #DECLINED_FLU_IMM__HISTORICAL_
* group[=].element[=].display = "DECLINED FLU IMM (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #DECLINED_PNEUMOCOCCAL__HISTORICAL_
* group[=].element[=].display = "DECLINED PNEUMOCOCCAL (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #DECLINED_TETANUS_DIPT__HISTORICAL_
* group[=].element[=].display = "DECLINED TETANUS/DIPT (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #DECLINES_FLU_VAX__HISTORICAL_
* group[=].element[=].display = "DECLINES FLU VAX (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #DECLINES_PNEUMOVAX__HISTORICAL_
* group[=].element[=].display = "DECLINES PNEUMOVAX (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #FLU_REFUSED__HISTORICAL_
* group[=].element[=].display = "FLU REFUSED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #FLU_VAC_NOT_AVAILABLE__HISTORICAL_
* group[=].element[=].display = "FLU VAC NOT AVAILABLE (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #FLU_VACCINE_REFUSED__HISTORICAL_
* group[=].element[=].display = "FLU VACCINE REFUSED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #INFLUENZA_CONTRAINDICATED__HISTORICAL_
* group[=].element[=].display = "INFLUENZA CONTRAINDICATED (HISTORICAL)"
* group[=].element[=].target.code = #MEDPREC
* group[=].element[=].target.display = "medical precaution"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #INFLUENZA_CONTRAINDICATED__PERM___HISTORICAL_
* group[=].element[=].display = "INFLUENZA CONTRAINDICATED (PERM) (HISTORICAL)"
* group[=].element[=].target.code = #MEDPREC
* group[=].element[=].target.display = "medical precaution"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #INFLUENZA_REFUSED_DECLINED__HISTORICAL_
* group[=].element[=].display = "INFLUENZA REFUSED/DECLINED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #Influenza_Vaccination__Refused___HISTORICAL_
* group[=].element[=].display = "Influenza Vaccination (Refused) (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #INFLUENZA_VACCINE_CONTRAINDICATED__HISTORICAL_
* group[=].element[=].display = "INFLUENZA VACCINE CONTRAINDICATED (HISTORICAL)"
* group[=].element[=].target.code = #MEDPREC
* group[=].element[=].target.display = "medical precaution"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #PNEUMOCOCCAL_REFUSED__HISTORICAL_
* group[=].element[=].display = "PNEUMOCOCCAL REFUSED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #PNEUMOVAX_CONTRAINDICATED__HISTORICAL_
* group[=].element[=].display = "PNEUMOVAX CONTRAINDICATED (HISTORICAL)"
* group[=].element[=].target.code = #MEDPREC
* group[=].element[=].target.display = "medical precaution"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #PNEUMOVAX_DECLINED__HISTORICAL_
* group[=].element[=].display = "PNEUMOVAX DECLINED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #PNEUMOVAX_REFUSED__HISTORICAL_
* group[=].element[=].display = "PNEUMOVAX REFUSED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #PNEUMOVAX_REFUSED_DECLINED__HISTORICAL_
* group[=].element[=].display = "PNEUMOVAX REFUSED/DECLINED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #REFUSED_FLU__HISTORICAL_
* group[=].element[=].display = "REFUSED FLU (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #REFUSED_HPV_VACCINE__HISTORICAL_
* group[=].element[=].display = "REFUSED HPV VACCINE (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #REFUSED_INFLUENZA_VACCINE__HISTORICAL_
* group[=].element[=].display = "REFUSED INFLUENZA VACCINE (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #REFUSED_PNEUMOVAX__HISTORICAL_
* group[=].element[=].display = "REFUSED PNEUMOVAX (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #REFUSED_TETANUS__HISTORICAL_
* group[=].element[=].display = "REFUSED TETANUS (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #REFUSED_INFLUENZA__HISTORICAL_
* group[=].element[=].display = "REFUSED-INFLUENZA (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TET_TOX_CONTRAINDICATED__HISTORICAL_
* group[=].element[=].display = "TET TOX CONTRAINDICATED (HISTORICAL)"
* group[=].element[=].target.code = #MEDPREC
* group[=].element[=].target.display = "medical precaution"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TETANUS_CONTRAINDICATED__HISTORICAL_
* group[=].element[=].display = "TETANUS CONTRAINDICATED (HISTORICAL)"
* group[=].element[=].target.code = #MEDPREC
* group[=].element[=].target.display = "medical precaution"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TETANUS_DIPHTHERIA_VACCINE_NOT_AVAILABLE__HISTORICAL_
* group[=].element[=].display = "TETANUS DIPHTHERIA-VACCINE NOT AVAILABLE (HISTORICAL)"
* group[=].element[=].target.code = #OSTOCK
* group[=].element[=].target.display = "product out of stock"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TETANUS_REFUSED__HISTORICAL_
* group[=].element[=].display = "TETANUS REFUSED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #V__INFLUENZA_NOT_AVAILABLE__HISTORICAL_
* group[=].element[=].display = "V7-INFLUENZA NOT AVAILABLE (HISTORICAL)"
* group[=].element[=].target.code = #OSTOCK
* group[=].element[=].target.display = "product out of stock"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #V__PNEUMOVAX_NOT_AVAILABLE__HISTORICAL_
* group[=].element[=].display = "V7-PNEUMOVAX NOT AVAILABLE (HISTORICAL)"
* group[=].element[=].target.code = #OSTOCK
* group[=].element[=].target.display = "product out of stock"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #ZZPNEUMOCOCCAL_REFUSED__HISTORICAL_
* group[=].element[=].display = "ZZPNEUMOCOCCAL REFUSED (HISTORICAL)"
* group[=].element[=].target.code = #PATOBJ
* group[=].element[=].target.display = "patient objection"
* group[=].element[=].target.equivalence = #wider