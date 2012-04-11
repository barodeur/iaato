def it_should_be_a_ship(path = "")
  its(:body){ should have_json_path("#{path}_id") }
  its(:body){ should have_json_type(String).at_path("#{path}name") }
  its(:body){ should be_json_eql(%("concordia")).at_path("#{path}name") }
  its(:body){ should have_json_type(Integer).at_path("#{path}capacity") }
  its(:body){ should be_json_eql(200).at_path("#{path}capacity") }
  its(:body){ should have_json_type(Integer).at_path("#{path}travelers") }
  its(:body){ should be_json_eql(0).at_path("#{path}travelers") }
  its(:body){ should be_json_eql(:null).at_path("#{path}position") }
end
