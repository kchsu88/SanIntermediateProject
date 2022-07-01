.class public final Lccsancom/google/android/exoplayer2/database/VersionTable;
.super Ljava/lang/Object;
.source "VersionTable.java"


# static fields
.field private static final COLUMN_FEATURE:Ljava/lang/String; = "feature"

.field private static final COLUMN_INSTANCE_UID:Ljava/lang/String; = "instance_uid"

.field private static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field public static final FEATURE_CACHE_CONTENT_METADATA:I = 0x1

.field public static final FEATURE_CACHE_FILE_METADATA:I = 0x2

.field public static final FEATURE_EXTERNAL:I = 0x3e8

.field public static final FEATURE_OFFLINE:I = 0x0

.field private static final PRIMARY_KEY:Ljava/lang/String; = "PRIMARY KEY (feature, instance_uid)"

.field private static final SQL_CREATE_TABLE_IF_NOT_EXISTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

.field private static final TABLE_NAME:Ljava/lang/String; = "ExoPlayerVersions"

.field public static final VERSION_UNSET:I = -0x1

.field private static final WHERE_FEATURE_AND_INSTANCE_UID_EQUALS:Ljava/lang/String; = "feature = ? AND instance_uid = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "goog.exo.database"

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "feature"    # I
    .param p1, "instance"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method public static getVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 11
    .param p0, "database"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p1, "feature"    # I
    .param p2, "instanceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 147
    :try_start_0
    const-string v0, "ExoPlayerVersions"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/Util;->tableExists(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    const-string v3, "ExoPlayerVersions"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "version"

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const-string v5, "feature = ? AND instance_uid = ?"

    .line 155
    invoke-static {p1, p2}, Lccsancom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 151
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 160
    nop

    .line 164
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :cond_1
    return v1

    .line 162
    :cond_2
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    .line 163
    invoke-interface {v0, v10}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v0, :cond_3

    :try_start_4
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catch Lccsanandroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    :cond_3
    return v1

    .line 150
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .end local p0    # "database":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "feature":I
    .end local p2    # "instanceUid":Ljava/lang/String;
    :cond_4
    :goto_0
    :try_start_6
    throw v1
    :try_end_6
    .catch Lccsanandroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    .line 165
    .end local v0    # "cursor":Lccsanandroid/database/Cursor;
    .restart local p0    # "database":Lccsanandroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "feature":I
    .restart local p2    # "instanceUid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method

.method public static removeVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 3
    .param p0, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p1, "feature"    # I
    .param p2, "instanceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 122
    const-string v0, "ExoPlayerVersions"

    :try_start_0
    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/Util;->tableExists(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    const-string v1, "feature = ? AND instance_uid = ?"

    .line 128
    invoke-static {p1, p2}, Lccsancom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p0, v0, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    nop

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method

.method public static setVersion(Lccsanandroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .locals 3
    .param p0, "writableDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p1, "feature"    # I
    .param p2, "instanceUid"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 99
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

    invoke-virtual {p0, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, "values":Lccsanandroid/content/ContentValues;
    const-string v1, "feature"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "instance_uid"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "version"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "ExoPlayerVersions"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    .end local v0    # "values":Lccsanandroid/content/ContentValues;
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Lccsanandroid/database/SQLException;)V

    throw v1
.end method
