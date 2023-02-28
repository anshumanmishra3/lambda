# resource "aws_lambda_layer_version" "lambda_layer" {
#   filename   = "${path.module}/Modules/layer.zip"
#   layer_name = "sagemaker-test-layer"

#   compatible_runtimes = ["python3.8"]
# }


resource "aws_lambda_layer_version" "lambda_layer" {
  layer_name = "sagemaker-test-layer"
  s3_bucket = var.lambda_layers_bucket
  s3_key = var.lambda_layer_artifact

  compatible_runtimes = ["python3.8"]
}


# module "lambda_layer_s3" {
#   source = "./modules/lambda_layer"

#   create_layer = true

#   layer_name          = "lambda-layer-s3"
#   description         = "Sagemaker lambda layer (deployed from S3)"
#   compatible_runtimes = ["python3.8"]

# #   source_path = "../src/lambda-layer"

#   store_on_s3 = true
#   s3_bucket   = "layers49"
#   s3_key = "layer.zip"
# }


# module "lambda_functions" {
#   source = "./modules/lambda_functions"

#   function_configurations = [
#     {
#       function_name   = "function1"
#       handler         = "function1.lambda_handler"
#       runtime         = "python3.8"
#       code_directory  = "function1"
#       memory_size        = 128
#     },
#     {
#       function_name   = "function2"
#       handler         = "function2.lambda_handler"
#       runtime         = "python3.8"
#       code_directory  = "function2"
#       memory_size        = 128
#     }
#   ]
# }


# output "function1_arn" {
#   value = module.lambda_functions.lambda_functions["function1"].arn
# }

# output "function2_arn" {
#   value = module.lambda_functions.lambda_functions["function2"].arn
# }
