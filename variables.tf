variable "GOOGLE_APPLICATION_CREDENTIALS" {
  description = "Path to the Google Cloud credentials file"
  type        = string
  sensitive   = true # Hide the variable in logs for security purposes
}
