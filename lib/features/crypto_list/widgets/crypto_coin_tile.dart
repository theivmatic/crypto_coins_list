import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName, required this.coinPriceUSD,
  });

  final String coinName;
  final double coinPriceUSD;

  @override
  Widget build(BuildContext context) {
    //Просто переменная для сокращения
    final theme = Theme.of(context);

    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bitcoin_logo.svg',
        height: 30,
        width: 30,
      ),
      trailing: const Icon(Icons.arrow_forward),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '$coinPriceUSD',
        style: theme.textTheme.labelSmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coinName,
        );
      },
    );
  }
}