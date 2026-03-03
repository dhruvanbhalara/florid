class Repository {
  final int id;
  final String name;
  final String url;
  final String? fingerprint;
  final bool isEnabled;
  final DateTime? addedAt;
  final DateTime? lastSyncedAt;

  Repository({
    required this.id,
    required this.name,
    required this.url,
    this.fingerprint,
    this.isEnabled = true,
    this.addedAt,
    this.lastSyncedAt,
  });

  factory Repository.fromMap(Map<String, dynamic> map) {
    return Repository(
      id: map['id'] as int,
      name: map['name'] as String,
      url: map['url'] as String,
      fingerprint: map['fingerprint'] as String?,
      isEnabled: (map['is_enabled'] as int) == 1,
      addedAt: map['added_at'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['added_at'] as int)
          : null,
      lastSyncedAt: map['last_synced_at'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['last_synced_at'] as int)
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'fingerprint': fingerprint,
      'is_enabled': isEnabled ? 1 : 0,
      'added_at': addedAt?.millisecondsSinceEpoch,
      'last_synced_at': lastSyncedAt?.millisecondsSinceEpoch,
    };
  }

  Repository copyWith({
    int? id,
    String? name,
    String? url,
    String? fingerprint,
    bool? isEnabled,
    DateTime? addedAt,
    DateTime? lastSyncedAt,
  }) {
    return Repository(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      fingerprint: fingerprint ?? this.fingerprint,
      isEnabled: isEnabled ?? this.isEnabled,
      addedAt: addedAt ?? this.addedAt,
      lastSyncedAt: lastSyncedAt ?? this.lastSyncedAt,
    );
  }
}
