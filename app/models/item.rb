class Item < ApplicationRecord
  def message
    if name.present?
      "Item name is #{name}"
    else
      "Item name is empty."
    end
  end

  def full_message
    x = 10
    a = nil
    if name.present?
        "Full message: Item name is #{name} " + "  and id is " +  id.to_s
    else
      "Full Message:   Item name is empty. "
    end
  end

  def bad_method1(name_i)
    # this is bad method
    where("name = '#{name_i}'")
  end

  def bad_method2(params)
    `ls #{params[:file]}`
  end
end
