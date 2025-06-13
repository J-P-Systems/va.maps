Instance: VF-VitalsBodySite
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsBodySite"
* name = "VF_VitalsBodySite"
* title = "VF_VitalsBodySite"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsBodySite"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsBodySite-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsBodySite"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4688633
* group[=].element[=].display = "ABDOMINAL"
* group[=].element[=].target.code = #818983003
* group[=].element[=].target.display = "Abdomen (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688636
* group[=].element[=].display = "ANKLE"
* group[=].element[=].target.code = #344001
* group[=].element[=].target.display = "Ankle region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688636
* group[=].element[=].display = "ANKLE"
* group[=].element[=].target.code = #51636004
* group[=].element[=].target.display = "Structure of left ankle (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688636
* group[=].element[=].display = "ANKLE"
* group[=].element[=].target.code = #6685009
* group[=].element[=].target.display = "Structure of right ankle (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688637
* group[=].element[=].display = "APICAL"
* group[=].element[=].target.code = #46707002
* group[=].element[=].target.display = "Structure of precordium (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688696
* group[=].element[=].display = "AV FISTULA"
* group[=].element[=].target.code = #128617001
* group[=].element[=].target.display = "Arteriovenous fistula (morphologic abnormality)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688640
* group[=].element[=].display = "AXILLARY"
* group[=].element[=].target.code = #422543003
* group[=].element[=].target.display = "Structure of axillary fossa (body structure)
76261009 |Skin structure of axilla (body structure)|"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688640
* group[=].element[=].display = "AXILLARY"
* group[=].element[=].target.code = #764473004
* group[=].element[=].target.display = "764473004 |Skin structure of left axilla (body structure)|
20437008 |Structure of left axillary region (body structure)|"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688640
* group[=].element[=].display = "AXILLARY"
* group[=].element[=].target.code = #764474005
* group[=].element[=].target.display = "764474005 |Skin structure of right axilla (body structure)|
19654004 |Structure of right axillary region (body structure)|"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688642
* group[=].element[=].display = "BILATERAL PERIPHERALS"
* group[=].element[=].target.code = #840581000
* group[=].element[=].target.display = "Structure of peripheral artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688643
* group[=].element[=].display = "BRACHIAL"
* group[=].element[=].target.code = #17137000
* group[=].element[=].target.display = "Structure of brachial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688643
* group[=].element[=].display = "BRACHIAL"
* group[=].element[=].target.code = #723961002
* group[=].element[=].target.display = "Structure of left brachial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688643
* group[=].element[=].display = "BRACHIAL"
* group[=].element[=].target.code = #723962009
* group[=].element[=].target.display = "Structure of right brachial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688644
* group[=].element[=].display = "CALF"
* group[=].element[=].target.code = #53840002
* group[=].element[=].target.display = "Structure of calf of leg (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688644
* group[=].element[=].display = "CALF"
* group[=].element[=].target.code = #722115008
* group[=].element[=].target.display = "Structure of calf of left lower leg (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688644
* group[=].element[=].display = "CALF"
* group[=].element[=].target.code = #722116009
* group[=].element[=].target.display = "Structure of calf of right lower leg (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688645
* group[=].element[=].display = "CAROTID"
* group[=].element[=].target.code = #69105007
* group[=].element[=].target.display = "Carotid artery structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688645
* group[=].element[=].display = "CAROTID"
* group[=].element[=].target.code = #721028001
* group[=].element[=].target.display = "Structure of left carotid artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688645
* group[=].element[=].display = "CAROTID"
* group[=].element[=].target.code = #721033002
* group[=].element[=].target.display = "Structure of right carotid artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688648
* group[=].element[=].display = "CORE"
* group[=].element[=].target.code = #276885007
* group[=].element[=].target.display = "Core body temperature (observable entity)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688651
* group[=].element[=].display = "DORSALIS PEDIS"
* group[=].element[=].target.code = #86547008
* group[=].element[=].target.display = "Structure of dorsalis pedis artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688651
* group[=].element[=].display = "DORSALIS PEDIS"
* group[=].element[=].target.code = #792817008
* group[=].element[=].target.display = "Structure of left dorsalis pedis artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688651
* group[=].element[=].display = "DORSALIS PEDIS"
* group[=].element[=].target.code = #792816004
* group[=].element[=].target.display = "Structure of right dorsalis pedis artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688655
* group[=].element[=].display = "FEMORAL"
* group[=].element[=].target.code = #7657000
* group[=].element[=].target.display = "Structure of femoral artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688655
* group[=].element[=].display = "FEMORAL"
* group[=].element[=].target.code = #113270003
* group[=].element[=].target.display = "Structure of left femoral artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688655
* group[=].element[=].display = "FEMORAL"
* group[=].element[=].target.code = #69833005
* group[=].element[=].target.display = "Structure of right femoral artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688656
* group[=].element[=].display = "HEAD"
* group[=].element[=].target.code = #69536005
* group[=].element[=].target.display = "Head structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4697470
* group[=].element[=].display = "HIP"
* group[=].element[=].target.code = #29836001
* group[=].element[=].target.display = "Hip region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4697470
* group[=].element[=].display = "HIP"
* group[=].element[=].target.code = #287679003
* group[=].element[=].target.display = "Left hip region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4697470
* group[=].element[=].display = "HIP"
* group[=].element[=].target.code = #287579007
* group[=].element[=].target.display = "Right hip region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688689
* group[=].element[=].display = "KNEE"
* group[=].element[=].target.code = #72696002
* group[=].element[=].target.display = "Knee region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688689
* group[=].element[=].display = "KNEE"
* group[=].element[=].target.code = #82169009
* group[=].element[=].target.display = "Structure of left knee region (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688689
* group[=].element[=].display = "KNEE"
* group[=].element[=].target.code = #6757004
* group[=].element[=].target.display = "Structure of right knee region (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688657
* group[=].element[=].display = "L ARM (LEFT ARM)"
* group[=].element[=].target.code = #80768000
* group[=].element[=].target.display = "Structure of left upper limb (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688658
* group[=].element[=].display = "L LEG (LEFT LEG)"
* group[=].element[=].target.code = #32153003
* group[=].element[=].target.display = "Structure of left lower limb (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688662
* group[=].element[=].display = "LOWER ARM"
* group[=].element[=].target.code = #14975008
* group[=].element[=].target.display = "Forearm structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688662
* group[=].element[=].display = "LOWER ARM"
* group[=].element[=].target.code = #66480008
* group[=].element[=].target.display = "Structure of left forearm (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688662
* group[=].element[=].display = "LOWER ARM"
* group[=].element[=].target.code = #64262003
* group[=].element[=].target.display = "Structure of right forearm (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688686
* group[=].element[=].display = "NECK"
* group[=].element[=].target.code = #45048000
* group[=].element[=].target.display = "Neck structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500642
* group[=].element[=].display = "ORAL"
* group[=].element[=].target.code = #123851003
* group[=].element[=].target.display = "Mouth region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688672
* group[=].element[=].display = "PERIPHERAL"
* group[=].element[=].target.code = #54718008
* group[=].element[=].target.display = "Peripheral pulse, function (observable entity)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688673
* group[=].element[=].display = "POPLITEAL"
* group[=].element[=].target.code = #43899006
* group[=].element[=].target.display = "Structure of popliteal artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688673
* group[=].element[=].display = "POPLITEAL"
* group[=].element[=].target.code = #25885001
* group[=].element[=].target.display = "Left popliteal artery structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688673
* group[=].element[=].display = "POPLITEAL"
* group[=].element[=].target.code = #57832007
* group[=].element[=].target.display = "Structure of right popliteal artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688675
* group[=].element[=].display = "POSTERIOR TIBIAL"
* group[=].element[=].target.code = #13363002
* group[=].element[=].target.display = "Structure of posterior tibial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688675
* group[=].element[=].display = "POSTERIOR TIBIAL"
* group[=].element[=].target.code = #214912001
* group[=].element[=].target.display = "Structure of left posterior tibial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688675
* group[=].element[=].display = "POSTERIOR TIBIAL"
* group[=].element[=].target.code = #214811007
* group[=].element[=].target.display = "Structure of right posterior tibial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688676
* group[=].element[=].display = "R ARM (RIGHT ARM)"
* group[=].element[=].target.code = #6921000
* group[=].element[=].target.display = "Structure of right upper limb (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688677
* group[=].element[=].display = "R LEG (RIGHT LEG)"
* group[=].element[=].target.code = #62175007
* group[=].element[=].target.display = "Structure of right lower limb (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688678
* group[=].element[=].display = "RADIAL"
* group[=].element[=].target.code = #45631007
* group[=].element[=].target.display = "Structure of radial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688678
* group[=].element[=].display = "RADIAL"
* group[=].element[=].target.code = #368504007
* group[=].element[=].target.display = "Structure of left radial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688678
* group[=].element[=].display = "RADIAL"
* group[=].element[=].target.code = #368503001
* group[=].element[=].target.display = "Structure of right radial artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688679
* group[=].element[=].display = "RECTAL"
* group[=].element[=].target.code = #34402009
* group[=].element[=].target.display = "Rectum structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688704
* group[=].element[=].display = "SKIN"
* group[=].element[=].target.code = #39937001
* group[=].element[=].target.display = "Skin structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4537028
* group[=].element[=].display = "TEMPORAL"
* group[=].element[=].target.code = #450721000
* group[=].element[=].target.display = "Structure of temporal region (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688708
* group[=].element[=].display = "THIGH"
* group[=].element[=].target.code = #68367000
* group[=].element[=].target.display = "Thigh structure (body structure`)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Girth; No laterality"
* group[=].element[+].code = #4688708
* group[=].element[=].display = "THIGH"
* group[=].element[=].target.code = #61396006
* group[=].element[=].target.display = "Structure of left thigh (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Girth; Laterality Left"
* group[=].element[+].code = #4688708
* group[=].element[=].display = "THIGH"
* group[=].element[=].target.code = #11207009
* group[=].element[=].target.display = "Structure of right thigh (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Girth; Laterality Right"
* group[=].element[+].code = #4688712
* group[=].element[=].display = "TYMPANIC"
* group[=].element[=].target.code = #42859004
* group[=].element[=].target.display = "Tympanic membrane structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688712
* group[=].element[=].display = "TYMPANIC"
* group[=].element[=].target.code = #726562006
* group[=].element[=].target.display = "Structure of left tympanic membrane (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688712
* group[=].element[=].display = "TYMPANIC"
* group[=].element[=].target.code = #726563001
* group[=].element[=].target.display = "Structure of right tympanic membrane (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688713
* group[=].element[=].display = "ULNAR"
* group[=].element[=].target.code = #44984001
* group[=].element[=].target.display = "Structure of ulnar artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688713
* group[=].element[=].display = "ULNAR"
* group[=].element[=].target.code = #368506009
* group[=].element[=].target.display = "Structure of left ulnar artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688713
* group[=].element[=].display = "ULNAR"
* group[=].element[=].target.code = #368505008
* group[=].element[=].target.display = "Structure of right ulnar artery (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688714
* group[=].element[=].display = "UPPER ARM"
* group[=].element[=].target.code = #40983000
* group[=].element[=].target.display = "Structure of upper extremity between shoulder and elbow (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688714
* group[=].element[=].display = "UPPER ARM"
* group[=].element[=].target.code = #368208006
* group[=].element[=].target.display = "Left upper arm structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688714
* group[=].element[=].display = "UPPER ARM"
* group[=].element[=].target.code = #368209003
* group[=].element[=].target.display = "Right upper arm structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"
* group[=].element[+].code = #4688717
* group[=].element[=].display = "WRIST"
* group[=].element[=].target.code = #8205005
* group[=].element[=].target.display = "Wrist region structure (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "No laterality"
* group[=].element[+].code = #4688717
* group[=].element[=].display = "WRIST"
* group[=].element[=].target.code = #5951000
* group[=].element[=].target.display = "Structure of left wrist region (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Left"
* group[=].element[+].code = #4688717
* group[=].element[=].display = "WRIST"
* group[=].element[=].target.code = #9736006
* group[=].element[=].target.display = "Structure of right wrist region (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "Laterality Right"

