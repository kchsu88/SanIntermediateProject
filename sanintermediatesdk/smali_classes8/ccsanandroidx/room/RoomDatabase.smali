.class public abstract Lccsanandroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/room/RoomDatabase$Callback;,
        Lccsanandroidx/room/RoomDatabase$MigrationContainer;,
        Lccsanandroidx/room/RoomDatabase$Builder;,
        Lccsanandroidx/room/RoomDatabase$JournalMode;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7


# instance fields
.field private mAllowMainThreadQueries:Z

.field private final mBackingFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected volatile mDatabase:Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

.field private mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private final mSuspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionExecutor:Ljava/util/concurrent/Executor;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mBackingFieldMap:Ljava/util/Map;

    .line 151
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->createInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    .line 152
    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 1051
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2

    .line 263
    iget-boolean v0, p0, Lccsanandroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lccsanandroidx/room/RoomDatabase;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    return-void

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 352
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 353
    .local v0, "database":Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    iget-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    invoke-virtual {v1, v0}, Lccsanandroidx/room/InvalidationTracker;->syncTriggers(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 354
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 355
    return-void
.end method

.method public abstract clearAllTables()V
.end method

.method public close()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 245
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    iget-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    invoke-virtual {v1}, Lccsanandroidx/room/InvalidationTracker;->stopMultiInstanceInvalidation()V

    .line 247
    iget-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 250
    goto :goto_0

    .line 249
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 250
    throw v1

    .line 252
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 340
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 341
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;
.end method

.method protected abstract createOpenHelper(Lccsanandroidx/room/DatabaseConfiguration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
.end method

.method public endTransaction()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 365
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    invoke-virtual {v0}, Lccsanandroidx/room/InvalidationTracker;->refreshVersionsAsync()V

    .line 370
    :cond_0
    return-void
.end method

.method getBackingFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mBackingFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 111
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;
    .locals 1

    .line 465
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    return-object v0
.end method

.method public getOpenHelper()Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    .line 189
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 377
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method getSuspendingTransactionId()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 385
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Lccsanandroidx/room/DatabaseConfiguration;)V
    .locals 4
    .param p1, "configuration"    # Lccsanandroidx/room/DatabaseConfiguration;

    .line 161
    invoke-virtual {p0, p1}, Lccsanandroidx/room/RoomDatabase;->createOpenHelper(Lccsanandroidx/room/DatabaseConfiguration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 162
    instance-of v1, v0, Lccsanandroidx/room/SQLiteCopyOpenHelper;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Lccsanandroidx/room/SQLiteCopyOpenHelper;

    .line 164
    .local v0, "copyOpenHelper":Lccsanandroidx/room/SQLiteCopyOpenHelper;
    invoke-virtual {v0, p1}, Lccsanandroidx/room/SQLiteCopyOpenHelper;->setDatabaseConfiguration(Lccsanandroidx/room/DatabaseConfiguration;)V

    .line 166
    .end local v0    # "copyOpenHelper":Lccsanandroidx/room/SQLiteCopyOpenHelper;
    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, "wal":Z
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 168
    iget-object v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->journalMode:Lccsanandroidx/room/RoomDatabase$JournalMode;

    sget-object v2, Lccsanandroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Lccsanandroidx/room/RoomDatabase$JournalMode;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 169
    iget-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 171
    :cond_2
    iget-object v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 172
    iget-object v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 173
    new-instance v1, Lccsanandroidx/room/TransactionExecutor;

    iget-object v2, p1, Lccsanandroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Lccsanandroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 174
    iget-boolean v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v1, p0, Lccsanandroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    .line 175
    iput-boolean v0, p0, Lccsanandroidx/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    .line 176
    iget-boolean v1, p1, Lccsanandroidx/room/DatabaseConfiguration;->multiInstanceInvalidation:Z

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    iget-object v2, p1, Lccsanandroidx/room/DatabaseConfiguration;->context:Lccsanandroid/content/Context;

    iget-object v3, p1, Lccsanandroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanandroidx/room/InvalidationTracker;->startMultiInstanceInvalidation(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 180
    :cond_3
    return-void
.end method

.method protected internalInitInvalidationTracker(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 452
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/InvalidationTracker;->internalInit(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 453
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mDatabase:Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 235
    .local v0, "db":Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/room/RoomDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "signal"    # Lccsanandroid/os/CancellationSignal;

    .line 323
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 324
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 325
    if-eqz p2, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Lccsanandroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 429
    .local p1, "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 431
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    nop

    .line 440
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 433
    return-object v0

    .line 440
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lccsanandroidx/room/util/SneakyThrow;->reThrow(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    const/4 v1, 0x0

    .line 440
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 438
    return-object v1

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .end local p1    # "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 441
    throw v0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/Runnable;

    .line 408
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 410
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 411
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 414
    nop

    .line 415
    return-void

    .line 413
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 414
    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget-object v0, p0, Lccsanandroidx/room/RoomDatabase;->mOpenHelper:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 396
    return-void
.end method
