Instance: VF-immunizationStatusReason
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-immunizationStatusReason"
* name = "VF_immunizationStatusReason"
* title = "VF_immunizationStatusReason"
* status = #active
* experimental = false
* description = "Terminology Maps VF_immunizationStatusReason"
* sourceCanonical = "http://va.gov/fhir/ValueSet/immunizationStatusReason-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/immunizationStatusReason"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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

ValueSet: immunizationStatusReason
Title: "immunizationStatusReason FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_immunizationStatusReason](ConceptMap-VF-immunizationStatusReason.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImmunizationStatusReason"
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#PATOBJ "patient objection"
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#MEDPREC "medical precaution"
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#OSTOCK "product out of stock"

ValueSet: immunizationStatusReason-vista
Title: "immunizationStatusReason VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_immunizationStatusReason](ConceptMap-VF-immunizationStatusReason.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImmunizationStatusReason_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DECLINED_FLU_IMM__HISTORICAL_ "DECLINED FLU IMM (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DECLINED_PNEUMOCOCCAL__HISTORICAL_ "DECLINED PNEUMOCOCCAL (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DECLINED_TETANUS_DIPT__HISTORICAL_ "DECLINED TETANUS/DIPT (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DECLINES_FLU_VAX__HISTORICAL_ "DECLINES FLU VAX (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DECLINES_PNEUMOVAX__HISTORICAL_ "DECLINES PNEUMOVAX (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#FLU_REFUSED__HISTORICAL_ "FLU REFUSED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#FLU_VAC_NOT_AVAILABLE__HISTORICAL_ "FLU VAC NOT AVAILABLE (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#FLU_VACCINE_REFUSED__HISTORICAL_ "FLU VACCINE REFUSED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#INFLUENZA_CONTRAINDICATED__HISTORICAL_ "INFLUENZA CONTRAINDICATED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#INFLUENZA_CONTRAINDICATED__PERM___HISTORICAL_ "INFLUENZA CONTRAINDICATED (PERM) (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#INFLUENZA_REFUSED_DECLINED__HISTORICAL_ "INFLUENZA REFUSED/DECLINED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#Influenza_Vaccination__Refused___HISTORICAL_ "Influenza Vaccination (Refused) (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#INFLUENZA_VACCINE_CONTRAINDICATED__HISTORICAL_ "INFLUENZA VACCINE CONTRAINDICATED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PNEUMOCOCCAL_REFUSED__HISTORICAL_ "PNEUMOCOCCAL REFUSED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PNEUMOVAX_CONTRAINDICATED__HISTORICAL_ "PNEUMOVAX CONTRAINDICATED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PNEUMOVAX_DECLINED__HISTORICAL_ "PNEUMOVAX DECLINED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PNEUMOVAX_REFUSED__HISTORICAL_ "PNEUMOVAX REFUSED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PNEUMOVAX_REFUSED_DECLINED__HISTORICAL_ "PNEUMOVAX REFUSED/DECLINED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#REFUSED_FLU__HISTORICAL_ "REFUSED FLU (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#REFUSED_HPV_VACCINE__HISTORICAL_ "REFUSED HPV VACCINE (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#REFUSED_INFLUENZA_VACCINE__HISTORICAL_ "REFUSED INFLUENZA VACCINE (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#REFUSED_PNEUMOVAX__HISTORICAL_ "REFUSED PNEUMOVAX (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#REFUSED_TETANUS__HISTORICAL_ "REFUSED TETANUS (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#REFUSED_INFLUENZA__HISTORICAL_ "REFUSED-INFLUENZA (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TET_TOX_CONTRAINDICATED__HISTORICAL_ "TET TOX CONTRAINDICATED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TETANUS_CONTRAINDICATED__HISTORICAL_ "TETANUS CONTRAINDICATED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TETANUS_DIPHTHERIA_VACCINE_NOT_AVAILABLE__HISTORICAL_ "TETANUS DIPHTHERIA-VACCINE NOT AVAILABLE (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TETANUS_REFUSED__HISTORICAL_ "TETANUS REFUSED (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#V__INFLUENZA_NOT_AVAILABLE__HISTORICAL_ "V7-INFLUENZA NOT AVAILABLE (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#V__PNEUMOVAX_NOT_AVAILABLE__HISTORICAL_ "V7-PNEUMOVAX NOT AVAILABLE (HISTORICAL)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ZZPNEUMOCOCCAL_REFUSED__HISTORICAL_ "ZZPNEUMOCOCCAL REFUSED (HISTORICAL)"