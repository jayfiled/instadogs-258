require 'test_helper'

class DogTest < ActiveSupport::TestCase
  test "#age returns the correct age" do
    kogi = dogs(:kogi) # <-- uses the `test/fixtures/dogs.yml` to create the instance
    assert_equal 5, kogi.age
  end
end
