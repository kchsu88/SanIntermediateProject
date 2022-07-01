.class public final Lccsanandroidx/work/impl/model/DependencyDao_Impl;
.super Ljava/lang/Object;
.source "DependencyDao_Impl.java"

# interfaces
.implements Lccsanandroidx/work/impl/model/DependencyDao;


# instance fields
.field private final __db:Lccsanandroidx/room/RoomDatabase;

.field private final __insertionAdapterOfDependency:Lccsanandroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Lccsanandroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Lccsanandroidx/room/RoomDatabase;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    .line 23
    new-instance v0, Lccsanandroidx/work/impl/model/DependencyDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/DependencyDao_Impl$1;-><init>(Lccsanandroidx/work/impl/model/DependencyDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Lccsanandroidx/room/EntityInsertionAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;
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

    .line 113
    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 114
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 115
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 116
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 117
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 121
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 122
    iget-object v3, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 124
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 130
    :cond_1
    nop

    .line 132
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 130
    return-object v5

    .line 132
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 134
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public getPrerequisites(Ljava/lang/String;)Ljava/util/List;
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

    .line 87
    const-string v0, "SELECT prerequisite_id FROM dependency WHERE work_spec_id=?"

    .line 88
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT prerequisite_id FROM dependency WHERE work_spec_id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 89
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 90
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 91
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 95
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 96
    iget-object v3, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 98
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 104
    :cond_1
    nop

    .line 106
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 104
    return-object v5

    .line 106
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 108
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public hasCompletedAllPrerequisites(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .line 59
    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 60
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 61
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 62
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 63
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1, v3, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_0
    iget-object v4, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 68
    iget-object v4, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v4

    .line 71
    .local v4, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v6, "_tmp":I
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 75
    .end local v6    # "_tmp":I
    .local v2, "_result":Z
    :goto_1
    goto :goto_2

    .line 76
    .end local v2    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .line 78
    .restart local v2    # "_result":Z
    :goto_2
    nop

    .line 80
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 78
    return v2

    .line 80
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 82
    throw v2
.end method

.method public hasDependents(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .line 139
    const-string v0, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 140
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 141
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 142
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 143
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1, v3, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 147
    :goto_0
    iget-object v4, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 148
    iget-object v4, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v4

    .line 151
    .local v4, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v6, "_tmp":I
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 155
    .end local v6    # "_tmp":I
    .local v2, "_result":Z
    :goto_1
    goto :goto_2

    .line 156
    .end local v2    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .line 158
    .restart local v2    # "_result":Z
    :goto_2
    nop

    .line 160
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 158
    return v2

    .line 160
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 162
    throw v2
.end method

.method public insertDependency(Lccsanandroidx/work/impl/model/Dependency;)V
    .locals 2
    .param p1, "dependency"    # Lccsanandroidx/work/impl/model/Dependency;

    .line 47
    iget-object v0, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 48
    iget-object v0, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Lccsanandroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    nop

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    throw v0
.end method
