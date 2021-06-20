open Jest
open ExpectJs
open Converter

let unicode_text = `ဂဃနဏ`
let zawgyi_text = `ဂဃနဏ`
describe("Converter", () => {
  test("uni2zg", () => {
    expect(uni2zg(unicode_text) == zawgyi_text)->toBeTruthy
  })

  test("zg2uni", () => {
    expect(zg2uni(zawgyi_text) == unicode_text)->toBeTruthy
  })
})
