module UsersHelper

  def gravatar_for(user)
    gravatar_url = "https://seeklogo.com/images/M/manchester-united-logo-F14DA1FCCD-seeklogo.com.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
