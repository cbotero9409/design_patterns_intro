# visitor.rb

class Visitor
  def visit_file(_file)
    raise NotImplementedError
  end

  def visit_folder(_folder)
    raise NotImplementedError
  end
end