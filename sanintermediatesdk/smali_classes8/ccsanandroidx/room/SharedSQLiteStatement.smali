.class public abstract Lccsanandroidx/room/SharedSQLiteStatement;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.java"


# instance fields
.field private final mDatabase:Lccsanandroidx/room/RoomDatabase;

.field private final mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mStmt:Lccsanandroidx/sqlite/db/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Lccsanandroidx/room/RoomDatabase;)V
    .locals 2
    .param p1, "database"    # Lccsanandroidx/room/RoomDatabase;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p1, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mDatabase:Lccsanandroidx/room/RoomDatabase;

    .line 50
    return-void
.end method

.method private createNewStatement()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lccsanandroidx/room/SharedSQLiteStatement;->createQuery()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mDatabase:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Lccsanandroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    return-object v1
.end method

.method private getStmt(Z)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1
    .param p1, "canUseCached"    # Z

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mStmt:Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lccsanandroidx/room/SharedSQLiteStatement;->createNewStatement()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mStmt:Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    .line 74
    :cond_0
    iget-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mStmt:Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    .local v0, "stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    goto :goto_0

    .line 77
    .end local v0    # "stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    :cond_1
    invoke-direct {p0}, Lccsanandroidx/room/SharedSQLiteStatement;->createNewStatement()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 79
    .restart local v0    # "stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .locals 3

    .line 86
    invoke-virtual {p0}, Lccsanandroidx/room/SharedSQLiteStatement;->assertNotMainThread()V

    .line 87
    iget-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->getStmt(Z)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected assertNotMainThread()V
    .locals 1

    .line 60
    iget-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mDatabase:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 61
    return-void
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V
    .locals 2
    .param p1, "statement"    # Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    .line 96
    iget-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mStmt:Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lccsanandroidx/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    :cond_0
    return-void
.end method
