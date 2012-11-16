module Framework
  module Components
    class Graph

      attr_reader :author,:root,:created,:guiVersion,:id,:licenseCode,:licenseType, :modified,:modifiedBy,:name

      def initialize(author,name,id)
        @author = author
        @name = name
        @id = id
      end

      def get_attributes
        attribute = Hash.new
        instance_variables.each do |v|
            variable_name = v.sub("@","")
            attribute["#{variable_name}"] = send(variable_name)
        end
        attribute
      end


    end
  end
end