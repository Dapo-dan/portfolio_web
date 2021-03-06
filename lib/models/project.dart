// ignore_for_file: file_names, non_constant_identifier_names

class Project {
  final String? title, description, url;

  Project({this.title, this.description,  this.url});
}

List<Project> demo_projects = [
  Project(
    title: "To-Do Monitor",
    description:
        "This can be used to keep track of plans, mark them as completed and also delete them when done. State management used is GetX.",
    url: 'https://github.com/Dapo-dan/todo'
  ),
  Project(
    title: "Lekki Phase 1 properties",
    description:
        "A properties application that shows the list of available properties for rentage in an environment with all the necessary details available including property owner. Details of properties can also be updated as the situation permits.",
        url: 'https://github.com/Dapo-dan/lekki_phase_one'
  ),
  Project(
    title: "Insight Timer Redesign - Flutter UI",
    description:
        "Insight timer is a meditation application that enables the user choose their gurus based on their likes and speeches, books and routines are tailored to those likes",
        url: 'https://github.com/Dapo-dan/insight_timer_ui'
  ),
  Project(
    title: "Side Chef - Flutter UI",
    description:
        "Side chef is a food ordering platform for buying specific meals and ingredients based on preference",
    url: 'https://github.com/Dapo-dan/side_chef_ui'
  ),
  Project(
    title: "Diabetes Application",
    description:
        "This application is created for the purpose of checking out the number of diabetic patients in Nigerian states.",
    url: 'https://github.com/Dapo-dan/diabetes_application'
  ),
  Project(
    title: "Air Salon - Flutter UI",
    description:
        "Used to make appointments with a barber in the area one is...",
    url: 'https://github.com/Dapo-dan/air_salon'
  ),
];
