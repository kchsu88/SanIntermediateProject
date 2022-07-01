.class public final Lccsanandroidx/work/impl/WorkDatabase_Impl;
.super Lccsanandroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# instance fields
.field private volatile _dependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

.field private volatile _systemIdInfoDao:Lccsanandroidx/work/impl/model/SystemIdInfoDao;

.field private volatile _workNameDao:Lccsanandroidx/work/impl/model/WorkNameDao;

.field private volatile _workSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

.field private volatile _workTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;

    .line 36
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;

    .line 36
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;

    .line 36
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lccsanandroidx/work/impl/WorkDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;
    .param p1, "x1"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 36
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mDatabase:Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lccsanandroidx/work/impl/WorkDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;
    .param p1, "x1"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 36
    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->internalInitInvalidationTracker(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;

    .line 36
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;

    .line 36
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;

    .line 36
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 6

    .line 217
    invoke-super {p0}, Lccsanandroidx/work/impl/WorkDatabase;->assertNotMainThread()V

    .line 218
    invoke-super {p0}, Lccsanandroidx/work/impl/WorkDatabase;->getOpenHelper()Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 219
    .local v0, "_db":Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 221
    .local v1, "_supportsDeferForeignKeys":Z
    :goto_0
    const-string v2, "VACUUM"

    const-string v3, "PRAGMA foreign_keys = TRUE"

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    if-nez v1, :cond_1

    .line 222
    :try_start_0
    const-string v5, "PRAGMA foreign_keys = FALSE"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    :cond_1
    invoke-super {p0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 225
    if-eqz v1, :cond_2

    .line 226
    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    :cond_2
    const-string v5, "DELETE FROM `Dependency`"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v5, "DELETE FROM `WorkSpec`"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string v5, "DELETE FROM `WorkTag`"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const-string v5, "DELETE FROM `SystemIdInfo`"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v5, "DELETE FROM `WorkName`"

    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    invoke-super {p0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-super {p0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 236
    if-nez v1, :cond_3

    .line 237
    invoke-interface {v0, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    :cond_3
    invoke-interface {v0, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 240
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_4

    .line 241
    invoke-interface {v0, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    :cond_4
    return-void

    .line 235
    :catchall_0
    move-exception v5

    invoke-super {p0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 236
    if-nez v1, :cond_5

    .line 237
    invoke-interface {v0, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    :cond_5
    invoke-interface {v0, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 240
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_6

    .line 241
    invoke-interface {v0, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    :cond_6
    throw v5
.end method

.method protected createInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;
    .locals 6

    .line 210
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 211
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 212
    .local v2, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Lccsanandroidx/room/InvalidationTracker;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Dependency"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "WorkSpec"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "WorkTag"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "SystemIdInfo"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "WorkName"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Lccsanandroidx/room/InvalidationTracker;-><init>(Lccsanandroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Lccsanandroidx/room/DatabaseConfiguration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Lccsanandroidx/room/DatabaseConfiguration;

    .line 49
    new-instance v0, Lccsanandroidx/room/RoomOpenHelper;

    new-instance v1, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;-><init>(Lccsanandroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c84d23ade98552f1cec71088c1f0794c"

    const-string v3, "1db8206f0da6aa81bbdd2d99a82d9e14"

    invoke-direct {v0, p1, v1, v2, v3}, Lccsanandroidx/room/RoomOpenHelper;-><init>(Lccsanandroidx/room/DatabaseConfiguration;Lccsanandroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, "_openCallback":Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->context:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Lccsanandroid/content/Context;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Lccsanandroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 204
    .local v1, "_sqliteConfig":Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Lccsanandroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 205
    .local v2, "_helper":Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public dependencyDao()Lccsanandroidx/work/impl/model/DependencyDao;
    .locals 1

    .line 262
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    return-object v0

    .line 265
    :cond_0
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/model/DependencyDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    .line 269
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    monitor-exit p0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;
    .locals 1

    .line 290
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    return-object v0

    .line 293
    :cond_0
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    .line 297
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    monitor-exit p0

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workNameDao()Lccsanandroidx/work/impl/model/WorkNameDao;
    .locals 1

    .line 304
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lccsanandroidx/work/impl/model/WorkNameDao;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lccsanandroidx/work/impl/model/WorkNameDao;

    return-object v0

    .line 307
    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lccsanandroidx/work/impl/model/WorkNameDao;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lccsanandroidx/work/impl/model/WorkNameDao_Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/model/WorkNameDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lccsanandroidx/work/impl/model/WorkNameDao;

    .line 311
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lccsanandroidx/work/impl/model/WorkNameDao;

    monitor-exit p0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;
    .locals 1

    .line 248
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    return-object v0

    .line 251
    :cond_0
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    .line 255
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    monitor-exit p0

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public workTagDao()Lccsanandroidx/work/impl/model/WorkTagDao;
    .locals 1

    .line 276
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    return-object v0

    .line 279
    :cond_0
    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    .line 283
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    monitor-exit p0

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
