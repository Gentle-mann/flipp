class Translation {
  final String input;
  final String output;

  Translation({required this.input, required this.output});

  static final List<Translation> translations = [
    Translation(
      input:
          'Her majesty is my weapon and I would serve her honestly till the end of my life and I shall be loyal to her forever',
      output:
          'This world is very small and it shall end unexpectedly for all of us. So do good and be happy, for one day, you shall diej',
    ),
    Translation(
      input:
          'Her majesty is my weapon and I would serve her honestly till the end of my life and I shall be loyal to her forever',
      output:
          'This world is very small and it shall end unexpectedly for all of us. So do good and be happy, for one day, you shall die',
    ),
    Translation(
      input:
          'Her majesty is my weapon and I would serve her honestly till the end of my life and I shall be loyal to her forever',
      output:
          'This world is very small and it shall end unexpectedly for all of us. So do good and be happy, for one day, you shall die',
    ),
  ];
}
