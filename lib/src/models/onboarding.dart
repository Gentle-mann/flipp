class OnboardingDetail {
  final String imageSrc;
  final String description;

  OnboardingDetail({required this.imageSrc, required this.description});

  static final List<OnboardingDetail> onboardingDetails = [
    OnboardingDetail(
      imageSrc: 'assets/images/text.jpeg',
      description: 'Translate any text across 90+ languages\nFast. Nice. Easy',
    ),
    OnboardingDetail(
      imageSrc: 'assets/images/speech.png',
      description: 'Translate audio using Flipp.\nIt is seamless and smooth',
    ),
    OnboardingDetail(
      imageSrc: 'assets/images/like.jpeg',
      description:
          'Like and save your favorite translations. Setup Flipp exactly as you want it!',
    ),
  ];
}
