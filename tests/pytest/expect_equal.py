def expect_equal(output_function: str, output_expected: str):
    es_igual = output_function == output_expected
    assert es_igual