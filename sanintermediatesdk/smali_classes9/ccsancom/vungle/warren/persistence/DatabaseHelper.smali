.class public Lccsancom/vungle/warren/persistence/DatabaseHelper;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;,
        Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;,
        Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "vungle_db"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final databaseFactory:Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/persistence/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;ILccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "version"    # I
    .param p3, "databaseFactory"    # Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    .line 35
    new-instance v0, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "vungle_db"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    iput-object p3, p0, Lccsancom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    .line 37
    return-void
.end method

.method private declared-synchronized loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/DatabaseHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete(Lccsancom/vungle/warren/persistence/Query;)V
    .locals 4
    .param p1, "query"    # Lccsancom/vungle/warren/persistence/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lccsancom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized dropDb()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->deleteData(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->close()V

    .line 109
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/DatabaseHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public init()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 114
    return-void
.end method

.method public insertWithConflict(Ljava/lang/String;Lccsanandroid/content/ContentValues;I)J
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Lccsanandroid/content/ContentValues;
    .param p3, "strategy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->create(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/DatabaseHelper;
    .end local p1    # "db":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 52
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V

    .line 53
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V

    .line 48
    return-void
.end method

.method public query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;
    .locals 9
    .param p1, "query"    # Lccsancom/vungle/warren/persistence/Query;

    .line 73
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lccsancom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lccsancom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    iget-object v3, p1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    iget-object v4, p1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    iget-object v5, p1, Lccsancom/vungle/warren/persistence/Query;->groupBy:Ljava/lang/String;

    iget-object v6, p1, Lccsancom/vungle/warren/persistence/Query;->having:Ljava/lang/String;

    iget-object v7, p1, Lccsancom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    iget-object v8, p1, Lccsancom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Lccsancom/vungle/warren/persistence/Query;Lccsanandroid/content/ContentValues;)J
    .locals 4
    .param p1, "query"    # Lccsancom/vungle/warren/persistence/Query;
    .param p2, "values"    # Lccsanandroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lccsancom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lccsanandroid/database/SQLException;
    new-instance v1, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
