import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widgets/globals/enum_banks.dart';

class Widget3Enums extends StatefulWidget {
  const Widget3Enums({super.key});

  @override
  State<Widget3Enums> createState() => _Widget3EnumsState();
}

class _Widget3EnumsState extends State<Widget3Enums> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enums'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Autocomplete<EnumBanks>(
              fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Pesquisar...',
                  ),
                );
              },
              displayStringForOption: (EnumBanks display) => display.nome,
              optionsViewBuilder: (context, onSelected, options) {
                return ListView.builder(
                  padding: const EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 8),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = options.elementAt(index);
                    return GestureDetector(
                      onTap: () {
                        onSelected(item);
                      },
                      child: Material(
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                          leading: SvgPicture.asset(
                            item.icone,
                            width: 32,
                            height: 32,
                          ),
                          title: Text(item.nome),
                        ),
                      ),
                    );
                  },
                );
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<EnumBanks>.empty();
                }
                return EnumBanks.values.where((EnumBanks option) {
                  return option.nome.toLowerCase().contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (EnumBanks selectedItem) {
                log('Valor selecionado: ${selectedItem.name}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
