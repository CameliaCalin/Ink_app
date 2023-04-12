import 'package:equatable/equatable.dart';

class Article extends Equatable{
  final String id;
  final String title;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt
  });

static List<Article> articles = [

  Article(
      id: '1',
      title: 'The Science of Happiness',
      body: 'cevvaaaaa',
      author: 'James Kalls',
      authorImageUrl: '....',
      category: 'Psychology',
      imageUrl: 'https://images.unsplash.com/photo-1535546125792-dd417e0f8f87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      views: 4500,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
  ),
  //
  Article(
    id: '2',
    title: 'Breaking Free from Self-Limiting Beliefs',
    body: 'cevvaaaaa',
    author: 'James Kalls',
    authorImageUrl: '...',
    category: 'Psychology',
    imageUrl: 'https://images.unsplash.com/photo-1542353436-312f0e1f67ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=642&q=800',
    views: 1067,
    createdAt: DateTime.now().subtract(const Duration(hours: 7)),
  ),

  Article(
    id: '3',
    title: 'Mindful Eating',
    body: 'cevvaaaaa',
    author: 'James Kalls',
    authorImageUrl: '...',
    category: 'Psychology',
    imageUrl: 'https://images.unsplash.com/photo-1681080811282-9b271ad760ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=404&q=80',
    views: 890,
    createdAt: DateTime.now().subtract(const Duration(hours: 8)),
  ),

  Article(
    id: '4',
    title: 'The Art of Letting Go',
    body: 'cevvaaaaa',
    author: 'James Kalls',
    authorImageUrl: '...',
    category: 'Psychology',
    imageUrl: 'https://images.unsplash.com/photo-1681066471130-5e02ee1e0026?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    views: 1760,
    createdAt: DateTime.now().subtract(const Duration(hours: 9)),
  ),

  Article(
    id: '5',
    title: 'Breaking Free from Self-Limiting Beliefs',
    body: 'cevvaaaaa',
    author: 'James Kalls',
    authorImageUrl: 'https://i.pinimg.com/564x/6a/1e/69/6a1e69880bcdd8b95264d688a0612e3c.jpg',
    category: 'Psychology',
    imageUrl: 'https://images.unsplash.com/photo-1571816119607-57e48af1caa9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    views: 1900,
    createdAt: DateTime.now().subtract(const Duration(hours: 10)),
  ),
];

  @override
  List<Object?> get props => [
    id,
    title,
    body,
    author,
    authorImageUrl,
    category,
    imageUrl,
    views,
    createdAt
  ];
}