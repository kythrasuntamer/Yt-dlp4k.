param(
    [Parameter(ValueFromRemainingArguments = $true)]
    $Url
)

yt-dlp `
  -f "bv*[height<=2160]+ba/best" `
  --merge-output-format mkv `
  --write-subs `
  --write-auto-subs `
  --sub-lang "en,ja" `
  --embed-subs `
  $Url
