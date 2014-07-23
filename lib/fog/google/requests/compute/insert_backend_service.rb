module Fog
  module Compute
    class Google
      class Mock
        def insert_backend_service(backend_service_name)
            Fog::Mock.not_implemented
        end
      end

      class Real
        def insert_backend_service(backend_service_name, opts = {})
          api_method = @compute.backend_services.insert
          parameters = {
            'project' => @project
          }
          body_object = { 'name' => backend_service_name }
          body_object.merge!(opts)
          result = self.build_result(api_method, parameters, body_object=body_object)

          response = self.build_response(result)
        end
      end
    end
  end
end

