import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:animals_app_task/data/model/cat.dart';

class FavoritesDatabase {
  static final FavoritesDatabase instance = FavoritesDatabase._init();
  static Database? _database;

  FavoritesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('favorites.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE favorites(
        id TEXT PRIMARY KEY,
        name TEXT,
        origin TEXT,
        countryCode TEXT,
        lifeSpan TEXT,
        referenceImageId TEXT,
        weight TEXT
      )
    ''');
  }

  Future<void> insertFavorite(FavoriteCat cat) async {
    final db = await instance.database;
    await db.insert(
      'favorites',
      cat.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<FavoriteCat>> getFavorites() async {
    final db = await instance.database;
    final result = await db.query('favorites');
    return result.map((json) => FavoriteCat.fromMap(json)).toList();
  }

  Future<void> removeFavorite(String id) async {
    final db = await instance.database;
    await db.delete('favorites', where: 'id = ?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}

class FavoriteCat {
  final String id;
  final String name;
  final String origin;
  final String countryCode;
  final String lifeSpan;
  final String? referenceImageId;

  FavoriteCat({
    required this.id,
    required this.name,
    required this.origin,
    required this.countryCode,
    required this.lifeSpan,
    this.referenceImageId,
  });

  factory FavoriteCat.fromMap(Map<String, dynamic> map) {
    return FavoriteCat(
      id: map['id'],
      name: map['name'],
      origin: map['origin'],
      countryCode: map['countryCode'],
      lifeSpan: map['lifeSpan'],
      referenceImageId: map['referenceImageId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'origin': origin,
      'countryCode': countryCode,
      'lifeSpan': lifeSpan,
      'referenceImageId': referenceImageId,
    };
  }

  factory FavoriteCat.fromCat(Cat cat) {
    return FavoriteCat(
      id: cat.id,
      name: cat.name,
      origin: cat.origin,
      countryCode: cat.countryCode,
      lifeSpan: cat.lifeSpan,
      referenceImageId: cat.referenceImageId,
    );
  }

  Cat toCat() {
    return Cat(
      weight: WeightModel(imperial: '', metric: ''),
      id: id,
      name: name,
      temperament: '',
      origin: origin,
      countryCodes: countryCode,
      countryCode: countryCode,
      description: '',
      lifeSpan: lifeSpan,
      indoor: 0,
      adaptability: 0,
      affectionLevel: 0,
      childFriendly: 0,
      dogFriendly: 0,
      energyLevel: 0,
      grooming: 0,
      healthIssues: 0,
      intelligence: 0,
      sheddingLevel: 0,
      socialNeeds: 0,
      strangerFriendly: 0,
      vocalisation: 0,
      experimental: 0,
      hairless: 0,
      natural: 0,
      rare: 0,
      rex: 0,
      suppressedTail: 0,
      shortLegs: 0,
      hypoallergenic: 0,
      referenceImageId: referenceImageId,
    );
  }
}
