module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name, query_params = {})
    case page_name
    when /^\/.+$/  # it already is a path
      page_name
#    when /^the admin dashboard/i
#      admin_dashboard_path
#    when /^Email:(.+) for Project:(.+)$/i
#      email = Email.find_by_subject($1)
#      project = Project.find_by_title($2)
#      project_email_path(project, email)
#    when /^the "Edit" page for (Project):(.+)$/i
#      # for un-nested routes
#      model_identifier = $2
#      model_class = $1.classify.constantize
#      model_instance = model_class.send(default_finder(model_class), model_identifier)
#      edit_polymorphic_path([:admin, model_instance])

    when /^the home\s?page$/i
      '/'

    when /^#{requested_model_pattern}$/
      requested_model = $1
      model_identifier = $2
      model_class = requested_model.parameterize.underscore.classify.constantize # handles spaces
      model = model_class.send(default_finder(model_class), model_identifier)
      polymorphic_path(model)

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.+) page$/
        path_components = $1.underscore.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
