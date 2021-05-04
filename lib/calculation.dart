List<String> value = [];
List<String> rootnum = [];
double oprend1;
double oprend2;
var result;
var operation = '';

String buttontap(String a) {
  List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == a) {
      value.add(a);
    }
  }

  if (a == '.') {
    value.add(a);
  }
  
  if (a == '+' || a == '-' || a == '×' || a == '÷') {
    String num = value.join();
    oprend1 = double.parse(num);
    value = [];
    operation = a;
  }

  if (a == 'C') {
    oprend1 = 0;
    oprend2 = 0;
    result = 0;
    value = [];
    operation = null;
  }

  if (a == 'Dlt') {
    value.removeLast();
  }

  if (a == '=') {
    String num = value.join();
    oprend2 = double.parse(num);
    value = [];

    if (operation == '+') {
      result = oprend1 + oprend2;
    } else if (operation == '-') {
      result = oprend1 - oprend2;
    } else if (operation == '×') {
      result = double.parse((oprend1 * oprend2).toStringAsFixed(3));
    } else if (operation == '÷') {
      result = double.parse((oprend1 / oprend2).toStringAsFixed(6));
    }
    print(result);
  }

  return result.toString();
}
