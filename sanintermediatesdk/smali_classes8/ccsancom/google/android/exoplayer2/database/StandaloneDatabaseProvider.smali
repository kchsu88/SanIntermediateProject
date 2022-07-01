.class public Lccsancom/google/android/exoplayer2/database/StandaloneDatabaseProvider;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source "StandaloneDatabaseProvider.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/database/DatabaseProvider;


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "exoplayer_internal.db"

.field private static final TAG:Ljava/lang/String; = "SADatabaseProvider"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 49
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "exoplayer_internal.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    return-void
.end method

.method private static wipeDatabase(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p0, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 72
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "type"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v0, "name"

    const/4 v10, 0x1

    aput-object v0, v3, v10

    .line 73
    .local v3, "columns":[Ljava/lang/String;
    nop

    .line 74
    const-string/jumbo v2, "sqlite_master"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 82
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v0, v9}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "type":Ljava/lang/String;
    invoke-interface {v0, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "sqlite_sequence"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DROP "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IF EXISTS "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .local v4, "sql":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_2

    .line 90
    :catch_0
    move-exception v5

    .line 91
    .local v5, "e":Lccsanandroid/database/SQLException;
    :try_start_2
    const-string v6, "SADatabaseProvider"

    const-string v7, "Error executing "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_1
    invoke-static {v6, v7, v5}, Lccsancom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "sql":Ljava/lang/String;
    .end local v5    # "e":Lccsanandroid/database/SQLException;
    :cond_1
    :goto_2
    goto :goto_0

    .line 95
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 96
    .end local v0    # "cursor":Lccsanandroid/database/Cursor;
    :cond_3
    return-void

    .line 73
    .restart local v0    # "cursor":Lccsanandroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :cond_4
    :goto_3
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 55
    return-void
.end method

.method public onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 64
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/database/StandaloneDatabaseProvider;->wipeDatabase(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 60
    return-void
.end method
