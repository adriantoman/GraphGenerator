module Framework
  module Components
    class Base

      attr_reader :guiX,:guiY,:guiWitdth,:guiHeight,:enabled,:element_id,:type, :guiName


      def initialize(element_id,type,guiName,options = {})
        @element_id = element_id
        @type = type
        @guiName = guiName
      end

      def get_attributes
        attribute = Hash.new
        instance_variables.each do |v|
            if (v == "element_id") then
              attribute["id"] = @element_id
            else
              variable_name = v.sub("@","")
              attribute["#{variable_name}"] = send(variable_name)
            end
        end
        attribute

      end
    end
  end
end





