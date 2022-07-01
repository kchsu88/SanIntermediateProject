.class final Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseStorage"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_KEY:I = 0x1

.field private static final COLUMN_INDEX_METADATA:I = 0x2

.field private static final COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_METADATA:Ljava/lang/String; = "metadata"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerCacheIndex"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

.field private static final TABLE_VERSION:I = 0x1

.field private static final WHERE_ID_EQUALS:Ljava/lang/String; = "id = ?"


# instance fields
.field private final databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

.field private hexUid:Ljava/lang/String;

.field private final pendingUpdates:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 762
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "metadata"

    aput-object v2, v0, v1

    sput-object v0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;)V
    .locals 1
    .param p1, "databaseProvider"    # Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 786
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    .line 787
    return-void
.end method

.method private addOrUpdateRow(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .locals 5
    .param p1, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "cachedContent"    # Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 945
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lccsancom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$200(Lccsancom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    .line 946
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 948
    .local v1, "data":[B
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 949
    .local v2, "values":Lccsanandroid/content/ContentValues;
    iget v3, p2, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    iget-object v3, p2, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v3, "metadata"

    invoke-virtual {v2, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 952
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    .line 953
    return-void
.end method

.method public static delete(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;J)V
    .locals 1
    .param p0, "databaseProvider"    # Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 780
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->delete(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method private static delete(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V
    .locals 3
    .param p0, "databaseProvider"    # Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .param p1, "hexUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 958
    :try_start_0
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 960
    .local v1, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1, v2, p1}, Lccsancom/google/android/exoplayer2/database/VersionTable;->removeVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 964
    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->dropTable(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :try_start_2
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 968
    nop

    .line 971
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    nop

    .line 972
    return-void

    .line 967
    .restart local v0    # "tableName":Ljava/lang/String;
    .restart local v1    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 968
    nop

    .end local p0    # "databaseProvider":Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .end local p1    # "hexUid":Ljava/lang/String;
    throw v2
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 969
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "databaseProvider":Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
    .restart local p1    # "hexUid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method

.method private deleteRow(Lccsanandroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4
    .param p1, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # I

    .line 938
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 939
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 938
    const-string v2, "id = ?"

    invoke-virtual {p1, v0, v2, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 940
    return-void
.end method

.method private static dropTable(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p0, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 975
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

    .line 976
    return-void
.end method

.method private getCursor()Lccsanandroid/database/Cursor;
    .locals 9

    .line 915
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 916
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 918
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    .line 917
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 915
    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hexUid"    # Ljava/lang/String;

    .line 979
    const-string v0, "ExoPlayerCacheIndex"

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

.method private initializeTable(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 931
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 928
    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v1}, Lccsancom/google/android/exoplayer2/database/VersionTable;->setVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 933
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->dropTable(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 935
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->delete(Lccsancom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public exists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 798
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 800
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lccsancom/google/android/exoplayer2/database/VersionTable;->getVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public initialize(J)V
    .locals 1
    .param p1, "uid"    # J

    .line 791
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 792
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 793
    return-void
.end method

.method public load(Ljava/util/HashMap;Lccsanandroid/util/SparseArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p2, "idToKey":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 815
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    .line 817
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 819
    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 816
    invoke-static {v0, v2, v3}, Lccsancom/google/android/exoplayer2/database/VersionTable;->getVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    .line 820
    .local v0, "version":I
    if-eq v0, v2, :cond_1

    .line 821
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v3}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 822
    .local v3, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :try_start_1
    invoke-direct {p0, v3}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 825
    invoke-virtual {v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :try_start_2
    invoke-virtual {v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 828
    goto :goto_1

    .line 827
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 828
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .end local p2    # "idToKey":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Ljava/lang/String;>;"
    throw v1

    .line 831
    .end local v3    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getCursor()Lccsanandroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 832
    .local v3, "cursor":Lccsanandroid/database/Cursor;
    :goto_2
    :try_start_3
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 833
    invoke-interface {v3, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 834
    .local v4, "id":I
    invoke-interface {v3, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 835
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 837
    .local v6, "metadataBytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 838
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 839
    .local v8, "input":Ljava/io/DataInputStream;
    invoke-static {v8}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Lccsancom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v9

    .line 841
    .local v9, "metadata":Lccsancom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    new-instance v10, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v10, v4, v5, v9}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    .line 842
    .local v10, "cachedContent":Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget-object v11, v10, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget v11, v10, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v12, v10, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v11, v12}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 844
    .end local v4    # "id":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "metadataBytes":[B
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "input":Ljava/io/DataInputStream;
    .end local v9    # "metadata":Lccsancom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .end local v10    # "cachedContent":Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    goto :goto_2

    .line 845
    :cond_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 850
    .end local v0    # "version":I
    .end local v3    # "cursor":Lccsanandroid/database/Cursor;
    :cond_3
    nop

    .line 851
    return-void

    .line 831
    .restart local v0    # "version":I
    .restart local v3    # "cursor":Lccsanandroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v3, :cond_4

    :try_start_5
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .end local p2    # "idToKey":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    :try_start_6
    throw v1
    :try_end_6
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 846
    .end local v0    # "version":I
    .end local v3    # "cursor":Lccsanandroid/database/Cursor;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Lccsanandroid/database/sqlite/SQLiteException;
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 848
    invoke-virtual {p2}, Lccsanandroid/util/SparseArray;->clear()V

    .line 849
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public onRemove(Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V
    .locals 3
    .param p1, "cachedContent"    # Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    .param p2, "neverStored"    # Z

    .line 907
    if-eqz p2, :cond_0

    .line 908
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    iget v1, p1, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v0, v1}, Lccsanandroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 910
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    iget v1, p1, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 912
    :goto_0
    return-void
.end method

.method public onUpdate(Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .locals 2
    .param p1, "cachedContent"    # Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 902
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    iget v1, p1, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v0, v1, p1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 903
    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 857
    .local v0, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :try_start_1
    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 860
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 861
    .local v2, "cachedContent":Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    invoke-direct {p0, v0, v2}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    .line 862
    .end local v2    # "cachedContent":Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 864
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1}, Lccsanandroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :try_start_2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 867
    nop

    .line 870
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    nop

    .line 871
    return-void

    .line 866
    .restart local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 867
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v1
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 868
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    return-void

    .line 879
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lccsancom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 880
    .local v0, "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 883
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 884
    .local v2, "cachedContent":Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-nez v2, :cond_1

    .line 885
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v3, v1}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->deleteRow(Lccsanandroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_1

    .line 887
    :cond_1
    invoke-direct {p0, v0, v2}, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    .line 882
    .end local v2    # "cachedContent":Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 891
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1}, Lccsanandroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 894
    nop

    .line 897
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    nop

    .line 898
    return-void

    .line 893
    .restart local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 894
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v1
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 895
    .end local v0    # "writableDatabase":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsancom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
