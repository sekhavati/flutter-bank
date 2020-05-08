import 'dart:math';

final cardJson = '''
{
  "balance": ${Random().nextInt(5000).toDouble()},
  "number": ${Random().nextInt(6999) + 1000},
  "transactions": [
    {
      "description": "Amazon",
      "amount": 23.79,
      "time": "20200508T101500+0100"
    },
    {
      "description": "Asda",
      "amount": 54.99,
      "time": "20200507T153400+0100"
    },
    {
      "description": "FirstBus",
      "amount": 2.50,
      "time": "20200507T140300+0100"
    },
    {
      "description": "Netflix",
      "amount": 7.99,
      "time": "20200429T090000+0100"
    },
    {
      "description": "British Gas",
      "amount": 43.00,
      "time": "20200429T090000+0100"
    },
    {
      "description": "Halifax",
      "amount": 399.95,
      "time": "20200423T093000+0100"
    }
  ]
}
''';
