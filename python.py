import codewars_test as test
from solution import NAME


@test.describe("Tests")
def test_group():
    @test.it("Sample tests")
    def test_case():
        test.assert_equals(NAME(), )
