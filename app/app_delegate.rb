class AppDelegate < PM::Delegate
  status_bar true, animation: :none

  def on_load(app, options)
    open LoginScreen.new(nav_bar: true)
  end
  
end

# From the ProMotion-formotion README example.
class LoginScreen < PM::FormotionScreen

  title "Login"

  def on_submit(_form)

  end

  def table_data
    {
      sections: [{
        title: "Credentials",
        rows: [{
          title: "Email",
          key: :email,
          placeholder: "example@kohactive.com",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
        {
          title: "Password",
          key: :password,
          placeholder: "",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
      ]
      }]
    }
  end
end
