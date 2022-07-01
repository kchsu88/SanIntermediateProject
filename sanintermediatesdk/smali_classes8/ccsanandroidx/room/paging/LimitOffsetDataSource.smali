.class public abstract Lccsanandroidx/room/paging/LimitOffsetDataSource;
.super Lccsanandroidx/paging/PositionalDataSource;
.source "LimitOffsetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/paging/PositionalDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCountQuery:Ljava/lang/String;

.field private final mDb:Lccsanandroidx/room/RoomDatabase;

.field private final mInTransaction:Z

.field private final mLimitOffsetQuery:Ljava/lang/String;

.field private final mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

.field private final mSourceQuery:Lccsanandroidx/room/RoomSQLiteQuery;


# direct methods
.method protected varargs constructor <init>(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Lccsanandroidx/room/RoomDatabase;
    .param p2, "query"    # Lccsanandroidx/room/RoomSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "tables"    # [Ljava/lang/String;

    .line 62
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0}, Lccsanandroidx/paging/PositionalDataSource;-><init>()V

    .line 63
    iput-object p1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    .line 64
    iput-object p2, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Lccsanandroidx/room/RoomSQLiteQuery;

    .line 65
    iput-boolean p3, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanandroidx/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanandroidx/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ) LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    .line 68
    new-instance v0, Lccsanandroidx/room/paging/LimitOffsetDataSource$1;

    invoke-direct {v0, p0, p4}, Lccsanandroidx/room/paging/LimitOffsetDataSource$1;-><init>(Lccsanandroidx/room/paging/LimitOffsetDataSource;[Ljava/lang/String;)V

    iput-object v0, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

    .line 74
    invoke-virtual {p1}, Lccsanandroidx/room/RoomDatabase;->getInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/room/InvalidationTracker;->addWeakObserver(Lccsanandroidx/room/InvalidationTracker$Observer;)V

    .line 75
    return-void
.end method

.method protected varargs constructor <init>(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Lccsanandroidx/room/RoomDatabase;
    .param p2, "query"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;
    .param p3, "inTransaction"    # Z
    .param p4, "tables"    # [Ljava/lang/String;

    .line 58
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-static {p2}, Lccsanandroidx/room/RoomSQLiteQuery;->copyFrom(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lccsanandroidx/room/paging/LimitOffsetDataSource;-><init>(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private getSQLiteQuery(II)Lccsanandroidx/room/RoomSQLiteQuery;
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "loadCount"    # I

    .line 188
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v0, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Lccsanandroidx/room/RoomSQLiteQuery;

    .line 189
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 188
    invoke-static {v0, v1}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 190
    .local v0, "sqLiteQuery":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Lccsanandroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Lccsanandroidx/room/RoomSQLiteQuery;->copyArgumentsFrom(Lccsanandroidx/room/RoomSQLiteQuery;)V

    .line 191
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 192
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 193
    return-object v0
.end method


# virtual methods
.method protected abstract convertRows(Lccsanandroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public countItems()I
    .locals 4

    .line 84
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v0, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Lccsanandroidx/room/RoomSQLiteQuery;

    .line 85
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    .line 84
    invoke-static {v0, v1}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 86
    .local v0, "sqLiteQuery":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mSourceQuery:Lccsanandroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Lccsanandroidx/room/RoomSQLiteQuery;->copyArgumentsFrom(Lccsanandroidx/room/RoomSQLiteQuery;)V

    .line 87
    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Lccsanandroidx/room/RoomDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 95
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 90
    return v2

    .line 92
    :cond_0
    nop

    .line 94
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 95
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 92
    return v3

    .line 94
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 95
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 96
    throw v2
.end method

.method public isInvalid()Z
    .locals 1

    .line 101
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    iget-object v0, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->getInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/room/InvalidationTracker;->refreshVersionsSync()V

    .line 102
    invoke-super {p0}, Lccsanandroidx/paging/PositionalDataSource;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public loadInitial(Lccsanandroidx/paging/PositionalDataSource$LoadInitialParams;Lccsanandroidx/paging/PositionalDataSource$LoadInitialCallback;)V
    .locals 8
    .param p1, "params"    # Lccsanandroidx/paging/PositionalDataSource$LoadInitialParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/paging/PositionalDataSource$LoadInitialParams;",
            "Lccsanandroidx/paging/PositionalDataSource$LoadInitialCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    .local p2, "callback":Lccsanandroidx/paging/PositionalDataSource$LoadInitialCallback;, "Lccsanandroidx/paging/PositionalDataSource$LoadInitialCallback<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 114
    .local v1, "totalCount":I
    const/4 v2, 0x0

    .line 115
    .local v2, "firstLoadPosition":I
    const/4 v3, 0x0

    .line 116
    .local v3, "sqLiteQuery":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x0

    .line 117
    .local v4, "cursor":Lccsanandroid/database/Cursor;
    iget-object v5, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v5}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->countItems()I

    move-result v5

    move v1, v5

    .line 120
    if-eqz v1, :cond_0

    .line 122
    invoke-static {p1, v1}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->computeInitialLoadPosition(Lccsanandroidx/paging/PositionalDataSource$LoadInitialParams;I)I

    move-result v5

    move v2, v5

    .line 123
    invoke-static {p1, v2, v1}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->computeInitialLoadSize(Lccsanandroidx/paging/PositionalDataSource$LoadInitialParams;II)I

    move-result v5

    .line 125
    .local v5, "firstLoadSize":I
    invoke-direct {p0, v2, v5}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->getSQLiteQuery(II)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v6

    move-object v3, v6

    .line 126
    iget-object v6, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v6, v3}, Lccsanandroidx/room/RoomDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    .line 127
    invoke-virtual {p0, v4}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->convertRows(Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v7, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v7}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    move-object v0, v6

    .line 132
    .end local v5    # "firstLoadSize":I
    .end local v6    # "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    if-eqz v4, :cond_1

    .line 133
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 135
    :cond_1
    iget-object v5, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v5}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 136
    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v3}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 141
    :cond_2
    invoke-virtual {p2, v0, v2, v1}, Lccsanandroidx/paging/PositionalDataSource$LoadInitialCallback;->onResult(Ljava/util/List;II)V

    .line 142
    return-void

    .line 132
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 133
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 135
    :cond_3
    iget-object v6, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v6}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 136
    if-eqz v3, :cond_4

    .line 137
    invoke-virtual {v3}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 139
    :cond_4
    throw v5
