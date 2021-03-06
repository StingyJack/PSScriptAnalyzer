Describe "Correction Extent" {
    $type = [Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.CorrectionExtent]

    Context "Object construction" {
        It "creates the object with correct properties" {
            $correctionExtent = $obj = New-Object -TypeName $type -ArgumentList 1, 1, 1, 3, "get-childitem", "newfile", "cool description"

            $correctionExtent.StartLineNumber | Should -Be 1
            $correctionExtent.EndLineNumber | Should -Be 1
            $correctionExtent.StartColumnNumber | Should -Be 1
            $correctionExtent.EndColumnNumber | Should -Be 3
            $correctionExtent.Text | Should -Be "get-childitem"
            $correctionExtent.File | Should -Be "newfile"
            $correctionExtent.Description | Should -Be "cool description"
        }
    }
}
