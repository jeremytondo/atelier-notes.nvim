local assert = require("luassert")

describe("atelier-notes.core", function()
  it("should be require-able", function()
    local core = require("atelier-notes.core")
    assert.is_not_nil(core)
  end)
end)
