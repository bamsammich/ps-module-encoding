function ConvertTo-Base64String {
  <#
  .Synopsis
  ConvertTo-Base64String encodes a string to its base64 value.

  .Description
  ConvertTo-Base64String encodes a string to its base64 value.

  .Example
  ConvertTo-Base64String -Base64String random
#>
  [CmdletBinding()]
  [OutputType([string])]
  param(
    [Parameter(Mandatory,
      HelpMessage = "Raw string value to encode.",
      ValueFromPipeline)]
    [string]$String
  )

  process {
    $bytes = [System.Text.Encoding]::Unicode.GetBytes($String)
    return [System.Convert]::ToBase64String($bytes)
  }
}