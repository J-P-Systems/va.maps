Instance: CMVFSourceOfAdmission
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFSourceOfAdmission"
* name = "VF_SourceOfAdmission"
* title = "VF_SourceOfAdmission"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_SourceOfAdmission"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFSourceOfAdmission-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFSourceOfAdmission"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/45.1-.01"
* group[=].target = "http://terminology.hl7.org/CodeSystem/admit-source|4.0.1"
* group[=].element[0].code = #1K
* group[=].element[=].display = "ALL OTHER NON VA HOSP NOT UNDER VA AUSPICES"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/45.1-.01"
* group[=].target = "http://terminology.hl7.org/CodeSystem/admit-source"
* group[=].element[0].code = #4Y
* group[=].element[=].display = "ALL OTHER SOURCES, UNKNOWN OR NO INFO"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1H
* group[=].element[=].display = "COMMUNITY NURSING HOME NOT UNDER VA AUSPICES"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1G
* group[=].element[=].display = "CONTRACT CNH (UNDER VA AUSPICES)"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #7B
* group[=].element[=].display = "DIRECT ADM OF ACTIVE DUTY PERS FROM MILT HOSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #6A
* group[=].element[=].display = "DIRECT ADMISSION FROM A VA HOSPITAL"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5G
* group[=].element[=].display = "DIRECT ADMISSION FROM ALL OTHER SOURCES"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #6D
* group[=].element[=].display = "DIRECT ADMISSION FROM ALL OTHER SOURCES"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4D
* group[=].element[=].display = "FROM ANOTHER VA DOM"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4G
* group[=].element[=].display = "FROM COMMUNITY HOSPITAL NOT UNDER VA AUSPICES"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4F
* group[=].element[=].display = "FROM COMMUNITY HOSPITAL UNDER VA AUSPICES"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4J
* group[=].element[=].display = "FROM COMMUNITY NURSING HOME NOT UNDER VA AUSPICES"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4H
* group[=].element[=].display = "FROM COMMUNITY NURSING HOME UNDER VA AUSPICES"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4M
* group[=].element[=].display = "FROM MILITARY HOSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4P
* group[=].element[=].display = "FROM OTHER FEDERAL HOSP NOT UNDER VA AUSPICES"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4N
* group[=].element[=].display = "FROM OTHER FEDERAL HOSP UNDER VA AUSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4Q
* group[=].element[=].display = "FROM OTHER GOV HOSP(NON FED) NOT UNDER VA AUSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4K
* group[=].element[=].display = "FROM STATE HOME DOM"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4L
* group[=].element[=].display = "FROM STATE NURSING HOME CARE"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4A
* group[=].element[=].display = "FROM VA HOSPITAL"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4B
* group[=].element[=].display = "FROM VA HOSPITAL ON NON-BED-CARE"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4C
* group[=].element[=].display = "FROM VA NURSING HOME CARE UNIT"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1J
* group[=].element[=].display = "GOVNT(NON FED) MENTAL HOSP NOT UNDER VA AUSPICES"
* group[=].element[=].target.code = #psych
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #2C
* group[=].element[=].display = "MILITARY PERS BY TRANSFER FROM A MILT HOSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #2B
* group[=].element[=].display = "MILITARY PERS NOT DIRECTLY FROM MILT HOSP"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5B
* group[=].element[=].display = "NON-VA HOSPITAL UNDER VA AUSPICES"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #2A
* group[=].element[=].display = "NON-VETERAN OTHER THAN MILITARY"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1T
* group[=].element[=].display = "OBSERVATION AND EXAMINATION"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1M
* group[=].element[=].display = "OTHER DIRECT"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4R
* group[=].element[=].display = "OTHER GOVERNMENT HOSP(NON FED) UNDER VA AUSPICES"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1P
* group[=].element[=].display = "OUTPATIENT TREATMENT"
* group[=].element[=].target.code = #outp
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4U
* group[=].element[=].display = "REFERRED BY NATIONAL SERV ORGAN (LOCAL OR REG)"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4S
* group[=].element[=].display = "REFERRED BY OUTPATIENT CLINIC"
* group[=].element[=].target.code = #outp
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4T
* group[=].element[=].display = "REFERRED BY WELFARE AGENCY(LOCAL OR REGIONAL)"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1R
* group[=].element[=].display = "RESEARCH - VETERAN"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1S
* group[=].element[=].display = "RESEARCH NON-VETERAN"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4W
* group[=].element[=].display = "SELF-WALKIN"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1L
* group[=].element[=].display = "STATE HOME (DOM OR NHC)"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4E
* group[=].element[=].display = "TRANS FROM DOM-DOM-CONT DOM SINCE 7/1/86 OR PRIOR"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5D
* group[=].element[=].display = "TRANS FROM NHCU-NHCU-CONT NH SINCE 7/1/86 OR PRIOR"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #3E
* group[=].element[=].display = "TRANS FROM VAH-VAH-CONT HOS SINCE 7/1/86 OR PRIOR"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #3D
* group[=].element[=].display = "TRANS FROM VAMC TO MILITARY FAC. UNDER VA AUSP"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #6C
* group[=].element[=].display = "TRANS IN FROM ANOTHER CNH UNDER VA AUSPICES"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #3C
* group[=].element[=].display = "TRANS IN FROM ANY OTHER NON-VA HOSP UNDER VA AUSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #6B
* group[=].element[=].display = "TRANSFER IN FROM A VA NHCU"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #3A
* group[=].element[=].display = "TRANSFER IN FROM ANOTHER VA HOSPITAL"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5E
* group[=].element[=].display = "TRANSFER IN FROM ANOTHER VA NHCU"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5F
* group[=].element[=].display = "TRANSFER IN FROM COMMUNITY HOME UNDER VA AUSPICES"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #3B
* group[=].element[=].display = "TRANSFER IN FROM OTH FED HOSP UNDER VA AUSP"
* group[=].element[=].target.code = #hosp-trans
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1E
* group[=].element[=].display = "VA DOMICILLARY"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5C
* group[=].element[=].display = "VA DOMICILLARY"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5A
* group[=].element[=].display = "VA MEDICAL CENTER"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1D
* group[=].element[=].display = "VA NURSING HOME CARE UNIT"
* group[=].element[=].target.code = #nursing
* group[=].element[=].target.equivalence = #wider

