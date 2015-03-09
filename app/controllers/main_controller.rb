class MainController < UIViewController

  def viewDidLoad
    super
    rmq.stylesheet = MainStylesheet
    rmq(self.view).apply_style :root_view

    Store.hello_world_label = rmq.append(UILabel, :hello_world).tag(:hello_world_tag).get
    Test.run
  end
end
