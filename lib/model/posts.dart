class Posts {
  String title,
      category,
      body,
      imgAsset,
      author,
      authorImgAsset,
      authorRole,
      createdAt;

  Posts({
    required this.title,
    required this.category,
    required this.body,
    required this.imgAsset,
    required this.author,
    required this.authorImgAsset,
    required this.authorRole,
    required this.createdAt,
  });
}

var postLists = [
  Posts(
    title:
        'Understanding Color Theory: The Color Wheel and Finding Complementary Colors',
    category: 'UI DESIGN',
    body:
        'Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum.',
    imgAsset:
        'images/posts/understanding-color-theory-the-color-wheel-and-finding-complementary-colors.png',
    author: 'Leslie Alexander',
    authorImgAsset: 'images/avatar/leslie-alexander.png',
    authorRole: 'UI Designer',
    createdAt: 'July 2, 2021',
  ),
  Posts(
    title: 'How To Design A Product That Can Grow Itself 10x In Year',
    category: 'INTERNET',
    body:
        'Auctor Porta. Augue vitae diam mauris faucibus blandit elit per, feugiat leo dui orci. Etiam vestibulum. Nostra netus per conubia dolor.',
    imgAsset:
        'images/posts/how-to-design-a-product-that-can-grow-itself-10x-in-year.png',
    author: 'Jenny Wilson',
    authorImgAsset: 'images/avatar/jenny-wilson.png',
    authorRole: 'Product Designer',
    createdAt: 'June 28, 2021',
  ),
  Posts(
    title: 'The More Important The Work, The More Important The Rest',
    category: '9 TO 5',
    body:
        'Suitable Quality is determined by product users, clients or customers, not by society in general. For example, a low priced product may be viewed as having high.',
    imgAsset:
        'images/posts/the-more-important-the-work-the-iore-important-the-rest.png',
    author: 'Esther Howard',
    authorImgAsset: 'images/avatar/ester-howard.png',
    authorRole: 'Entrepreneur',
    createdAt: 'June 22, 2021',
  ),
  Posts(
    title: 'Email Love - Email Inspiration, Templates and Discovery',
    category: 'INSPIRATIONS',
    body:
        'Consider that for a moment: everything we see around us is assumed to have had a cause and is contingent upon something else.',
    imgAsset:
        'images/posts/email-love-email-inspiration-templates-and-discovery.png',
    author: 'Robert Fox',
    authorImgAsset: 'images/avatar/robert-fox.png',
    authorRole: 'Front-End Engineer',
    createdAt: 'June 18, 2021',
  ),
];