ValueSet: VSVFSourceOfAdmission
Title: "VF_SourceOfAdmission"
Description: "FHIR Target ValueSet for Terminology Maps VF_SourceOfAdmission"
* ^experimental = false
* ^name = "VF_SourceOfAdmission"
* include http://terminology.hl7.org/CodeSystem/admit-source|4.0.1#hosp-trans 
* include http://terminology.hl7.org/CodeSystem/admit-source#other 
* include http://terminology.hl7.org/CodeSystem/admit-source#nursing 
* include http://terminology.hl7.org/CodeSystem/admit-source#hosp-trans 
* include http://terminology.hl7.org/CodeSystem/admit-source#psych 
* include http://terminology.hl7.org/CodeSystem/admit-source#outp 

ValueSet: VSVFSourceOfAdmission-vista
Title: "VF_SourceOfAdmission VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_SourceOfAdmission"
* ^experimental = false
* ^name = "VF_SourceOfAdmission"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1K "ALL OTHER NON VA HOSP NOT UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4Y "ALL OTHER SOURCES, UNKNOWN OR NO INFO"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1H "COMMUNITY NURSING HOME NOT UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1G "CONTRACT CNH (UNDER VA AUSPICES)"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#7B "DIRECT ADM OF ACTIVE DUTY PERS FROM MILT HOSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#6A "DIRECT ADMISSION FROM A VA HOSPITAL"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5G "DIRECT ADMISSION FROM ALL OTHER SOURCES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#6D "DIRECT ADMISSION FROM ALL OTHER SOURCES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4D "FROM ANOTHER VA DOM"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4G "FROM COMMUNITY HOSPITAL NOT UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4F "FROM COMMUNITY HOSPITAL UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4J "FROM COMMUNITY NURSING HOME NOT UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4H "FROM COMMUNITY NURSING HOME UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4M "FROM MILITARY HOSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4P "FROM OTHER FEDERAL HOSP NOT UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4N "FROM OTHER FEDERAL HOSP UNDER VA AUSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4Q "FROM OTHER GOV HOSP(NON FED) NOT UNDER VA AUSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4K "FROM STATE HOME DOM"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4L "FROM STATE NURSING HOME CARE"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4A "FROM VA HOSPITAL"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4B "FROM VA HOSPITAL ON NON-BED-CARE"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4C "FROM VA NURSING HOME CARE UNIT"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1J "GOVNT(NON FED) MENTAL HOSP NOT UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#2C "MILITARY PERS BY TRANSFER FROM A MILT HOSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#2B "MILITARY PERS NOT DIRECTLY FROM MILT HOSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5B "NON-VA HOSPITAL UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#2A "NON-VETERAN OTHER THAN MILITARY"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1T "OBSERVATION AND EXAMINATION"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1M "OTHER DIRECT"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4R "OTHER GOVERNMENT HOSP(NON FED) UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1P "OUTPATIENT TREATMENT"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4U "REFERRED BY NATIONAL SERV ORGAN (LOCAL OR REG)"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4S "REFERRED BY OUTPATIENT CLINIC"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4T "REFERRED BY WELFARE AGENCY(LOCAL OR REGIONAL)"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1R "RESEARCH - VETERAN"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1S "RESEARCH NON-VETERAN"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4W "SELF-WALKIN"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1L "STATE HOME (DOM OR NHC)"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#4E "TRANS FROM DOM-DOM-CONT DOM SINCE 7/1/86 OR PRIOR"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5D "TRANS FROM NHCU-NHCU-CONT NH SINCE 7/1/86 OR PRIOR"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#3E "TRANS FROM VAH-VAH-CONT HOS SINCE 7/1/86 OR PRIOR"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#3D "TRANS FROM VAMC TO MILITARY FAC. UNDER VA AUSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#6C "TRANS IN FROM ANOTHER CNH UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#3C "TRANS IN FROM ANY OTHER NON-VA HOSP UNDER VA AUSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#6B "TRANSFER IN FROM A VA NHCU"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#3A "TRANSFER IN FROM ANOTHER VA HOSPITAL"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5E "TRANSFER IN FROM ANOTHER VA NHCU"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5F "TRANSFER IN FROM COMMUNITY HOME UNDER VA AUSPICES"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#3B "TRANSFER IN FROM OTH FED HOSP UNDER VA AUSP"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1E "VA DOMICILLARY"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5C "VA DOMICILLARY"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#5A "VA MEDICAL CENTER"
* include http://va.gov/terminology/vistaDefinedTerms/45.1-.01#1D "VA NURSING HOME CARE UNIT"