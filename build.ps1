# build.ps1 - Windows Build Script

# 1. Create output folder
if (!(Test-Path -Path "dist")) {
    New-Item -ItemType Directory -Path "dist" | Out-Null
}

# 2. Define the path to the local filter
# On Windows, npm creates a .cmd file in .bin
$MermaidFilter = ".\node_modules\.bin\mermaid-filter.cmd"

# 3. Check if the filter actually exists
if (!(Test-Path $MermaidFilter)) {
    Write-Host "Error: mermaid-filter not found at $MermaidFilter" -ForegroundColor Red
    Write-Host "Please run: npm install mermaid-filter" -ForegroundColor Yellow
    Exit
}

# 4. Run Pandoc using the FULL PATH to the filter
Write-Host "Compiling presentation..." -ForegroundColor Cyan

pandoc src/presentation.md `
  --filter ".\node_modules\.bin\mermaid-filter.cmd" `
  --reference-doc templates/reference.pptx `
  -o dist/presentation.pptx `
  --verbose

# 5. Check status
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Success! Presentation saved to dist/presentation.pptx" -ForegroundColor Green
} else {
    Write-Host "❌ Build Failed." -ForegroundColor Red
}

Read-Host -Prompt "Press Enter to exit"