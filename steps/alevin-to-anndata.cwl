cwlVersion: v1.0
class: CommandLineTool
label: Convert Alevin sparse output to anndata.AnnData object, save as h5ad
hints:
  DockerRequirement:
    dockerPull: hubmap/scanpy-snare:latest
baseCommand: /opt/alevin_to_anndata.py

inputs:
  alevin_dir:
    type: Directory
    inputBinding:
      position: 1
  dataset_id:
    type: string
    inputBinding:
      position: 2
outputs:
  h5ad_file:
    type: File
    outputBinding:
      glob: out.h5ad
