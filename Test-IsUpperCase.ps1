function Test-IsUpperCase {
  param(
    [Parameter(Mandatory = $True)]
    [string]$TheString
  )

  return "$TheString".ToUpper() -ceq "$TheString"
}
