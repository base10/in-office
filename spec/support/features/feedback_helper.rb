module Features
  def have_feedback(message)
    have_data_role(role: "feedback", text: message)
  end
end
