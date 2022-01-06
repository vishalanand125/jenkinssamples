$FolderA = New-Item -Path "c:\" -Name "vish" -ItemType "directory"
$FolderA.Update();
$FolderA.BreakRoleInheritance($true);
$FolderA.Update();
Write-Output "Folder created " $FolderA.Url


$FolderBURL=$list.ParentWebUrl +"/" + $FolderA.Url;
write-host $FolderBURL;
$FolderB = $list.AddItem($FolderBURL, [Microsoft.SharePoint.SPFileSystemObjectType]::Folder, "Folder B");
$FolderB.Update();
$FolderB.BreakRoleInheritance($false); 
$FolderB.Update();