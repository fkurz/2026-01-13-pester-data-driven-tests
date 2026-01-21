function Test-IsUpperCase {
  param(
    [string]$TheString
  )

  return "$TheString".ToUpper() -ceq "$TheString"
}