ValueSet: VitalsBodySite
Title: "VitalsBodySite FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsBodySite](ConceptMap-VF-VitalsBodySite.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsBodySite"
* include http://snomed.info/sct#818983003 "Abdomen (body structure)"
* include http://snomed.info/sct#344001 "Ankle region structure (body structure)"
* include http://snomed.info/sct#51636004 "Structure of left ankle (body structure)"
* include http://snomed.info/sct#6685009 "Structure of right ankle (body structure)"
* include http://snomed.info/sct#46707002 "Structure of precordium (body structure)"
* include http://snomed.info/sct#128617001 "Arteriovenous fistula (morphologic abnormality)"
* include http://snomed.info/sct#422543003 "Structure of axillary fossa (body structure)
76261009 |Skin structure of axilla (body structure)|"
* include http://snomed.info/sct#764473004 "764473004 |Skin structure of left axilla (body structure)|
20437008 |Structure of left axillary region (body structure)|"
* include http://snomed.info/sct#764474005 "764474005 |Skin structure of right axilla (body structure)|
19654004 |Structure of right axillary region (body structure)|"
* include http://snomed.info/sct#840581000 "Structure of peripheral artery (body structure)"
* include http://snomed.info/sct#17137000 "Structure of brachial artery (body structure)"
* include http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* include http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* include http://snomed.info/sct#53840002 "Structure of calf of leg (body structure)"
* include http://snomed.info/sct#722115008 "Structure of calf of left lower leg (body structure)"
* include http://snomed.info/sct#722116009 "Structure of calf of right lower leg (body structure)"
* include http://snomed.info/sct#69105007 "Carotid artery structure (body structure)"
* include http://snomed.info/sct#721028001 "Structure of left carotid artery (body structure)"
* include http://snomed.info/sct#721033002 "Structure of right carotid artery (body structure)"
* include http://snomed.info/sct#276885007 "Core body temperature (observable entity)"
* include http://snomed.info/sct#86547008 "Structure of dorsalis pedis artery (body structure)"
* include http://snomed.info/sct#792817008 "Structure of left dorsalis pedis artery (body structure)"
* include http://snomed.info/sct#792816004 "Structure of right dorsalis pedis artery (body structure)"
* include http://snomed.info/sct#7657000 "Structure of femoral artery (body structure)"
* include http://snomed.info/sct#113270003 "Structure of left femoral artery (body structure)"
* include http://snomed.info/sct#69833005 "Structure of right femoral artery (body structure)"
* include http://snomed.info/sct#69536005 "Head structure (body structure)"
* include http://snomed.info/sct#29836001 "Hip region structure (body structure)"
* include http://snomed.info/sct#287679003 "Left hip region structure (body structure)"
* include http://snomed.info/sct#287579007 "Right hip region structure (body structure)"
* include http://snomed.info/sct#72696002 "Knee region structure (body structure)"
* include http://snomed.info/sct#82169009 "Structure of left knee region (body structure)"
* include http://snomed.info/sct#6757004 "Structure of right knee region (body structure)"
* include http://snomed.info/sct#80768000 "Structure of left upper limb (body structure)"
* include http://snomed.info/sct#32153003 "Structure of left lower limb (body structure)"
* include http://snomed.info/sct#14975008 "Forearm structure (body structure)"
* include http://snomed.info/sct#66480008 "Structure of left forearm (body structure)"
* include http://snomed.info/sct#64262003 "Structure of right forearm (body structure)"
* include http://snomed.info/sct#45048000 "Neck structure (body structure)"
* include http://snomed.info/sct#123851003 "Mouth region structure (body structure)"
* include http://snomed.info/sct#54718008 "Peripheral pulse, function (observable entity)"
* include http://snomed.info/sct#43899006 "Structure of popliteal artery (body structure)"
* include http://snomed.info/sct#25885001 "Left popliteal artery structure (body structure)"
* include http://snomed.info/sct#57832007 "Structure of right popliteal artery (body structure)"
* include http://snomed.info/sct#13363002 "Structure of posterior tibial artery (body structure)"
* include http://snomed.info/sct#214912001 "Structure of left posterior tibial artery (body structure)"
* include http://snomed.info/sct#214811007 "Structure of right posterior tibial artery (body structure)"
* include http://snomed.info/sct#6921000 "Structure of right upper limb (body structure)"
* include http://snomed.info/sct#62175007 "Structure of right lower limb (body structure)"
* include http://snomed.info/sct#45631007 "Structure of radial artery (body structure)"
* include http://snomed.info/sct#368504007 "Structure of left radial artery (body structure)"
* include http://snomed.info/sct#368503001 "Structure of right radial artery (body structure)"
* include http://snomed.info/sct#34402009 "Rectum structure (body structure)"
* include http://snomed.info/sct#39937001 "Skin structure (body structure)"
* include http://snomed.info/sct#450721000 "Structure of temporal region (body structure)"
* include http://snomed.info/sct#68367000 "Thigh structure (body structure`)"
* include http://snomed.info/sct#61396006 "Structure of left thigh (body structure)"
* include http://snomed.info/sct#11207009 "Structure of right thigh (body structure)"
* include http://snomed.info/sct#42859004 "Tympanic membrane structure (body structure)"
* include http://snomed.info/sct#726562006 "Structure of left tympanic membrane (body structure)"
* include http://snomed.info/sct#726563001 "Structure of right tympanic membrane (body structure)"
* include http://snomed.info/sct#44984001 "Structure of ulnar artery (body structure)"
* include http://snomed.info/sct#368506009 "Structure of left ulnar artery (body structure)"
* include http://snomed.info/sct#368505008 "Structure of right ulnar artery (body structure)"
* include http://snomed.info/sct#40983000 "Structure of upper extremity between shoulder and elbow (body structure)"
* include http://snomed.info/sct#368208006 "Left upper arm structure (body structure)"
* include http://snomed.info/sct#368209003 "Right upper arm structure (body structure)"
* include http://snomed.info/sct#8205005 "Wrist region structure (body structure)"
* include http://snomed.info/sct#5951000 "Structure of left wrist region (body structure)"
* include http://snomed.info/sct#9736006 "Structure of right wrist region (body structure)"

