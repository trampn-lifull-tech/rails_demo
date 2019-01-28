class TestController < ApplicationController

  def test
    event = OrderPlaced.new(data: {
      order_id: 1,
      order_data: "sample",
      festival_id: "b2d506fd-409d-4ec7-b02f-c6d2295c7edd"
    })
    @@event_store.publish(event)

    @data = @@event_store.inspect
  end
end
