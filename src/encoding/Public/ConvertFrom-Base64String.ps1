<#
  .Synopsis
  ConvertFrom-Base64String decodes a base64-encoded string.

  .Description
  ConvertFrom-Base64String decodes a base64-encoded string.

  .Example
  ConvertFrom-Base64String -Base64String cwB0AHIAaQBuAGcA
#>
function ConvertFrom-Base64String {
  [CmdletBinding()]
  [OutputType([string])]
  param(
    [Parameter(Mandatory)]
    [string]$Base64String
  )

  process {
    return [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($Base64String))
  }
}