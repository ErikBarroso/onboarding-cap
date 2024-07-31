
entity OVcab : managed {
key OrdemId: Int32 
DataCriacao: DateTime 
CriadoPor: String(20)
ClienteId: Int32
TotalItens: Decimal (15, 2) 
TotalFrete: Decimal (15, 2) 
TotalOrdem: Decimal (15, 2) 
Status: String(20)
}
// (Texto 1)(N = Novo, L = Fornecido, F = Faturado, C = Cancelado)
// }
entity OVItem : managed {
  key OrdemId: Int32
  key ItemId: Int32
  Material: String(18)
  Descricao: String (100)
  Quantidade: Int32
  PrecoUni: Decimal(15,2 )
  PrecoTot : Decimal(15, 2)
}

entity Mensagem : managed{

}
  