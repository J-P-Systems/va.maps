Instance: CMVFOrganizationIdentifierType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFOrganizationIdentifierType"
* name = "VF_OrganizationIdentifierType"
* title = "VF_OrganizationIdentifierType"
* status = #active
* experimental = true
* description = "Terminology Maps VF_OrganizationIdentifierType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFOrganizationIdentifierType"
* group[0].source = "http://www.va.gov/Terminology/VistADefinedTerms/36-6.01"
* group[=].target = "urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001"
* group[=].element[0].code = #2U'_FOR_PAYER_ID_#;
* group[=].element[=].target.code = #INSTPAYER
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FY'_FOR_CLAIM_OFFICE_#;
* group[=].element[=].target.code = #INSTOFFICE
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #NF'_FOR_NAIC_CODE;
* group[=].element[=].target.code = #INSTNAIC
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #TJ'_FOR_FED_TAXPAYER_#;
* group[=].element[=].target.code = #INSTTAXPAYER
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #2U'_FOR_PAYER_ID_#;
* group[=].element[=].target.code = #PROFPAYER
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FY'_FOR_CLAIM_OFFICE_#;
* group[=].element[=].target.code = #PROFOFFICE
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #NF'_FOR_NAIC_CODE;
* group[=].element[=].target.code = #PROFNAIC
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #TJ'_FOR_FED_TAXPAYER_#;
* group[=].element[=].target.code = #PROFTAXPAYER
* group[=].element[=].target.equivalence = #equivalent