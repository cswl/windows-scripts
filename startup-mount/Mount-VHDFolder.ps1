#
# Mount a virtual hard disk to a folder
#

function Select-Nth {
    param([int]$N) 

    $Input | Select-Object -First $N | Select-Object -Last 1
}

function Mount-VHDToFolder
{
    [CmdLetBinding()]
    param
    (
        [Parameter(Mandatory=$true)][String]$Image,
        [Parameter()][String]$MountFolder,
        [Parameter()][String]$DriveLetter,
        [Parameter(Mandatory=$true)][String]$PartitionNumber
    )
    process
    {
        try
        {
            # Gets a mounted disk image
            $mountedDisk = Mount-DiskImage -ImagePath $Image -NoDriveLetter -PassThru -ErrorAction Stop | Get-DiskImage
        }
        catch
        {
            Write-Error "Failed to mount disk"
            return
        }

            Write-Host "Disk: $($mountedDisk.Number) Partition: $($PartitionNumber)"
                # Add the access path for the disk
                try {
                Add-PartitionAccessPath -Passthru -DiskNumber $mountedDisk.Number -PartitionNumber $PartitionNumber -AccessPath $MountFolder -ErrorAction Stop
                }
                   catch     {
             Write-Error "Failed to add partition."
            return
            }

        }
    }

