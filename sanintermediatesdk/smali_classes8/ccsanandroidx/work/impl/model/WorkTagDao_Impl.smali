.class public final Lccsanandroidx/work/impl/model/WorkTagDao_Impl;
.super Ljava/lang/Object;
.source "WorkTagDao_Impl.java"

# interfaces
.implements Lccsanandroidx/work/impl/model/WorkTagDao;


# instance fields
.field private final __db:Lccsanandroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkTag:Lccsanandroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Lccsanandroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Lccsanandroidx/room/RoomDatabase;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    .line 23
    new-instance v0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Lccsanandroidx/work/impl/model/WorkTagDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__insertionAdapterOfWorkTag:Lccsanandroidx/room/EntityInsertionAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 86
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 87
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 88
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 89
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 93
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 94
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 96
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 102
    :cond_1
    nop

    .line 104
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 102
    return-object v5

    .line 104
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 106
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public getWorkSpecIdsWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    const-string v0, "SELECT work_spec_id FROM worktag WHERE tag=?"

    .line 60
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT work_spec_id FROM worktag WHERE tag=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 61
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 62
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 63
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 68
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 70
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 76
    :cond_1
    nop

    .line 78
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 79
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 76
    return-object v5

    .line 78
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 79
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 80
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public insert(Lccsanandroidx/work/impl/model/WorkTag;)V
    .locals 2
    .param p1, "workTag"    # Lccsanandroidx/work/impl/model/WorkTag;

    .line 47
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 48
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__insertionAdapterOfWorkTag:Lccsanandroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    nop

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkTagDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    throw v0
.end method
