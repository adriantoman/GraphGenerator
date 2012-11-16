module Framework
  module Components
    class CSVReader < Base


      attr_reader :fileURL

      def initialize(id,type,guiName,fileURL, options = {})
        super(id,type,guiName,options)
        @fileURL = fileURL
      end


      def to_xml(xml)
        xml.Node("id" => element_id)
      end

    end






  end


end