.end method

.method public loadRange(II)Ljava/util/List;
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "loadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->getSQLiteQuery(II)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 159
    .local v0, "sqLiteQuery":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-boolean v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 161
    const/4 v1, 0x0

    .line 164
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/RoomDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 165
    invoke-virtual {p0, v1}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->convertRows(Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    nop

    .line 169
    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 172
    :cond_0
    iget-object v3, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 167
    return-object v2

    .line 169
    .end local v2    # "rows":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 172
    :cond_1
    iget-object v3, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 174
    throw v2

    .line 176
    .end local v1    # "cursor":Lccsanandroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lccsanandroidx/room/paging/LimitOffsetDataSource;->mDb:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Lccsanandroidx/room/RoomDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 179
    .restart local v1    # "cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0, v1}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->convertRows(Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 182
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 179
    return-object v2

    .line 181
    :catchall_1
    move-exception v2

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 182
    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 183
    throw v2
.end method

.method public loadRange(Lccsanandroidx/paging/PositionalDataSource$LoadRangeParams;Lccsanandroidx/paging/PositionalDataSource$LoadRangeCallback;)V
    .locals 2
    .param p1, "params"    # Lccsanandroidx/paging/PositionalDataSource$LoadRangeParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/paging/PositionalDataSource$LoadRangeParams;",
            "Lccsanandroidx/paging/PositionalDataSource$LoadRangeCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lccsanandroidx/room/paging/LimitOffsetDataSource;, "Lccsanandroidx/room/paging/LimitOffsetDataSource<TT;>;"
    .local p2, "callback":Lccsanandroidx/paging/PositionalDataSource$LoadRangeCallback;, "Lccsanandroidx/paging/PositionalDataSource$LoadRangeCallback<TT;>;"
    iget v0, p1, Lccsanandroidx/paging/PositionalDataSource$LoadRangeParams;->startPosition:I

    iget v1, p1, Lccsanandroidx/paging/PositionalDataSource$LoadRangeParams;->loadSize:I

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/room/paging/LimitOffsetDataSource;->loadRange(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroidx/paging/PositionalDataSource$LoadRangeCallback;->onResult(Ljava/util/List;)V

    .line 148
    return-void
.end method
