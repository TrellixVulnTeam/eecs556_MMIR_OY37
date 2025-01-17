#!/bin/bash

mmirpath="/home/yeatsem/Proj556/eecs556_MMIR" #put the path to the local version of the github repo here
c3dpath="/home/yeatsem/itk/bin" #put the path to c3d binary folder here
resectpath="/home/yeatsem/Proj556/RESECT" #put the path to RESECT data here

outfile="reg_results_SSC.txt"

g_aff="6x5x4x3" #grid spacing
l_aff="4" #number of levels
L_aff="7x6x5x4"
q_aff="4x3x2x1"

l_def="4" #number of levels
g_def="6x5x4x3" #grid spacing
L_def="7x6x5x4" #maximum search radius
q_def="4x3x2x1" #quantization
a="1.6"

for c in {1..8} {12..19} 21 {23..27}
do
  #preprocess the RESECT data
  cd ${c3dpath}
  ./c3d ${resectpath}/NIFTI/Case${c}/US/Case${c}-US-before.nii.gz  ${resectpath}/NIFTI/Case${c}/MRI/Case${c}-FLAIR.nii.gz -reslice-identity -resample-mm 0.5x0.5x0.5mm -o  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI_in_US.nii.gz

  ./c3d  ${resectpath}/NIFTI/Case${c}/US/Case${c}-US-before.nii.gz -resample-mm 0.5x0.5x0.5mm -o  ${resectpath}/NIFTI/Case${c}/Case${c}-US.nii.gz

  #save landmark coordinates as .txt
  cd ${mmirpath}
  python landmarks_split_txt.py --inputtag  ${resectpath}/NIFTI/Case${c}/Landmarks/Case${c}-MRI-beforeUS.tag --savetxt  ${resectpath}/NIFTI/Case${c}/Case${c}_lm

  #generate MRI voxelized landmarks
  cd ${c3dpath}
  ./c3d ${resectpath}/NIFTI/Case${c}/Case${c}-MRI_in_US.nii.gz -scale 0 -landmarks-to-spheres  ${resectpath}/RESECT_SSC/NIFTI/Case${c}/Case${c}_lm_mri.txt 1 -o  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI-landmarks.nii.gz

  # generate US voxelized landmarks
  ./c3d  ${resectpath}/RESECT_SSC/NIFTI/Case${c}/Case${c}-US.nii.gz -scale 0 -landmarks-to-spheres  ${resectpath}/NIFTI/Case${c}/Case${c}_lm_us.txt 1 -o  ${resectpath}/NIFTI/Case${c}/Case${c}-US-landmarks.nii.gz

  echo "Calculating initial TRE"
  cd ${mmirpath}
  iniTRE=$(python landmarks_centre_mass_SSC.py --inputnii  ${resectpath}/NIFTI/Case${c}/Case${c}-US-landmarks.nii.gz --movingnii  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI-landmarks.nii.gz --savetxt  ${resectpath}/NIFTI/Case${c}/Case${c}-prelim)

  # do preliminary linear fit
  cd deeds
  ./linearBCV -F  ${resectpath}/NIFTI/Case${c}/Case${c}-US.nii.gz -M  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI_in_US.nii.gz -G ${g} -L ${l} -Q ${q} -R 1 -S  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI-landmarks.nii.gz -O  ${resectpath}/NIFTI/Case${c}/affine${c} 

  echo "Calculating TRE for linear fit"
  cd ..
  affTRE=$(python landmarks_centre_mass.py --inputnii  ${resectpath}/NIFTI/Case${c}/Case${c}-US-landmarks.nii.gz --movingnii  ${resectpath}/NIFTI/Case${c}/affine${c}_deformed_seg.nii.gz --savetxt  ${resectpath}/NIFTI/Case${c}/Case${c}-results-L)

  # run deformable deeds
  cd deeds
  ./deedsBCV -F  ${resectpath}/NIFTI/Case${c}/Case${c}-US.nii.gz -M  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI_in_US.nii.gz -G ${g} -L ${l} -Q ${q} -O  ${resectpath}/NIFTI/Case${c}/Case${c}-deeds  ${resectpath}/NIFTI/Case${c}/Case${c}-MRI-landmarks.nii.gz -A  ${resectpath}/NIFTI/Case${c}/affine${c}_matrix.txt 

  echo "Calculating TRE for linear + nonlinear fit"
  cd ..
  affdefTRE=$(python landmarks_centre_mass.py --inputnii  ${resectpath}/NIFTI/Case${c}/Case${c}-US-landmarks.nii.gz --movingnii  ${resectpath}/NIFTI/Case${c}/Case${c}-deeds_deformed_seg.nii.gz --savetxt  ${resectpath}/NIFTI/Case${c}/Case${c}-results-NL)

  #do second linear fit
  cd deeds
  ./linearBCV -F  ${resectpath}/NIFTI/Case${c}/Case${c}-US.nii.gz -M  ${resectpath}/NIFTI/Case${c}/Case${c}-deeds_deformed.nii.gz -G ${g} -L ${l} -Q ${q} -S  ${resectpath}/NIFTI/Case${c}/Case${c}-deeds_deformed_seg.nii.gz -R 1 -O  ${resectpath}/NIFTI/Case${c}/affine${c}_2 

  echo "Calculating TRE for linear + nonlinear + linear fit"
  cd ..
  affdefaffTRE=$(python landmarks_centre_mass.py --inputnii  ${resectpath}/NIFTI/Case${c}/Case${c}-US-landmarks.nii.gz --movingnii  ${resectpath}/NIFTI/Case${c}/affine${c}_2_deformed_seg.nii.gz --savetxt  ${resectpath}/NIFTI/Case${c}/Case${c}-results-LNL)

echo ${c} >> ${outfile}
echo ${iniTRE} >> ${outfile}
echo ${affTRE} >> ${outfile}
echo ${affdefTRE} >> ${outfile}
echo ${affdefaffTRE} >> ${outfile}

done
exit
