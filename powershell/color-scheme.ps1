# Color Schemes

$colors = @{}
$colors['Command'] = "`e[94m"
$colors['String'] = "`e[36m"
Set-PSReadLineOption -Colors $colors

# List Color Schemes

$PSStyle.FileInfo.Directory = "`e[3m"