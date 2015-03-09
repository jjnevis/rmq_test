describe "Application 'rmq_test'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has two windows" do
    @app.windows.size.should == 2
  end
end
