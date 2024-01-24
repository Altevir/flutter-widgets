enum EnumBanks {
  btgPactual('BTG Pactual', 'assets/icons/btg_pactual.svg'),
  caixa('Caixa', 'assets/icons/caixa.svg'),
  cora('Cora', 'assets/icons/cora.svg'),
  mastercard('Mastercard', 'assets/icons/mastercard.svg'),
  pan('Banco Pan', 'assets/icons/pan.svg'),
  willBank('Will Bank', 'assets/icons/will_bank.svg');

  final String nome;
  final String icone;

  const EnumBanks(this.nome, this.icone);
}
