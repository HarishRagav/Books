$chapters = @(
    'd:\desktop\book\Chapter-1.txt',
    'd:\desktop\book\Chapter-2.txt',
    'd:\desktop\book\chapter-3.txt',
    'd:\desktop\book\Chapter-4.txt',
    'd:\desktop\book\Chapter-5.txt'
)

$output = ""
for ($i = 0; $i -lt $chapters.Count; $i++) {
    $content = Get-Content $chapters[$i] -Raw -Encoding UTF8
    $content = $content.TrimEnd()
    $output += $content
    if ($i -lt $chapters.Count - 1) {
        $output += "`r`n`f`r`n"
    }
}

$output | Out-File -FilePath 'd:\desktop\book\The-Last-Tuesday.txt' -Encoding UTF8 -NoNewline
Write-Host "Done. Combined file recreated with proper UTF-8 encoding."
