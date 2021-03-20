function ConvertTo-Base64String {
  <#
  .Synopsis
  ConvertFrom-Base64String decodes a base64-encoded string.

  .Description
  ConvertFrom-Base64String decodes a base64-encoded string.

  .Example
  ConvertFrom-Base64String -Base64String cwB0AHIAaQBuAGcA
#>
  [CmdletBinding()]
  [OutputType([string])]
  param(
    [Parameter(Mandatory)]
    [string]$Text
  )

  process {
    $bytes = [System.Text.Encoding]::Unicode.GetBytes($Text)
    return [System.Convert]::ToBase64String($bytes)
  }
}