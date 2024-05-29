cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu000-acute-myocardial-infarction-ami-following---secondary:
    run: ccu000-acute-myocardial-infarction-ami-following---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  subsequent-ccu000-acute-myocardial-infarction-ami---secondary:
    run: subsequent-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-following---secondary/output
  ccu000-acute-myocardial-infarction-ami---secondary:
    run: ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: subsequent-ccu000-acute-myocardial-infarction-ami---secondary/output
  ccu000-acute-myocardial-infarction-ami-dressler's---secondary:
    run: ccu000-acute-myocardial-infarction-ami-dressler's---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami---secondary/output
  infarction---secondary:
    run: infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-dressler's---secondary/output
  ccu000-acute-myocardial-infarction-ami-inferoposterior---secondary:
    run: ccu000-acute-myocardial-infarction-ami-inferoposterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: infarction---secondary/output
  ccu000-acute-myocardial-infarction-ami-cardiac---secondary:
    run: ccu000-acute-myocardial-infarction-ami-cardiac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-inferoposterior---secondary/output
  ccu000-acute-myocardial-infarction-ami-history---secondary:
    run: ccu000-acute-myocardial-infarction-ami-history---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-cardiac---secondary/output
  ccu000-acute-myocardial-infarction-ami-anterior---secondary:
    run: ccu000-acute-myocardial-infarction-ami-anterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-history---secondary/output
  septal-ccu000-acute-myocardial-infarction-ami---secondary:
    run: septal-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-anterior---secondary/output
  ccu000-acute-myocardial-infarction-ami-defect---secondary:
    run: ccu000-acute-myocardial-infarction-ami-defect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: septal-ccu000-acute-myocardial-infarction-ami---secondary/output
  ccu000-acute-myocardial-infarction-ami-artery---secondary:
    run: ccu000-acute-myocardial-infarction-ami-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-defect---secondary/output
  inferolateral-ccu000-acute-myocardial-infarction-ami---secondary:
    run: inferolateral-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-artery---secondary/output
  atrial-ccu000-acute-myocardial-infarction-ami---secondary:
    run: atrial-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: inferolateral-ccu000-acute-myocardial-infarction-ami---secondary/output
  ccu000-acute-myocardial-infarction-ami-elevation---secondary:
    run: ccu000-acute-myocardial-infarction-ami-elevation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: atrial-ccu000-acute-myocardial-infarction-ami---secondary/output
  ccu000-acute-myocardial-infarction-ami-nonst---secondary:
    run: ccu000-acute-myocardial-infarction-ami-nonst---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-elevation---secondary/output
  subendocardial-ccu000-acute-myocardial-infarction-ami---secondary:
    run: subendocardial-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-nonst---secondary/output
  coronary-ccu000-acute-myocardial-infarction-ami---secondary:
    run: coronary-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: subendocardial-ccu000-acute-myocardial-infarction-ami---secondary/output
  ccu000-acute-myocardial-infarction-ami-complication---secondary:
    run: ccu000-acute-myocardial-infarction-ami-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: coronary-ccu000-acute-myocardial-infarction-ami---secondary/output
  anterolateral-ccu000-acute-myocardial-infarction-ami---secondary:
    run: anterolateral-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-complication---secondary/output
  ccu000-acute-myocardial-infarction-ami-inferior---secondary:
    run: ccu000-acute-myocardial-infarction-ami-inferior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anterolateral-ccu000-acute-myocardial-infarction-ami---secondary/output
  ccu000-acute-myocardial-infarction-ami-muscle---secondary:
    run: ccu000-acute-myocardial-infarction-ami-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-inferior---secondary/output
  ccu000-acute-myocardial-infarction-ami-thrombosis---secondary:
    run: ccu000-acute-myocardial-infarction-ami-thrombosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-muscle---secondary/output
  transmural-ccu000-acute-myocardial-infarction-ami---secondary:
    run: transmural-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-thrombosis---secondary/output
  ccu000-acute-myocardial-infarction-ami-rupture---secondary:
    run: ccu000-acute-myocardial-infarction-ami-rupture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: transmural-ccu000-acute-myocardial-infarction-ami---secondary/output
  postoperative-ccu000-acute-myocardial-infarction-ami---secondary:
    run: postoperative-ccu000-acute-myocardial-infarction-ami---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu000-acute-myocardial-infarction-ami-rupture---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: postoperative-ccu000-acute-myocardial-infarction-ami---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
