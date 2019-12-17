
# Open source Mainframe JOB execution process.
echo "Welcome to the open source Mainframe World"
#Compile Mainframe job
echo "Compile mainframe program"
jobid=$(zowe zos-jobs submit data-set "TT6PBE1.BUILD.COBOL(COMPJCL)" --rff jobid --rft string)
echo "Job Submitted for compilation, JOB ID is $jobid"
echo "Run Mainframe job"
jobid=$(zowe zos-jobs submit data-set "TT6PBE1.BUILD.COBOL(RUNJCL)" --rff jobid --rft string)
echo "Submitted our job, JOB ID is $jobid"
#wait for it to go to output
status="UNKNOWN"
while [ "$status" != "OUTPUT" ]; do
    echo "Checking status of job $jobid"
    status=$(zowe zos-jobs view job-status-by-jobid "$jobid" --rff status --rft string)
    echo "Current status is $status"
    sleep 5s
done;

echo "Job completed in OUTPUT status. Final result of job: "
zowe zos-jobs view job-status-by-jobid "$jobid"
zowe zos-jobs list spool-files-by-jobid "$jobid"
zowe zos-jobs view sfbi "$jobid" 106