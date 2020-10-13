cwlVersion: v1.0
class: CommandLineTool
label: Convert Alevin sparse output to anndata.AnnData object, save as h5ad
hints:
  DockerRequirement:
    dockerPull: hubmap/scrna-analysis:latest
baseCommand: /opt/alevin_to_anndata.py

inputs:
  alevin_dir:
    type: Directory
    inputBinding:
      position: 1
outputs:
  full_h5ad_file:
    type: File
    outputBinding:
      glob: full_expr.h5ad
  h5ad_file:
    type: File
    outputBinding:
      glob: expr.h5ad
