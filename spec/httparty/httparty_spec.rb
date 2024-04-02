describe 'HTTParty' do

  it 'content-type' do
    # stub_request(:get, "http://jsonplaceholder.typicode.com/posts/2").
    # with(
    #   headers: {
    #  'Accept'=>'*/*',
    #  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    #  'User-Agent'=>'Ruby'
    #   }).
    # to_return(status: 200, body: "", headers: {'content-type':'application/json'})




    response = HTTParty.get('http://jsonplaceholder.typicode.com/posts/2')
    content_type = response.headers["content-type"]
    expect(content_type).to match(/application\/json/)
  end

end