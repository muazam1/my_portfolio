class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? andriodlink;
  final String? ioslink;
  final String? weblink;

  ProjectUtils( {
    required this.image,
    required this.title,
    required this.subtitle,
    this.andriodlink,
    this.ioslink,
    this.weblink
  });
}
List<ProjectUtils> hobbyProjectsUtils = [
  ProjectUtils(
image: "assets/projects/h01.jpeg",
title: "FluxStore WooCommerce",
subtitle: "Full integration with WooCommerce website and impressive UI design",
    weblink: "https://flutterawesome.com/fluxstore-woocommerce-full-integration-with-woocommerce-website-and-impressive-ui-design/#google_vignette",
  ),
  ProjectUtils(
    image: "assets/projects/h02.jpg",
    title: "All Language Translator",
    subtitle: "A tool supports dictionary lookup, text translation from one language to another",
    andriodlink: "https://all-language-translator-free.en.uptodown.com/android",
  ),
];
List<ProjectUtils> myProjects = [
  ProjectUtils(
      image: "assets/projects/calculator.png",
      title: "Calculator App ",
      subtitle: "This is Calculator app for Web,Android, and IOS",
  ),
  ProjectUtils(
    image: "assets/projects/whts_chat.png",
    title: "WhatsApp UI",
    subtitle: "This is a projects of WhatsApp UI and making it responsive",
  ),
];