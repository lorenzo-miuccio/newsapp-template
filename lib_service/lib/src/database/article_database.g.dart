// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorNewsDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$NewsDatabaseBuilder databaseBuilder(String name) =>
      _$NewsDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$NewsDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$NewsDatabaseBuilder(null);
}

class _$NewsDatabaseBuilder {
  _$NewsDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$NewsDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$NewsDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<NewsDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$NewsDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$NewsDatabase extends NewsDatabase {
  _$NewsDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  NewsDao? _newsDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `articles` (`url` TEXT NOT NULL, `title` TEXT NOT NULL, `author` TEXT NOT NULL, `description` TEXT NOT NULL, `text` TEXT NOT NULL, `publishDate` INTEGER NOT NULL, `readTime` INTEGER NOT NULL, `urlToImage` TEXT, `source` TEXT NOT NULL, `isShared` INTEGER NOT NULL, `isSaved` INTEGER NOT NULL, `isTopHead` INTEGER NOT NULL, `lastFetchDate` INTEGER NOT NULL, PRIMARY KEY (`url`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  NewsDao get newsDao {
    return _newsDaoInstance ??= _$NewsDao(database, changeListener);
  }
}

class _$NewsDao extends NewsDao {
  _$NewsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _articleDbInsertionAdapter = InsertionAdapter(
            database,
            'articles',
            (ArticleDb item) => <String, Object?>{
                  'url': item.url,
                  'title': item.title,
                  'author': item.author,
                  'description': item.description,
                  'text': item.text,
                  'publishDate': _dateTimeConverter.encode(item.publishDate),
                  'readTime': item.readTime,
                  'urlToImage': item.urlToImage,
                  'source': item.source,
                  'isShared': item.isShared ? 1 : 0,
                  'isSaved': item.isSaved ? 1 : 0,
                  'isTopHead': item.isTopHead ? 1 : 0,
                  'lastFetchDate': _dateTimeConverter.encode(item.lastFetchDate)
                }),
        _articleDbUpdateAdapter = UpdateAdapter(
            database,
            'articles',
            ['url'],
            (ArticleDb item) => <String, Object?>{
                  'url': item.url,
                  'title': item.title,
                  'author': item.author,
                  'description': item.description,
                  'text': item.text,
                  'publishDate': _dateTimeConverter.encode(item.publishDate),
                  'readTime': item.readTime,
                  'urlToImage': item.urlToImage,
                  'source': item.source,
                  'isShared': item.isShared ? 1 : 0,
                  'isSaved': item.isSaved ? 1 : 0,
                  'isTopHead': item.isTopHead ? 1 : 0,
                  'lastFetchDate': _dateTimeConverter.encode(item.lastFetchDate)
                }),
        _articleDbDeletionAdapter = DeletionAdapter(
            database,
            'articles',
            ['url'],
            (ArticleDb item) => <String, Object?>{
                  'url': item.url,
                  'title': item.title,
                  'author': item.author,
                  'description': item.description,
                  'text': item.text,
                  'publishDate': _dateTimeConverter.encode(item.publishDate),
                  'readTime': item.readTime,
                  'urlToImage': item.urlToImage,
                  'source': item.source,
                  'isShared': item.isShared ? 1 : 0,
                  'isSaved': item.isSaved ? 1 : 0,
                  'isTopHead': item.isTopHead ? 1 : 0,
                  'lastFetchDate': _dateTimeConverter.encode(item.lastFetchDate)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ArticleDb> _articleDbInsertionAdapter;

  final UpdateAdapter<ArticleDb> _articleDbUpdateAdapter;

  final DeletionAdapter<ArticleDb> _articleDbDeletionAdapter;

  @override
  Future<ArticleDb?> findArticleByUrl(String url) async {
    return _queryAdapter.query('SELECT * FROM articles WHERE url = ?1',
        mapper: (Map<String, Object?> row) => ArticleDb(
            title: row['title'] as String,
            author: row['author'] as String,
            description: row['description'] as String,
            text: row['text'] as String,
            publishDate: _dateTimeConverter.decode(row['publishDate'] as int),
            url: row['url'] as String,
            readTime: row['readTime'] as int,
            urlToImage: row['urlToImage'] as String?,
            source: row['source'] as String,
            isShared: (row['isShared'] as int) != 0,
            isSaved: (row['isSaved'] as int) != 0,
            isTopHead: (row['isTopHead'] as int) != 0,
            lastFetchDate:
                _dateTimeConverter.decode(row['lastFetchDate'] as int)),
        arguments: [url]);
  }

  @override
  Future<List<ArticleDb>> findSavedArticles() async {
    return _queryAdapter.queryList('SELECT * FROM articles WHERE isSaved = 1',
        mapper: (Map<String, Object?> row) => ArticleDb(
            title: row['title'] as String,
            author: row['author'] as String,
            description: row['description'] as String,
            text: row['text'] as String,
            publishDate: _dateTimeConverter.decode(row['publishDate'] as int),
            url: row['url'] as String,
            readTime: row['readTime'] as int,
            urlToImage: row['urlToImage'] as String?,
            source: row['source'] as String,
            isShared: (row['isShared'] as int) != 0,
            isSaved: (row['isSaved'] as int) != 0,
            isTopHead: (row['isTopHead'] as int) != 0,
            lastFetchDate:
                _dateTimeConverter.decode(row['lastFetchDate'] as int)));
  }

  @override
  Future<List<ArticleDb>> findSharedArticles() async {
    return _queryAdapter.queryList('SELECT * FROM articles WHERE isShared = 1',
        mapper: (Map<String, Object?> row) => ArticleDb(
            title: row['title'] as String,
            author: row['author'] as String,
            description: row['description'] as String,
            text: row['text'] as String,
            publishDate: _dateTimeConverter.decode(row['publishDate'] as int),
            url: row['url'] as String,
            readTime: row['readTime'] as int,
            urlToImage: row['urlToImage'] as String?,
            source: row['source'] as String,
            isShared: (row['isShared'] as int) != 0,
            isSaved: (row['isSaved'] as int) != 0,
            isTopHead: (row['isTopHead'] as int) != 0,
            lastFetchDate:
                _dateTimeConverter.decode(row['lastFetchDate'] as int)));
  }

  @override
  Future<List<ArticleDb>> findRecentArticlesBySection(bool isTop) async {
    return _queryAdapter.queryList(
        'SELECT * FROM articles WHERE isTopHead = ?1 AND lastFetchDate >= (SELECT IFNULL(MAX(lastFetchDate), 3000) FROM articles WHERE isTopHead = ?1)',
        mapper: (Map<String, Object?> row) => ArticleDb(title: row['title'] as String, author: row['author'] as String, description: row['description'] as String, text: row['text'] as String, publishDate: _dateTimeConverter.decode(row['publishDate'] as int), url: row['url'] as String, readTime: row['readTime'] as int, urlToImage: row['urlToImage'] as String?, source: row['source'] as String, isShared: (row['isShared'] as int) != 0, isSaved: (row['isSaved'] as int) != 0, isTopHead: (row['isTopHead'] as int) != 0, lastFetchDate: _dateTimeConverter.decode(row['lastFetchDate'] as int)),
        arguments: [isTop ? 1 : 0]);
  }

  @override
  Future<int?> findLastFetch() async {
    return _queryAdapter.query(
        'SELECT IFNULL(MAX(lastFetchDate), 3000) FROM articles',
        mapper: (Map<String, Object?> row) => row.values.first as int);
  }

  @override
  Future<void> deleteRecentArticles(bool isTop) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM articles WHERE isSaved = 0 AND isShared = 0 AND isTopHead = ?1',
        arguments: [isTop ? 1 : 0]);
  }

  @override
  Future<List<ArticleDb>> findRecentSavedArticles(bool isTop) async {
    return _queryAdapter.queryList(
        'SELECT * FROM articles WHERE isTopHead = ?1 AND (isSaved = 1 OR isShared = 1);',
        mapper: (Map<String, Object?> row) => ArticleDb(title: row['title'] as String, author: row['author'] as String, description: row['description'] as String, text: row['text'] as String, publishDate: _dateTimeConverter.decode(row['publishDate'] as int), url: row['url'] as String, readTime: row['readTime'] as int, urlToImage: row['urlToImage'] as String?, source: row['source'] as String, isShared: (row['isShared'] as int) != 0, isSaved: (row['isSaved'] as int) != 0, isTopHead: (row['isTopHead'] as int) != 0, lastFetchDate: _dateTimeConverter.decode(row['lastFetchDate'] as int)),
        arguments: [isTop ? 1 : 0]);
  }

  @override
  Future<void> insertArticles(List<ArticleDb> articles) async {
    await _articleDbInsertionAdapter.insertList(
        articles, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateArticle(ArticleDb article) async {
    await _articleDbUpdateAdapter.update(article, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteArticles(List<ArticleDb> articles) async {
    await _articleDbDeletionAdapter.deleteList(articles);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
