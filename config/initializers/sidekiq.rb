Thread.new do
  MQTT::Client.connect(:host => 'tvt16spl5.ipt.oamk.fi', :port => 1883) do |c|
    # If you pass a block to the get method, then it will loop
    c.get('koulu/lämpötila') do |topic,message|
      Tempature.create(:temp => message.to_s)
    end
  end
end
