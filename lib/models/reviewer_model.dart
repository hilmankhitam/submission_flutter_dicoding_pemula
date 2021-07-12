class Reviewer{
  final String name;
  final String imageReviewer;
  final String comment;
  final double rating;
  
  Reviewer({
    this.name,
    this.imageReviewer,
    this.comment,
    this.rating
  });
}

List<Reviewer> reviewer = [
  Reviewer(
    name: 'Stave Jobs',
    imageReviewer: 'https://i.imgur.com/UMUY9Yn.jpeg',
    comment: "the hotel is very good, the bed is very comfortable",
    rating: 5.0,
  ),
  Reviewer(
    name: 'Mark Zuckerberg',
    imageReviewer: 'https://i.imgur.com/bbUhuLu.jpeg',
    comment: "this place is very nice",
    rating: 4.5,
  ),
  Reviewer(
    name: 'Bill Gates',
    imageReviewer: 'https://i.imgur.com/25wA27j.jpeg',
    comment: "the bed is very soft, and the service is very satisfying",
    rating: 5.0,
  ),
];