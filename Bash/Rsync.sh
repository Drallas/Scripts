
# Rsync is what Robocopyocopy is for Windows.

## local > remote
`rsync -zaP -e ‘ssh -p 19690’ ~/Desktop/original/ user@HomeNAS:Scans`

## remote > local
`rsync -zaP -e ‘ssh -p 19690’ user@HomeNAS:Scans/ ~/Desktop/original/`