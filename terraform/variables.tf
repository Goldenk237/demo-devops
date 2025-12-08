variable "project_path" {
  description = "Chemin absolu vers ton dossier de projet"
  type        = string
  default     = "d:/tp_repository/demo-devops"  # change si besoin
}

variable "port" {
  description = "Port local"
  default     = 8080
}