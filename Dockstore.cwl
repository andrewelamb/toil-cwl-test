#!/usr/bin/env cwl-runner
#
# Authors: Andrew Lamb

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [Rscript, /usr/local/bin/simple.R]

doc: "run"

hints:
  DockerRequirement:
    dockerPull: quay.io/cri-iatlas/toil-cwl-test

inputs:

  output_file_string:
    type: string
    default: "./output_file.tsv"
    inputBinding:
      prefix: --output_file
    doc: Path to write output file

outputs:

  output_file:
    type: File
    outputBinding:
      glob: out.txt
    doc: see output_string
