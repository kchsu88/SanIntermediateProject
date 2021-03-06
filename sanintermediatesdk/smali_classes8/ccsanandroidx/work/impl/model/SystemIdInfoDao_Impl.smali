.class public final Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Lccsanandroidx/work/impl/model/SystemIdInfoDao;


# instance fields
.field private final __db:Lccsanandroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSystemIdInfo:Lccsanandroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfRemoveSystemIdInfo:Lccsanandroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Lccsanandroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Lccsanandroidx/room/RoomDatabase;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    .line 25
    new-instance v0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$1;-><init>(Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Lccsanandroidx/room/EntityInsertionAdapter;

    .line 41
    new-instance v0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$2;-><init>(Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 48
    return-void
.end method


# virtual methods
.method public getSystemIdInfo(Ljava/lang/String;)Lccsanandroidx/work/impl/model/SystemIdInfo;
    .locals 9
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 84
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    .line 85
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 86
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 87
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 88
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 92
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 93
    iget-object v3, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 95
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "work_spec_id"

    invoke-static {v3, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, "_cursorIndexOfWorkSpecId":I
    const-string/jumbo v5, "system_id"

    invoke-static {v3, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, "_cursorIndexOfSystemId":I
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "_tmpWorkSpecId":Ljava/lang/String;
    invoke-interface {v3, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 103
    .local v7, "_tmpSystemId":I
    new-instance v8, Lccsanandroidx/work/impl/model/SystemIdInfo;

    invoke-direct {v8, v6, v7}, Lccsanandroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v8

    .line 104
    .end local v7    # "_tmpSystemId":I
    .local v6, "_result":Lccsanandroidx/work/impl/model/SystemIdInfo;
    goto :goto_1

    .line 105
    .end local v6    # "_result":Lccsanandroidx/work/impl/model/SystemIdInfo;
    :cond_1
    const/4 v6, 0x0

    .line 107
    .restart local v6    # "_result":Lccsanandroidx/work/impl/model/SystemIdInfo;
    :goto_1
    nop

    .line 109
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 107
    return-object v6

    .line 109
    .end local v4    # "_cursorIndexOfWorkSpecId":I
    .end local v5    # "_cursorIndexOfSystemId":I
    .end local v6    # "_result":Lccsanandroidx/work/impl/model/SystemIdInfo;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 111
    throw v4
.end method

.method public insertSystemIdInfo(Lccsanandroidx/work/impl/model/SystemIdInfo;)V
    .locals 2
    .param p1, "systemIdInfo"    # Lccsanandroidx/work/impl/model/SystemIdInfo;

    .line 52
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 53
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 55
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Lccsanandroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 59
    throw v0
.end method

.method public removeSystemIdInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 65
    iget-object v0, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 66
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 67
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 68
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 74
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 75
    iget-object v2, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v2, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 78
    iget-object v2, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 79
    nop

    .line 80
    return-void

    .line 77
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 78
    iget-object v3, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 79
    throw v2
.end method
