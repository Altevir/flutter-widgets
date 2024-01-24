enum EnumMenus {
  widget1('Banner', '/widget1Banner'),
  widget2('Variáveis de ambiente', '/widget2Environment'),
  widget3('Enums', '/widget3Enums');

  final String nome;
  final String rota;

  const EnumMenus(this.nome, this.rota);
}
