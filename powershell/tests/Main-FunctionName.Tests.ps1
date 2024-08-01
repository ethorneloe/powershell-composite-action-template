
BeforeAll {

    # Configure variables used throughout all tests.

    # Get the main function name and the directory containing valid sample modules
    $parentDirectory = Join-Path $PSScriptRoot -ChildPath ".."
    $mainFunctionDirectory = Join-Path $parentDirectory -ChildPath "functions/main/"
    $mainFunction = Get-ChildItem -Path $mainFunctionDirectory -Filter "*.ps1"
    $mainFunctionName = $mainFunction | Select-Object -ExpandProperty Name
    $mainFunctionBaseName = $mainFunction | Select-Object -ExpandProperty BaseName

    # Dot source in the function
    . $mainFunction.FullName

    # Params for the main function calls in each test
    $params = @{
        param1 = 'value1'
        param2 = 'value2'
    }
}

Describe "Test Function $mainFunctionName" {

    BeforeEach {
        # Things to reset or configure before each individual test
    }

    It "should <name of your test>" {
        # Call main function with params and access values through the output object returned, or check the exception thrown

        # Testing an exception
        # { & $mainFunctionBaseName @params -WhatIf } | Should -Throw

        # Capturing function output to test values returned
        # $output = & $mainFunctionBaseName @params -WhatIf
        # $output | Select-Object -ExpandProperty <someproperty> | Should -Be <somevalue>
    }
}

AfterAll {
    # Clean up
}
