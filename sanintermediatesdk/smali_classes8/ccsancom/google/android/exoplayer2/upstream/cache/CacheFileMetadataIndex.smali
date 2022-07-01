.class final Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;
.super Ljava/lang/Object;
.source "CacheFileMetadataIndex.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_INDEX_LAST_TOUCH_TIMESTAMP:I = 0x2

.field private static final COLUMN_INDEX_LENGTH:I = 0x1

.field private static final COLUMN_INDEX_NAME:I = 0x0

.field private static final COLUMN_LAST_TOUCH_TIMESTAMP:Ljava/lang/String; = "last_touch_timestamp"

.field private static final COLUMN_LENGTH:Ljava/lang/String; = "length"

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerCacheFileMetadata"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)"

.field private static final TABLE_VERSION:I = 0x1

.field private static final WHERE_NAME_EQUALS:Ljava/lang/String; = "name = ?"


# instance fields
.field private final databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_touch_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;)V
    .locals 0
    .param p1, "databaseProvider"    # Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 100
    return-void
.end method

.method public static delete(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;J)V
    .locals 4
    .param p0, "databaseProvider"    # Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "hexUid":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 83
    .local v2, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v3, 0x2

    :try_start_1
    invoke-static {v2, v3, v0}, Lccsancom/google/android/exoplayer2/database/VersionTable;->removeVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 87
    invoke-static {v2, v1}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->dropTable(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    nop

    .line 94
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    nop

    .line 95
    return-void

    .line 90
    .restart local v1    # "tableName":Ljava/lang/String;
    .restart local v2    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    nop

    .end local v0    # "hexUid":Ljava/lang/String;
    .end local p0    # "databaseProvider":Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .end local p1    # "uid":J
    throw v3
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "hexUid":Ljava/lang/String;
    .restart local p0    # "databaseProvider":Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .restart local p1    # "uid":J
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Lccsanandroid/database/SQLException;
    new-instance v2, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v2, v1}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v2
.end method

.method private static dropTable(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p0, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 248
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "DROP TABLE IF EXISTS "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private getCursor()Lccsanandroid/database/Cursor;
    .locals 9

    .line 234
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 236
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    sget-object v3, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->COLUMNS:[Ljava/lang/String;

    .line 237
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hexUid"    # Ljava/lang/String;

    .line 252
    const-string v0, "ExoPlayerCacheFileMetadata"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAll()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getCursor()Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 150
    .local v1, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    :goto_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 153
    .local v3, "length":J
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 154
    .local v5, "lastTouchTimestamp":J
    new-instance v7, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;

    invoke-direct {v7, v3, v4, v5, v6}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;-><init>(JJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    nop

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "length":J
    .end local v5    # "lastTouchTimestamp":J
    goto :goto_0

    .line 156
    :cond_0
    nop

    .line 157
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :cond_1
    return-object v1

    .line 148
    .end local v1    # "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :cond_2
    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Lccsanandroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 157
    .end local v0    # "cursor":Lccsanandroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public initialize(J)V
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "hexUid":Ljava/lang/String;
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 116
    .local v1, "readableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    nop

    .line 117
    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lccsancom/google/android/exoplayer2/database/VersionTable;->getVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v3

    .line 119
    .local v3, "version":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 120
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v5}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 121
    .local v5, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    invoke-static {v5, v2, v0, v4}, Lccsancom/google/android/exoplayer2/database/VersionTable;->setVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 125
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v5, v2}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->dropTable(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CREATE TABLE "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-virtual {v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v2

    invoke-virtual {v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    nop

    .end local p1    # "uid":J
    throw v2
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .end local v0    # "hexUid":Ljava/lang/String;
    .end local v1    # "readableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "version":I
    .end local v5    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "uid":J
    :cond_0
    :goto_0
    nop

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 200
    .local v0, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    const-string v2, "name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 204
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method

.method public removeAll(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 216
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 219
    .local v0, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    const-string v4, "name = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    nop

    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    nop

    .line 230
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    nop

    .line 231
    return-void

    .line 226
    .restart local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    nop

    .end local p1    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v1
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public set(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "lastTouchTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    .local v0, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 178
    .local v1, "values":Lccsanandroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "length"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v2, "last_touch_timestamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    nop

    .line 185
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Lccsanandroid/content/ContentValues;
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method
