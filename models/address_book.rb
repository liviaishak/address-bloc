require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
     @entries = []
   end

  def add_entry(name, phone_number, email)
     # #9
     index = 0
     entries.each do |entry|
     # #10
       if name < entry.name
         break
       end
       index+= 1
     end
     # #11
     entries.insert(index, Entry.new(name, phone_number, email))
  end

  #this method will remove the entry from entries
  def remove_entry(name, phone_number, email)
    #iterate over entries until you find the match
    index = 0
    entries.each do |entry|
      if entry.name == name && entry.phone_number == phone_number && entry.email == email
        break
      end
      index+= 1
    end
    entries.delete_at(index)
  end
end
