.class public final Lccsancom/san/convert/database/TaskDatabase_Impl;
.super Lccsancom/san/convert/database/TaskDatabase;
.source ""


# instance fields
.field private volatile getDownloadingList:Lccsancom/san/convert/database/getDownloadingList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/convert/database/TaskDatabase;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/convert/database/TaskDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lccsanandroidx/room/RoomDatabase;->internalInitInvalidationTracker(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/convert/database/TaskDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsanandroidx/room/RoomDatabase;->mDatabase:Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic addDownloadListener(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic deleteDownItem(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic getDownloadStatusByUrl(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/convert/database/TaskDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 1
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lccsanandroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Lccsanandroidx/room/RoomDatabase;->getOpenHelper()Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-super {p0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `tb_convert`"

    .line 5
    invoke-interface {v2, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-super {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 9
    invoke-interface {v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 10
    invoke-interface {v2}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-interface {v2, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 12
    invoke-super {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 13
    invoke-interface {v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 14
    invoke-interface {v2}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-interface {v2, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v3, Lccsanandroidx/room/InvalidationTracker;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "tb_convert"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Lccsanandroidx/room/InvalidationTracker;-><init>(Lccsanandroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Lccsanandroidx/room/DatabaseConfiguration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 1
    new-instance v0, Lccsanandroidx/room/RoomOpenHelper;

    new-instance v1, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lccsancom/san/convert/database/TaskDatabase_Impl$addDownloadListener;-><init>(Lccsancom/san/convert/database/TaskDatabase_Impl;I)V

    const-string v2, "ffc81caa0ff9c1cc8d4aab30b67e153c"

    const-string v3, "57ea254508223099659bb0a494ff5e29"

    invoke-direct {v0, p1, v1, v2, v3}, Lccsanandroidx/room/RoomOpenHelper;-><init>(Lccsanandroidx/room/DatabaseConfiguration;Lccsanandroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->context:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Lccsanandroid/content/Context;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Lccsanandroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 94
    iget-object p1, p1, Lccsanandroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingList:Lccsancom/san/convert/database/getDownloadingList;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingList:Lccsancom/san/convert/database/getDownloadingList;

    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingList:Lccsancom/san/convert/database/getDownloadingList;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lccsancom/san/convert/database/removeDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/convert/database/removeDownloadListener;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingList:Lccsancom/san/convert/database/getDownloadingList;

    .line 10
    :cond_1
    iget-object v0, p0, Lccsancom/san/convert/database/TaskDatabase_Impl;->getDownloadingList:Lccsancom/san/convert/database/getDownloadingList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