ValueSet: VitalsBodySite-vista
Title: "VitalsBodySite VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsBodySite](ConceptMap-VF-VitalsBodySite.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsBodySite_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688633 "ABDOMINAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688636 "ANKLE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688637 "APICAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688696 "AV FISTULA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688640 "AXILLARY"
* include http://terminology.hl7.org/CodeSystem/VHA#4688642 "BILATERAL PERIPHERALS"
* include http://terminology.hl7.org/CodeSystem/VHA#4688643 "BRACHIAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688644 "CALF"
* include http://terminology.hl7.org/CodeSystem/VHA#4688645 "CAROTID"
* include http://terminology.hl7.org/CodeSystem/VHA#4688648 "CORE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688651 "DORSALIS PEDIS"
* include http://terminology.hl7.org/CodeSystem/VHA#4688655 "FEMORAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688656 "HEAD"
* include http://terminology.hl7.org/CodeSystem/VHA#4697470 "HIP"
* include http://terminology.hl7.org/CodeSystem/VHA#4688689 "KNEE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688657 "L ARM (LEFT ARM)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688658 "L LEG (LEFT LEG)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688662 "LOWER ARM"
* include http://terminology.hl7.org/CodeSystem/VHA#4688686 "NECK"
* include http://terminology.hl7.org/CodeSystem/VHA#4500642 "ORAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688672 "PERIPHERAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688673 "POPLITEAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688675 "POSTERIOR TIBIAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688676 "R ARM (RIGHT ARM)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688677 "R LEG (RIGHT LEG)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688678 "RADIAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688679 "RECTAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688704 "SKIN"
* include http://terminology.hl7.org/CodeSystem/VHA#4537028 "TEMPORAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688708 "THIGH"
* include http://terminology.hl7.org/CodeSystem/VHA#4688712 "TYMPANIC"
* include http://terminology.hl7.org/CodeSystem/VHA#4688713 "ULNAR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688714 "UPPER ARM"
* include http://terminology.hl7.org/CodeSystem/VHA#4688717 "WRIST"