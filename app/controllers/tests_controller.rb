class TestsController < ApplicationController
  def index
  end

  def async_a
    sleep 4
    render template: "tests/async_a"
  end

  def aync_b
    sleep 3
    render template: "tests/async_b"
  end

  def async_c
    sleep 2
    render template: "tests/async_c"
  end
end
