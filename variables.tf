variable "namevm" {
  type = string 
  description = "(Obrigatório) Um nome exclusivo para o recurso, exigido pelo GCE. Alterar isso força a criação de um novo recurso."
}
variable "tipoMaquina" {
    type = string
    description = " (Obrigatório) O tipo de máquina a ser criado."
}

variable "zona" {
    type = string
    description = " (Opcional) A zona em que a máquina deve ser criada. Se não for fornecido, a zona do provedor será us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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dd