.class public final Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Lccsanandroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Lccsanandroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkSpec:Lccsanandroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetScheduledState:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetOutput:Lccsanandroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetPeriodStartTime:Lccsanandroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Lccsanandroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Lccsanandroidx/room/RoomDatabase;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    .line 53
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Lccsanandroidx/room/EntityInsertionAdapter;

    .line 142
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 149
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 156
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 163
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 170
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 177
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 184
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 191
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$9;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Lccsanandroidx/room/SharedSQLiteStatement;

    .line 198
    return-void
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1656
    .local p1, "_map":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1657
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    return-void

    .line 1661
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 1662
    new-instance v1, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Lccsanandroidx/collection/ArrayMap;-><init>(I)V

    .line 1663
    .local v1, "_tmpInnerMap":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 1664
    .local v3, "_mapIndex":I
    const/4 v4, 0x0

    .line 1665
    .local v4, "_tmpIndex":I
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v5

    .line 1666
    .local v5, "_limit":I
    :cond_1
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1667
    invoke-virtual {p1, v3}, Lccsanandroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v3}, Lccsanandroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    add-int/lit8 v3, v3, 0x1

    .line 1669
    add-int/lit8 v4, v4, 0x1

    .line 1670
    if-ne v4, v2, :cond_1

    .line 1671
    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    .line 1672
    new-instance v6, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v6, v2}, Lccsanandroidx/collection/ArrayMap;-><init>(I)V

    move-object v1, v6

    .line 1673
    const/4 v4, 0x0

    goto :goto_0

    .line 1676
    :cond_2
    if-lez v4, :cond_3

    .line 1677
    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    .line 1679
    :cond_3
    return-void

    .line 1681
    .end local v1    # "_tmpInnerMap":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "_mapIndex":I
    .end local v4    # "_tmpIndex":I
    .end local v5    # "_limit":I
    :cond_4
    invoke-static {}, Lccsanandroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1682
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1684
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Lccsanandroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1685
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 1688
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1689
    .local v5, "_stmt":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1690
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1691
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 1692
    invoke-virtual {v5, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 1694
    :cond_5
    invoke-virtual {v5, v6, v8}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1696
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 1697
    goto :goto_1

    .line 1698
    :cond_6
    iget-object v7, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v7

    .line 1700
    .local v7, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string/jumbo v9, "work_spec_id"

    invoke-static {v7, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndex(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    .local v9, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 1716
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->close()V

    .line 1702
    return-void

    .line 1704
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1705
    invoke-interface {v7, v9}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1706
    invoke-interface {v7, v9}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1707
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1708
    .local v11, "_tmpCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_8

    .line 1710
    invoke-interface {v7, v8}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1711
    .local v12, "_item_1":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 1716
    .end local v9    # "_itemKeyIndex":I
    :cond_9
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->close()V

    .line 1717
    nop

    .line 1718
    return-void

    .line 1716
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Lccsanandroid/database/Cursor;->close()V

    .line 1717
    goto :goto_5

    :goto_4
    throw v8

    :goto_5
    goto :goto_4
.end method

.method static synthetic access$000(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;)Lccsanandroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    .line 30
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/collection/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Lccsanandroidx/collection/ArrayMap;

    .line 30
    invoke-direct {p0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 215
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 216
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 217
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 218
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 222
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 224
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 225
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 228
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 229
    nop

    .line 230
    return-void

    .line 227
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 228
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 229
    throw v2
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1279
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 1280
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1281
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1282
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v3, v1, v2}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 1284
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1285
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1287
    invoke-interface {v3, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1288
    .local v5, "_item":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_0

    .line 1290
    :cond_0
    nop

    .line 1292
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1293
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1290
    return-object v4

    .line 1292
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1293
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1294
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    const-string v0, "SELECT id FROM workspec"

    .line 648
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 649
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 650
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v3, v1, v2}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 652
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 655
    invoke-interface {v3, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, "_item":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_0

    .line 658
    :cond_0
    nop

    .line 660
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 661
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 658
    return-object v4

    .line 660
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 661
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 662
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 54
    .param p1, "schedulerLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1299
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 1300
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1301
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1302
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Lccsanandroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1303
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1304
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v4, v7}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v8

    .line 1306
    .local v8, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v8, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1307
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v8, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1308
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v8, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1309
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v8, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1310
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v8, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1311
    .local v12, "_cursorIndexOfInput":I
    const-string v13, "output"

    invoke-static {v8, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1312
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v8, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1313
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v8, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1314
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v3, "flex_duration"

    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1315
    .local v3, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v7, "run_attempt_count"

    invoke-static {v8, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1316
    .local v7, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1317
    .local v1, "_cursorIndexOfBackoffPolicy":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "backoff_delay_duration"

    invoke-static {v8, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1318
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "period_start_time"

    invoke-static {v8, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1319
    .local v5, "_cursorIndexOfPeriodStartTime":I
    const-string v6, "minimum_retention_duration"

    invoke-static {v8, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1320
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v8, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1321
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "required_network_type"

    invoke-static {v8, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1322
    .local v4, "_cursorIndexOfMRequiredNetworkType":I
    move/from16 v20, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v20, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v6, "requires_charging"

    invoke-static {v8, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1323
    .local v6, "_cursorIndexOfMRequiresCharging":I
    move/from16 v21, v5

    .end local v5    # "_cursorIndexOfPeriodStartTime":I
    .local v21, "_cursorIndexOfPeriodStartTime":I
    const-string v5, "requires_device_idle"

    invoke-static {v8, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1324
    .local v5, "_cursorIndexOfMRequiresDeviceIdle":I
    move/from16 v22, v2

    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .local v22, "_cursorIndexOfBackoffDelayDuration":I
    const-string v2, "requires_battery_not_low"

    invoke-static {v8, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1325
    .local v2, "_cursorIndexOfMRequiresBatteryNotLow":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const-string v1, "requires_storage_not_low"

    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 1326
    .local v1, "_cursorIndexOfMRequiresStorageNotLow":I
    move/from16 v24, v7

    .end local v7    # "_cursorIndexOfRunAttemptCount":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    const-string/jumbo v7, "trigger_content_update_delay"

    invoke-static {v8, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1327
    .local v7, "_cursorIndexOfMTriggerContentUpdateDelay":I
    move/from16 v25, v3

    .end local v3    # "_cursorIndexOfFlexDuration":I
    .local v25, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v3, "trigger_max_content_delay"

    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1328
    .local v3, "_cursorIndexOfMTriggerMaxContentDelay":I
    move/from16 v26, v15

    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .local v26, "_cursorIndexOfIntervalDuration":I
    const-string v15, "content_uri_triggers"

    invoke-static {v8, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1329
    .local v15, "_cursorIndexOfMContentUriTriggers":I
    move/from16 v27, v14

    .end local v14    # "_cursorIndexOfInitialDelay":I
    .local v27, "_cursorIndexOfInitialDelay":I
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v28, v13

    .end local v13    # "_cursorIndexOfOutput":I
    .local v28, "_cursorIndexOfOutput":I
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v14

    .line 1330
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1333
    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1335
    .local v14, "_tmpId":Ljava/lang/String;
    invoke-interface {v8, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    .line 1337
    .local v30, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v29, Lccsanandroidx/work/Constraints;

    invoke-direct/range {v29 .. v29}, Lccsanandroidx/work/Constraints;-><init>()V

    move-object/from16 v31, v29

    .line 1340
    .local v31, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1341
    .local v29, "_tmp":I
    invoke-static/range {v29 .. v29}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Lccsanandroidx/work/NetworkType;

    move-result-object v32

    move-object/from16 v33, v32

    .line 1342
    .local v33, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v31, v4

    move-object/from16 v4, v33

    .end local v33    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .local v4, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v31, "_cursorIndexOfMRequiredNetworkType":I
    .local v32, "_cursorIndexOfId":I
    invoke-virtual {v0, v4}, Lccsanandroidx/work/Constraints;->setRequiredNetworkType(Lccsanandroidx/work/NetworkType;)V

    .line 1345
    invoke-interface {v8, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1346
    .local v33, "_tmp_1":I
    if-eqz v33, :cond_0

    const/16 v34, 0x1

    goto :goto_1

    :cond_0
    const/16 v34, 0x0

    :goto_1
    move/from16 v35, v34

    .line 1347
    .local v35, "_tmpMRequiresCharging":Z
    move-object/from16 v34, v4

    move/from16 v4, v35

    .end local v35    # "_tmpMRequiresCharging":Z
    .local v4, "_tmpMRequiresCharging":Z
    .local v34, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    invoke-virtual {v0, v4}, Lccsanandroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1350
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1351
    .local v35, "_tmp_2":I
    if-eqz v35, :cond_1

    const/16 v36, 0x1

    goto :goto_2

    :cond_1
    const/16 v36, 0x0

    :goto_2
    move/from16 v37, v36

    .line 1352
    .local v37, "_tmpMRequiresDeviceIdle":Z
    move/from16 v36, v4

    move/from16 v4, v37

    .end local v37    # "_tmpMRequiresDeviceIdle":Z
    .local v4, "_tmpMRequiresDeviceIdle":Z
    .local v36, "_tmpMRequiresCharging":Z
    invoke-virtual {v0, v4}, Lccsanandroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1355
    invoke-interface {v8, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1356
    .local v37, "_tmp_3":I
    if-eqz v37, :cond_2

    const/16 v38, 0x1

    goto :goto_3

    :cond_2
    const/16 v38, 0x0

    :goto_3
    move/from16 v39, v38

    .line 1357
    .local v39, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v38, v2

    move/from16 v2, v39

    .end local v39    # "_tmpMRequiresBatteryNotLow":Z
    .local v2, "_tmpMRequiresBatteryNotLow":Z
    .local v38, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-virtual {v0, v2}, Lccsanandroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1360
    invoke-interface {v8, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 1361
    .local v39, "_tmp_4":I
    if-eqz v39, :cond_3

    const/16 v40, 0x1

    goto :goto_4

    :cond_3
    const/16 v40, 0x0

    :goto_4
    move/from16 v41, v40

    .line 1362
    .local v41, "_tmpMRequiresStorageNotLow":Z
    move/from16 v40, v1

    move/from16 v1, v41

    .end local v41    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v40, "_cursorIndexOfMRequiresStorageNotLow":I
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1364
    invoke-interface {v8, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v43, v41

    .line 1365
    .local v43, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v42, v1

    move/from16 v41, v2

    move-wide/from16 v1, v43

    .end local v2    # "_tmpMRequiresBatteryNotLow":Z
    .end local v43    # "_tmpMTriggerContentUpdateDelay":J
    .local v1, "_tmpMTriggerContentUpdateDelay":J
    .local v41, "_tmpMRequiresBatteryNotLow":Z
    .local v42, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1367
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    move-wide/from16 v45, v43

    .line 1368
    .local v45, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v43, v1

    move-wide/from16 v1, v45

    .end local v45    # "_tmpMTriggerMaxContentDelay":J
    .local v1, "_tmpMTriggerMaxContentDelay":J
    .restart local v43    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1371
    invoke-interface {v8, v15}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v45

    .line 1372
    .local v45, "_tmp_5":[B
    invoke-static/range {v45 .. v45}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v46

    move-object/from16 v47, v46

    .line 1373
    .local v47, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    move-wide/from16 v48, v1

    move-object/from16 v1, v47

    .end local v47    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v48, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setContentUriTriggers(Lccsanandroidx/work/ContentUriTriggers;)V

    .line 1374
    new-instance v2, Lccsanandroidx/work/impl/model/WorkSpec;

    move-object/from16 v46, v1

    move-object/from16 v1, v30

    .end local v30    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v1, "_tmpWorkerClassName":Ljava/lang/String;
    .local v46, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    invoke-direct {v2, v14, v1}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    .local v2, "_item":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-interface {v8, v9}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1377
    .local v30, "_tmp_6":I
    move-object/from16 v47, v1

    .end local v1    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v47, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 1378
    invoke-interface {v8, v11}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1380
    invoke-interface {v8, v12}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1381
    .local v1, "_tmp_7":[B
    move/from16 v50, v3

    .end local v3    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v50, "_cursorIndexOfMTriggerMaxContentDelay":I
    invoke-static {v1}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 1383
    move/from16 v3, v28

    .end local v28    # "_cursorIndexOfOutput":I
    .local v3, "_cursorIndexOfOutput":I
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 1384
    .local v28, "_tmp_8":[B
    move-object/from16 v51, v1

    .end local v1    # "_tmp_7":[B
    .local v51, "_tmp_7":[B
    invoke-static/range {v28 .. v28}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 1385
    move/from16 v52, v3

    move/from16 v1, v27

    move/from16 v27, v4

    .end local v3    # "_cursorIndexOfOutput":I
    .end local v4    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v27, "_tmpMRequiresDeviceIdle":Z
    .local v52, "_cursorIndexOfOutput":I
    invoke-interface {v8, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1386
    move/from16 v3, v26

    move/from16 v26, v5

    .end local v5    # "_cursorIndexOfMRequiresDeviceIdle":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v26, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1387
    move/from16 v4, v25

    move/from16 v25, v6

    .end local v6    # "_cursorIndexOfMRequiresCharging":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v25, "_cursorIndexOfMRequiresCharging":I
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1388
    move/from16 v5, v24

    .end local v24    # "_cursorIndexOfRunAttemptCount":I
    .local v5, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1390
    move/from16 v6, v23

    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1391
    .local v23, "_tmp_9":I
    move/from16 v24, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v24, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v23 .. v23}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Lccsanandroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 1392
    move/from16 v53, v4

    move/from16 v1, v22

    move/from16 v22, v3

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v22, "_cursorIndexOfIntervalDuration":I
    .local v53, "_cursorIndexOfFlexDuration":I
    invoke-interface {v8, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1393
    move/from16 v3, v21

    move/from16 v21, v5

    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1394
    move/from16 v4, v20

    move/from16 v20, v6

    .end local v6    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v20, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1395
    move v6, v3

    move/from16 v5, v19

    move/from16 v19, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    .local v6, "_cursorIndexOfPeriodStartTime":I
    .local v19, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1396
    iput-object v0, v2, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 1397
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1398
    move/from16 v23, v20

    move/from16 v27, v24

    move/from16 v4, v31

    move/from16 v0, v32

    move/from16 v2, v38

    move/from16 v3, v50

    move/from16 v28, v52

    move/from16 v20, v19

    move/from16 v24, v21

    move/from16 v19, v5

    move/from16 v21, v6

    move/from16 v6, v25

    move/from16 v5, v26

    move/from16 v25, v53

    move/from16 v26, v22

    move/from16 v22, v1

    move/from16 v1, v40

    .end local v0    # "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .end local v2    # "_item":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v14    # "_tmpId":Ljava/lang/String;
    .end local v23    # "_tmp_9":I
    .end local v27    # "_tmpMRequiresDeviceIdle":Z
    .end local v28    # "_tmp_8":[B
    .end local v29    # "_tmp":I
    .end local v30    # "_tmp_6":I
    .end local v33    # "_tmp_1":I
    .end local v34    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .end local v35    # "_tmp_2":I
    .end local v36    # "_tmpMRequiresCharging":Z
    .end local v37    # "_tmp_3":I
    .end local v39    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresBatteryNotLow":Z
    .end local v42    # "_tmpMRequiresStorageNotLow":Z
    .end local v43    # "_tmpMTriggerContentUpdateDelay":J
    .end local v45    # "_tmp_5":[B
    .end local v46    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .end local v47    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v48    # "_tmpMTriggerMaxContentDelay":J
    .end local v51    # "_tmp_7":[B
    goto/16 :goto_0

    .line 1399
    .end local v31    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v32    # "_cursorIndexOfId":I
    .end local v38    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v40    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v50    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v52    # "_cursorIndexOfOutput":I
    .end local v53    # "_cursorIndexOfFlexDuration":I
    .local v0, "_cursorIndexOfId":I
    .local v1, "_cursorIndexOfMRequiresStorageNotLow":I
    .local v2, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v3, "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v4, "_cursorIndexOfMRequiredNetworkType":I
    .local v5, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v6, "_cursorIndexOfMRequiresCharging":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    .local v20, "_cursorIndexOfMinimumRetentionDuration":I
    .local v21, "_cursorIndexOfPeriodStartTime":I
    .local v22, "_cursorIndexOfBackoffDelayDuration":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    .local v25, "_cursorIndexOfFlexDuration":I
    .local v26, "_cursorIndexOfIntervalDuration":I
    .local v27, "_cursorIndexOfInitialDelay":I
    .local v28, "_cursorIndexOfOutput":I
    :cond_4
    nop

    .line 1401
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->close()V

    .line 1402
    invoke-virtual/range {v18 .. v18}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1399
    return-object v13

    .line 1401
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v2    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v3    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v4    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v5    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v6    # "_cursorIndexOfMRequiresCharging":I
    .end local v7    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    .end local v15    # "_cursorIndexOfMContentUriTriggers":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v21    # "_cursorIndexOfPeriodStartTime":I
    .end local v22    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfRunAttemptCount":I
    .end local v25    # "_cursorIndexOfFlexDuration":I
    .end local v26    # "_cursorIndexOfIntervalDuration":I
    .end local v27    # "_cursorIndexOfInitialDelay":I
    .end local v28    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v18    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_5

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_5

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :goto_5
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->close()V

    .line 1402
    invoke-virtual/range {v18 .. v18}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1403
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/Data;",
            ">;"
        }
    .end annotation

    .line 1199
    const-string v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 1200
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1201
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1202
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1203
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1207
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1208
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 1210
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1211
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/Data;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1214
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1215
    .local v6, "_tmp":[B
    invoke-static {v6}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v7

    .line 1216
    .local v7, "_item":Lccsanandroidx/work/Data;
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    nop

    .end local v6    # "_tmp":[B
    .end local v7    # "_item":Lccsanandroidx/work/Data;
    goto :goto_1

    .line 1218
    :cond_1
    nop

    .line 1220
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1221
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1218
    return-object v5

    .line 1220
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/Data;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1221
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1222
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1515
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=1"

    .line 1516
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1517
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1518
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v0, v4, v3}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v5

    .line 1520
    .local v5, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1521
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1522
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1523
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1524
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1525
    .local v9, "_cursorIndexOfInput":I
    const-string v10, "output"

    invoke-static {v5, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1526
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1527
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1528
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1529
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v14, "run_attempt_count"

    invoke-static {v5, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1530
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1531
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1532
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "period_start_time"

    invoke-static {v5, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1533
    .local v1, "_cursorIndexOfPeriodStartTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1534
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v5, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1535
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "required_network_type"

    invoke-static {v5, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1536
    .local v4, "_cursorIndexOfMRequiredNetworkType":I
    move/from16 v19, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v19, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v2, "requires_charging"

    invoke-static {v5, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1537
    .local v2, "_cursorIndexOfMRequiresCharging":I
    move/from16 v20, v1

    .end local v1    # "_cursorIndexOfPeriodStartTime":I
    .local v20, "_cursorIndexOfPeriodStartTime":I
    const-string v1, "requires_device_idle"

    invoke-static {v5, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 1538
    .local v1, "_cursorIndexOfMRequiresDeviceIdle":I
    move/from16 v21, v3

    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .local v21, "_cursorIndexOfBackoffDelayDuration":I
    const-string v3, "requires_battery_not_low"

    invoke-static {v5, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1539
    .local v3, "_cursorIndexOfMRequiresBatteryNotLow":I
    move/from16 v22, v15

    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    const-string v15, "requires_storage_not_low"

    invoke-static {v5, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1540
    .local v15, "_cursorIndexOfMRequiresStorageNotLow":I
    move/from16 v23, v14

    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    const-string/jumbo v14, "trigger_content_update_delay"

    invoke-static {v5, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1541
    .local v14, "_cursorIndexOfMTriggerContentUpdateDelay":I
    move/from16 v24, v13

    .end local v13    # "_cursorIndexOfFlexDuration":I
    .local v24, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v13, "trigger_max_content_delay"

    invoke-static {v5, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1542
    .local v13, "_cursorIndexOfMTriggerMaxContentDelay":I
    move/from16 v25, v12

    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .local v25, "_cursorIndexOfIntervalDuration":I
    const-string v12, "content_uri_triggers"

    invoke-static {v5, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1543
    .local v12, "_cursorIndexOfMContentUriTriggers":I
    move/from16 v26, v11

    .end local v11    # "_cursorIndexOfInitialDelay":I
    .local v26, "_cursorIndexOfInitialDelay":I
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v27, v10

    .end local v10    # "_cursorIndexOfOutput":I
    .local v27, "_cursorIndexOfOutput":I
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v11

    .line 1544
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1547
    invoke-interface {v5, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1549
    .local v11, "_tmpId":Ljava/lang/String;
    invoke-interface {v5, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v28

    .line 1551
    .local v29, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v28, Lccsanandroidx/work/Constraints;

    invoke-direct/range {v28 .. v28}, Lccsanandroidx/work/Constraints;-><init>()V

    move-object/from16 v30, v28

    .line 1554
    .local v30, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    invoke-interface {v5, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1555
    .local v28, "_tmp":I
    invoke-static/range {v28 .. v28}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Lccsanandroidx/work/NetworkType;

    move-result-object v31

    move-object/from16 v32, v31

    .line 1556
    .local v32, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v30, v4

    move-object/from16 v4, v32

    .end local v32    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .local v4, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v30, "_cursorIndexOfMRequiredNetworkType":I
    .local v31, "_cursorIndexOfId":I
    invoke-virtual {v0, v4}, Lccsanandroidx/work/Constraints;->setRequiredNetworkType(Lccsanandroidx/work/NetworkType;)V

    .line 1559
    invoke-interface {v5, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1560
    .local v32, "_tmp_1":I
    const/16 v33, 0x1

    if-eqz v32, :cond_0

    const/16 v34, 0x1

    goto :goto_1

    :cond_0
    const/16 v34, 0x0

    :goto_1
    move/from16 v35, v34

    .line 1561
    .local v35, "_tmpMRequiresCharging":Z
    move/from16 v34, v2

    move/from16 v2, v35

    .end local v35    # "_tmpMRequiresCharging":Z
    .local v2, "_tmpMRequiresCharging":Z
    .local v34, "_cursorIndexOfMRequiresCharging":I
    invoke-virtual {v0, v2}, Lccsanandroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1564
    invoke-interface {v5, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1565
    .local v35, "_tmp_2":I
    if-eqz v35, :cond_1

    const/16 v36, 0x1

    goto :goto_2

    :cond_1
    const/16 v36, 0x0

    :goto_2
    move/from16 v37, v36

    .line 1566
    .local v37, "_tmpMRequiresDeviceIdle":Z
    move/from16 v36, v1

    move/from16 v1, v37

    .end local v37    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_tmpMRequiresDeviceIdle":Z
    .local v36, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1569
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1570
    .local v37, "_tmp_3":I
    if-eqz v37, :cond_2

    const/16 v38, 0x1

    goto :goto_3

    :cond_2
    const/16 v38, 0x0

    :goto_3
    move/from16 v39, v38

    .line 1571
    .local v39, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v38, v1

    move/from16 v1, v39

    .end local v39    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_tmpMRequiresBatteryNotLow":Z
    .local v38, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1574
    invoke-interface {v5, v15}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 1575
    .local v39, "_tmp_4":I
    if-eqz v39, :cond_3

    goto :goto_4

    :cond_3
    const/16 v33, 0x0

    :goto_4
    move/from16 v40, v33

    .line 1576
    .local v40, "_tmpMRequiresStorageNotLow":Z
    move/from16 v33, v1

    move/from16 v1, v40

    .end local v40    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v33, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1578
    invoke-interface {v5, v14}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    move-wide/from16 v42, v40

    .line 1579
    .local v42, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v41, v1

    move/from16 v40, v2

    move-wide/from16 v1, v42

    .end local v2    # "_tmpMRequiresCharging":Z
    .end local v42    # "_tmpMTriggerContentUpdateDelay":J
    .local v1, "_tmpMTriggerContentUpdateDelay":J
    .local v40, "_tmpMRequiresCharging":Z
    .local v41, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1581
    invoke-interface {v5, v13}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 1582
    .local v44, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v42, v1

    move-wide/from16 v1, v44

    .end local v44    # "_tmpMTriggerMaxContentDelay":J
    .local v1, "_tmpMTriggerMaxContentDelay":J
    .restart local v42    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1585
    invoke-interface {v5, v12}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v44

    .line 1586
    .local v44, "_tmp_5":[B
    invoke-static/range {v44 .. v44}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v45

    move-object/from16 v46, v45

    .line 1587
    .local v46, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    move-wide/from16 v47, v1

    move-object/from16 v1, v46

    .end local v46    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v47, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setContentUriTriggers(Lccsanandroidx/work/ContentUriTriggers;)V

    .line 1588
    new-instance v2, Lccsanandroidx/work/impl/model/WorkSpec;

    move-object/from16 v45, v1

    move-object/from16 v1, v29

    .end local v29    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v1, "_tmpWorkerClassName":Ljava/lang/String;
    .local v45, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    invoke-direct {v2, v11, v1}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    .local v2, "_item":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-interface {v5, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1591
    .local v29, "_tmp_6":I
    move-object/from16 v46, v1

    .end local v1    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v46, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 1592
    invoke-interface {v5, v8}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1594
    invoke-interface {v5, v9}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1595
    .local v1, "_tmp_7":[B
    move/from16 v49, v3

    .end local v3    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v49, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-static {v1}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 1597
    move/from16 v3, v27

    .end local v27    # "_cursorIndexOfOutput":I
    .local v3, "_cursorIndexOfOutput":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 1598
    .local v27, "_tmp_8":[B
    move-object/from16 v50, v1

    .end local v1    # "_tmp_7":[B
    .local v50, "_tmp_7":[B
    invoke-static/range {v27 .. v27}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 1599
    move/from16 v51, v3

    move/from16 v1, v26

    move-object/from16 v26, v4

    .end local v3    # "_cursorIndexOfOutput":I
    .end local v4    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v26, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v51, "_cursorIndexOfOutput":I
    invoke-interface {v5, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1600
    move v4, v6

    move/from16 v3, v25

    move/from16 v25, v7

    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v4, "_cursorIndexOfState":I
    .local v25, "_cursorIndexOfWorkerClassName":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1601
    move v7, v3

    move/from16 v6, v24

    move/from16 v24, v4

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfState":I
    .local v6, "_cursorIndexOfFlexDuration":I
    .local v7, "_cursorIndexOfIntervalDuration":I
    .local v24, "_cursorIndexOfState":I
    invoke-interface {v5, v6}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1602
    move/from16 v3, v23

    .end local v23    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1604
    move/from16 v4, v22

    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1605
    .local v22, "_tmp_9":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v23, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v22 .. v22}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Lccsanandroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 1606
    move/from16 v52, v4

    move/from16 v1, v21

    move/from16 v21, v3

    .end local v3    # "_cursorIndexOfRunAttemptCount":I
    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    .local v52, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1607
    move v4, v6

    move/from16 v3, v20

    move/from16 v20, v7

    .end local v6    # "_cursorIndexOfFlexDuration":I
    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1608
    move v7, v3

    move/from16 v6, v19

    move/from16 v19, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    .local v7, "_cursorIndexOfPeriodStartTime":I
    .local v19, "_cursorIndexOfFlexDuration":I
    invoke-interface {v5, v6}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1609
    move v4, v6

    move/from16 v3, v18

    move/from16 v18, v7

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v7    # "_cursorIndexOfPeriodStartTime":I
    .local v3, "_cursorIndexOfScheduleRequestedAt":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v18, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1610
    iput-object v0, v2, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 1611
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1612
    move/from16 v26, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v0, v31

    move/from16 v2, v34

    move/from16 v27, v51

    move/from16 v22, v52

    move/from16 v24, v19

    move/from16 v25, v20

    move/from16 v23, v21

    move/from16 v21, v1

    move/from16 v19, v4

    move/from16 v20, v18

    move/from16 v4, v30

    move/from16 v1, v36

    move/from16 v18, v3

    move/from16 v3, v49

    .end local v0    # "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .end local v2    # "_item":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v11    # "_tmpId":Ljava/lang/String;
    .end local v22    # "_tmp_9":I
    .end local v26    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .end local v27    # "_tmp_8":[B
    .end local v28    # "_tmp":I
    .end local v29    # "_tmp_6":I
    .end local v32    # "_tmp_1":I
    .end local v33    # "_tmpMRequiresBatteryNotLow":Z
    .end local v35    # "_tmp_2":I
    .end local v37    # "_tmp_3":I
    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .end local v39    # "_tmp_4":I
    .end local v40    # "_tmpMRequiresCharging":Z
    .end local v41    # "_tmpMRequiresStorageNotLow":Z
    .end local v42    # "_tmpMTriggerContentUpdateDelay":J
    .end local v44    # "_tmp_5":[B
    .end local v45    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .end local v46    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v47    # "_tmpMTriggerMaxContentDelay":J
    .end local v50    # "_tmp_7":[B
    goto/16 :goto_0

    .line 1613
    .end local v30    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v31    # "_cursorIndexOfId":I
    .end local v34    # "_cursorIndexOfMRequiresCharging":I
    .end local v36    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v49    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v51    # "_cursorIndexOfOutput":I
    .end local v52    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfId":I
    .local v1, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v2, "_cursorIndexOfMRequiresCharging":I
    .local v3, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v4, "_cursorIndexOfMRequiredNetworkType":I
    .local v6, "_cursorIndexOfState":I
    .local v7, "_cursorIndexOfWorkerClassName":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfMinimumRetentionDuration":I
    .local v20, "_cursorIndexOfPeriodStartTime":I
    .local v21, "_cursorIndexOfBackoffDelayDuration":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    .local v24, "_cursorIndexOfFlexDuration":I
    .local v25, "_cursorIndexOfIntervalDuration":I
    .local v26, "_cursorIndexOfInitialDelay":I
    .local v27, "_cursorIndexOfOutput":I
    :cond_4
    nop

    .line 1615
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V

    .line 1616
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1613
    return-object v10

    .line 1615
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v2    # "_cursorIndexOfMRequiresCharging":I
    .end local v3    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v4    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    .end local v12    # "_cursorIndexOfMContentUriTriggers":I
    .end local v13    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v14    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v15    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v20    # "_cursorIndexOfPeriodStartTime":I
    .end local v21    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .end local v23    # "_cursorIndexOfRunAttemptCount":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfIntervalDuration":I
    .end local v26    # "_cursorIndexOfInitialDelay":I
    .end local v27    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_5

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :goto_5
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V

    .line 1616
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1617
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1408
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1409
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1410
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1411
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v0, v4, v3}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v5

    .line 1413
    .local v5, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1414
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1415
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1416
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1417
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1418
    .local v9, "_cursorIndexOfInput":I
    const-string v10, "output"

    invoke-static {v5, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1419
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1420
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1421
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1422
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v14, "run_attempt_count"

    invoke-static {v5, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1423
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1424
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1425
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "period_start_time"

    invoke-static {v5, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1426
    .local v1, "_cursorIndexOfPeriodStartTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1427
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v5, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1428
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "required_network_type"

    invoke-static {v5, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1429
    .local v4, "_cursorIndexOfMRequiredNetworkType":I
    move/from16 v19, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v19, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v2, "requires_charging"

    invoke-static {v5, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1430
    .local v2, "_cursorIndexOfMRequiresCharging":I
    move/from16 v20, v1

    .end local v1    # "_cursorIndexOfPeriodStartTime":I
    .local v20, "_cursorIndexOfPeriodStartTime":I
    const-string v1, "requires_device_idle"

    invoke-static {v5, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 1431
    .local v1, "_cursorIndexOfMRequiresDeviceIdle":I
    move/from16 v21, v3

    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .local v21, "_cursorIndexOfBackoffDelayDuration":I
    const-string v3, "requires_battery_not_low"

    invoke-static {v5, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1432
    .local v3, "_cursorIndexOfMRequiresBatteryNotLow":I
    move/from16 v22, v15

    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    const-string v15, "requires_storage_not_low"

    invoke-static {v5, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1433
    .local v15, "_cursorIndexOfMRequiresStorageNotLow":I
    move/from16 v23, v14

    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    const-string/jumbo v14, "trigger_content_update_delay"

    invoke-static {v5, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1434
    .local v14, "_cursorIndexOfMTriggerContentUpdateDelay":I
    move/from16 v24, v13

    .end local v13    # "_cursorIndexOfFlexDuration":I
    .local v24, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v13, "trigger_max_content_delay"

    invoke-static {v5, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1435
    .local v13, "_cursorIndexOfMTriggerMaxContentDelay":I
    move/from16 v25, v12

    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .local v25, "_cursorIndexOfIntervalDuration":I
    const-string v12, "content_uri_triggers"

    invoke-static {v5, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1436
    .local v12, "_cursorIndexOfMContentUriTriggers":I
    move/from16 v26, v11

    .end local v11    # "_cursorIndexOfInitialDelay":I
    .local v26, "_cursorIndexOfInitialDelay":I
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v27, v10

    .end local v10    # "_cursorIndexOfOutput":I
    .local v27, "_cursorIndexOfOutput":I
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v11

    .line 1437
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1440
    invoke-interface {v5, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1442
    .local v11, "_tmpId":Ljava/lang/String;
    invoke-interface {v5, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v28

    .line 1444
    .local v29, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v28, Lccsanandroidx/work/Constraints;

    invoke-direct/range {v28 .. v28}, Lccsanandroidx/work/Constraints;-><init>()V

    move-object/from16 v30, v28

    .line 1447
    .local v30, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    invoke-interface {v5, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1448
    .local v28, "_tmp":I
    invoke-static/range {v28 .. v28}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Lccsanandroidx/work/NetworkType;

    move-result-object v31

    move-object/from16 v32, v31

    .line 1449
    .local v32, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v30, v4

    move-object/from16 v4, v32

    .end local v32    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .local v4, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v30, "_cursorIndexOfMRequiredNetworkType":I
    .local v31, "_cursorIndexOfId":I
    invoke-virtual {v0, v4}, Lccsanandroidx/work/Constraints;->setRequiredNetworkType(Lccsanandroidx/work/NetworkType;)V

    .line 1452
    invoke-interface {v5, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1453
    .local v32, "_tmp_1":I
    const/16 v33, 0x1

    if-eqz v32, :cond_0

    const/16 v34, 0x1

    goto :goto_1

    :cond_0
    const/16 v34, 0x0

    :goto_1
    move/from16 v35, v34

    .line 1454
    .local v35, "_tmpMRequiresCharging":Z
    move/from16 v34, v2

    move/from16 v2, v35

    .end local v35    # "_tmpMRequiresCharging":Z
    .local v2, "_tmpMRequiresCharging":Z
    .local v34, "_cursorIndexOfMRequiresCharging":I
    invoke-virtual {v0, v2}, Lccsanandroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1457
    invoke-interface {v5, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1458
    .local v35, "_tmp_2":I
    if-eqz v35, :cond_1

    const/16 v36, 0x1

    goto :goto_2

    :cond_1
    const/16 v36, 0x0

    :goto_2
    move/from16 v37, v36

    .line 1459
    .local v37, "_tmpMRequiresDeviceIdle":Z
    move/from16 v36, v1

    move/from16 v1, v37

    .end local v37    # "_tmpMRequiresDeviceIdle":Z
    .local v1, "_tmpMRequiresDeviceIdle":Z
    .local v36, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1462
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1463
    .local v37, "_tmp_3":I
    if-eqz v37, :cond_2

    const/16 v38, 0x1

    goto :goto_3

    :cond_2
    const/16 v38, 0x0

    :goto_3
    move/from16 v39, v38

    .line 1464
    .local v39, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v38, v1

    move/from16 v1, v39

    .end local v39    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_tmpMRequiresBatteryNotLow":Z
    .local v38, "_tmpMRequiresDeviceIdle":Z
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1467
    invoke-interface {v5, v15}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 1468
    .local v39, "_tmp_4":I
    if-eqz v39, :cond_3

    goto :goto_4

    :cond_3
    const/16 v33, 0x0

    :goto_4
    move/from16 v40, v33

    .line 1469
    .local v40, "_tmpMRequiresStorageNotLow":Z
    move/from16 v33, v1

    move/from16 v1, v40

    .end local v40    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v33, "_tmpMRequiresBatteryNotLow":Z
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1471
    invoke-interface {v5, v14}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    move-wide/from16 v42, v40

    .line 1472
    .local v42, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v41, v1

    move/from16 v40, v2

    move-wide/from16 v1, v42

    .end local v2    # "_tmpMRequiresCharging":Z
    .end local v42    # "_tmpMTriggerContentUpdateDelay":J
    .local v1, "_tmpMTriggerContentUpdateDelay":J
    .local v40, "_tmpMRequiresCharging":Z
    .local v41, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1474
    invoke-interface {v5, v13}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 1475
    .local v44, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v42, v1

    move-wide/from16 v1, v44

    .end local v44    # "_tmpMTriggerMaxContentDelay":J
    .local v1, "_tmpMTriggerMaxContentDelay":J
    .restart local v42    # "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1478
    invoke-interface {v5, v12}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v44

    .line 1479
    .local v44, "_tmp_5":[B
    invoke-static/range {v44 .. v44}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v45

    move-object/from16 v46, v45

    .line 1480
    .local v46, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    move-wide/from16 v47, v1

    move-object/from16 v1, v46

    .end local v46    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v47, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setContentUriTriggers(Lccsanandroidx/work/ContentUriTriggers;)V

    .line 1481
    new-instance v2, Lccsanandroidx/work/impl/model/WorkSpec;

    move-object/from16 v45, v1

    move-object/from16 v1, v29

    .end local v29    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v1, "_tmpWorkerClassName":Ljava/lang/String;
    .local v45, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    invoke-direct {v2, v11, v1}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    .local v2, "_item":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-interface {v5, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1484
    .local v29, "_tmp_6":I
    move-object/from16 v46, v1

    .end local v1    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v46, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 1485
    invoke-interface {v5, v8}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1487
    invoke-interface {v5, v9}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1488
    .local v1, "_tmp_7":[B
    move/from16 v49, v3

    .end local v3    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v49, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-static {v1}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 1490
    move/from16 v3, v27

    .end local v27    # "_cursorIndexOfOutput":I
    .local v3, "_cursorIndexOfOutput":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 1491
    .local v27, "_tmp_8":[B
    move-object/from16 v50, v1

    .end local v1    # "_tmp_7":[B
    .local v50, "_tmp_7":[B
    invoke-static/range {v27 .. v27}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 1492
    move/from16 v51, v3

    move/from16 v1, v26

    move-object/from16 v26, v4

    .end local v3    # "_cursorIndexOfOutput":I
    .end local v4    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v26, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v51, "_cursorIndexOfOutput":I
    invoke-interface {v5, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1493
    move v4, v6

    move/from16 v3, v25

    move/from16 v25, v7

    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v4, "_cursorIndexOfState":I
    .local v25, "_cursorIndexOfWorkerClassName":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1494
    move v7, v3

    move/from16 v6, v24

    move/from16 v24, v4

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfState":I
    .local v6, "_cursorIndexOfFlexDuration":I
    .local v7, "_cursorIndexOfIntervalDuration":I
    .local v24, "_cursorIndexOfState":I
    invoke-interface {v5, v6}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1495
    move/from16 v3, v23

    .end local v23    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1497
    move/from16 v4, v22

    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1498
    .local v22, "_tmp_9":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v23, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v22 .. v22}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Lccsanandroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 1499
    move/from16 v52, v4

    move/from16 v1, v21

    move/from16 v21, v3

    .end local v3    # "_cursorIndexOfRunAttemptCount":I
    .end local v4    # "_cursorIndexOfBackoffPolicy":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v21, "_cursorIndexOfRunAttemptCount":I
    .local v52, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v5, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1500
    move v4, v6

    move/from16 v3, v20

    move/from16 v20, v7

    .end local v6    # "_cursorIndexOfFlexDuration":I
    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v20, "_cursorIndexOfIntervalDuration":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1501
    move v7, v3

    move/from16 v6, v19

    move/from16 v19, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    .local v7, "_cursorIndexOfPeriodStartTime":I
    .local v19, "_cursorIndexOfFlexDuration":I
    invoke-interface {v5, v6}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1502
    move v4, v6

    move/from16 v3, v18

    move/from16 v18, v7

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v7    # "_cursorIndexOfPeriodStartTime":I
    .local v3, "_cursorIndexOfScheduleRequestedAt":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v18, "_cursorIndexOfPeriodStartTime":I
    invoke-interface {v5, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1503
    iput-object v0, v2, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 1504
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1505
    move/from16 v26, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v0, v31

    move/from16 v2, v34

    move/from16 v27, v51

    move/from16 v22, v52

    move/from16 v24, v19

    move/from16 v25, v20

    move/from16 v23, v21

    move/from16 v21, v1

    move/from16 v19, v4

    move/from16 v20, v18

    move/from16 v4, v30

    move/from16 v1, v36

    move/from16 v18, v3

    move/from16 v3, v49

    .end local v0    # "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .end local v2    # "_item":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v11    # "_tmpId":Ljava/lang/String;
    .end local v22    # "_tmp_9":I
    .end local v26    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .end local v27    # "_tmp_8":[B
    .end local v28    # "_tmp":I
    .end local v29    # "_tmp_6":I
    .end local v32    # "_tmp_1":I
    .end local v33    # "_tmpMRequiresBatteryNotLow":Z
    .end local v35    # "_tmp_2":I
    .end local v37    # "_tmp_3":I
    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .end local v39    # "_tmp_4":I
    .end local v40    # "_tmpMRequiresCharging":Z
    .end local v41    # "_tmpMRequiresStorageNotLow":Z
    .end local v42    # "_tmpMTriggerContentUpdateDelay":J
    .end local v44    # "_tmp_5":[B
    .end local v45    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .end local v46    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v47    # "_tmpMTriggerMaxContentDelay":J
    .end local v50    # "_tmp_7":[B
    goto/16 :goto_0

    .line 1506
    .end local v30    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v31    # "_cursorIndexOfId":I
    .end local v34    # "_cursorIndexOfMRequiresCharging":I
    .end local v36    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v49    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v51    # "_cursorIndexOfOutput":I
    .end local v52    # "_cursorIndexOfBackoffPolicy":I
    .local v0, "_cursorIndexOfId":I
    .local v1, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v2, "_cursorIndexOfMRequiresCharging":I
    .local v3, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v4, "_cursorIndexOfMRequiredNetworkType":I
    .local v6, "_cursorIndexOfState":I
    .local v7, "_cursorIndexOfWorkerClassName":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfMinimumRetentionDuration":I
    .local v20, "_cursorIndexOfPeriodStartTime":I
    .local v21, "_cursorIndexOfBackoffDelayDuration":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    .local v24, "_cursorIndexOfFlexDuration":I
    .local v25, "_cursorIndexOfIntervalDuration":I
    .local v26, "_cursorIndexOfInitialDelay":I
    .local v27, "_cursorIndexOfOutput":I
    :cond_4
    nop

    .line 1508
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V

    .line 1509
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1506
    return-object v10

    .line 1508
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v2    # "_cursorIndexOfMRequiresCharging":I
    .end local v3    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v4    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    .end local v12    # "_cursorIndexOfMContentUriTriggers":I
    .end local v13    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v14    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v15    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v20    # "_cursorIndexOfPeriodStartTime":I
    .end local v21    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .end local v23    # "_cursorIndexOfRunAttemptCount":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfIntervalDuration":I
    .end local v26    # "_cursorIndexOfInitialDelay":I
    .end local v27    # "_cursorIndexOfOutput":I
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_5

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :goto_5
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V

    .line 1509
    invoke-virtual/range {v17 .. v17}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1510
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 667
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 668
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT state FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 669
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 670
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 671
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 675
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 676
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 679
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 681
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 682
    .local v4, "_tmp":I
    invoke-static {v4}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 683
    .local v4, "_result":Lccsanandroidx/work/WorkInfo$State;
    goto :goto_1

    .line 684
    .end local v4    # "_result":Lccsanandroidx/work/WorkInfo$State;
    :cond_1
    const/4 v4, 0x0

    .line 686
    .restart local v4    # "_result":Lccsanandroidx/work/WorkInfo$State;
    :goto_1
    nop

    .line 688
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 689
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 686
    return-object v4

    .line 688
    .end local v4    # "_result":Lccsanandroidx/work/WorkInfo$State;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 689
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 690
    throw v4
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
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

    .line 1253
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1254
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1255
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1256
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1257
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1259
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1261
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1262
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 1264
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1265
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1267
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1268
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 1270
    :cond_1
    nop

    .line 1272
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1273
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1270
    return-object v5

    .line 1272
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1273
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1274
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
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

    .line 1227
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1228
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1229
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1230
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 1231
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1233
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1235
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1236
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 1238
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1239
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1241
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1242
    .local v6, "_item":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 1244
    :cond_1
    nop

    .line 1246
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1247
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1244
    return-object v5

    .line 1246
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 1247
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1248
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;
    .locals 53
    .param p1, "id"    # Ljava/lang/String;

    .line 378
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT * FROM workspec WHERE id=?"

    .line 379
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 380
    .local v5, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 381
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 382
    invoke-virtual {v5, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v5, v6, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 386
    :goto_0
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 387
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v7}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v8

    .line 389
    .local v8, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v8, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 390
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v8, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 391
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v8, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 392
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v8, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 393
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v8, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 394
    .local v12, "_cursorIndexOfInput":I
    const-string v13, "output"

    invoke-static {v8, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 395
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v8, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 396
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v8, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 397
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v8, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 398
    .local v4, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v7, "run_attempt_count"

    invoke-static {v8, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 399
    .local v7, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "_cursorIndexOfBackoffPolicy":I
    const-string v2, "backoff_delay_duration"

    invoke-static {v8, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 401
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move-object/from16 v18, v3

    .end local v3    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v3, "period_start_time"

    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 402
    .local v3, "_cursorIndexOfPeriodStartTime":I
    move/from16 v19, v6

    .end local v6    # "_argIndex":I
    .local v19, "_argIndex":I
    :try_start_2
    const-string v6, "minimum_retention_duration"

    invoke-static {v8, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 403
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v20, v5

    .end local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v20, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string/jumbo v5, "schedule_requested_at"

    invoke-static {v8, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 404
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v21, v5

    .end local v5    # "_cursorIndexOfScheduleRequestedAt":I
    .local v21, "_cursorIndexOfScheduleRequestedAt":I
    const-string v5, "required_network_type"

    invoke-static {v8, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 405
    .local v5, "_cursorIndexOfMRequiredNetworkType":I
    move/from16 v22, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v22, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v6, "requires_charging"

    invoke-static {v8, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 406
    .local v6, "_cursorIndexOfMRequiresCharging":I
    move/from16 v23, v3

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .local v23, "_cursorIndexOfPeriodStartTime":I
    const-string v3, "requires_device_idle"

    invoke-static {v8, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 407
    .local v3, "_cursorIndexOfMRequiresDeviceIdle":I
    move/from16 v24, v2

    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const-string v2, "requires_battery_not_low"

    invoke-static {v8, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 408
    .local v2, "_cursorIndexOfMRequiresBatteryNotLow":I
    move/from16 v25, v1

    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .local v25, "_cursorIndexOfBackoffPolicy":I
    const-string v1, "requires_storage_not_low"

    invoke-static {v8, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 409
    .local v1, "_cursorIndexOfMRequiresStorageNotLow":I
    move/from16 v26, v7

    .end local v7    # "_cursorIndexOfRunAttemptCount":I
    .local v26, "_cursorIndexOfRunAttemptCount":I
    const-string/jumbo v7, "trigger_content_update_delay"

    invoke-static {v8, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 410
    .local v7, "_cursorIndexOfMTriggerContentUpdateDelay":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v27, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v8, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 411
    .local v4, "_cursorIndexOfMTriggerMaxContentDelay":I
    move/from16 v28, v15

    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .local v28, "_cursorIndexOfIntervalDuration":I
    const-string v15, "content_uri_triggers"

    invoke-static {v8, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 413
    .local v15, "_cursorIndexOfMContentUriTriggers":I
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 415
    invoke-interface {v8, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v29

    .line 417
    .local v30, "_tmpId":Ljava/lang/String;
    invoke-interface {v8, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v31, v29

    .line 419
    .local v31, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v29, Lccsanandroidx/work/Constraints;

    invoke-direct/range {v29 .. v29}, Lccsanandroidx/work/Constraints;-><init>()V

    move-object/from16 v32, v29

    .line 422
    .local v32, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 423
    .local v29, "_tmp":I
    invoke-static/range {v29 .. v29}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Lccsanandroidx/work/NetworkType;

    move-result-object v33

    move-object/from16 v34, v33

    .line 424
    .local v34, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v32, v5

    move-object/from16 v5, v34

    .end local v34    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .local v5, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v32, "_cursorIndexOfMRequiredNetworkType":I
    .local v33, "_cursorIndexOfId":I
    invoke-virtual {v0, v5}, Lccsanandroidx/work/Constraints;->setRequiredNetworkType(Lccsanandroidx/work/NetworkType;)V

    .line 427
    invoke-interface {v8, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 428
    .local v34, "_tmp_1":I
    if-eqz v34, :cond_1

    const/16 v35, 0x1

    goto :goto_1

    :cond_1
    const/16 v35, 0x0

    :goto_1
    move/from16 v36, v35

    .line 429
    .local v36, "_tmpMRequiresCharging":Z
    move-object/from16 v35, v5

    move/from16 v5, v36

    .end local v36    # "_tmpMRequiresCharging":Z
    .local v5, "_tmpMRequiresCharging":Z
    .local v35, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    invoke-virtual {v0, v5}, Lccsanandroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 432
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 433
    .local v36, "_tmp_2":I
    if-eqz v36, :cond_2

    const/16 v37, 0x1

    goto :goto_2

    :cond_2
    const/16 v37, 0x0

    :goto_2
    move/from16 v38, v37

    .line 434
    .local v38, "_tmpMRequiresDeviceIdle":Z
    move/from16 v37, v3

    move/from16 v3, v38

    .end local v38    # "_tmpMRequiresDeviceIdle":Z
    .local v3, "_tmpMRequiresDeviceIdle":Z
    .local v37, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v3}, Lccsanandroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 437
    invoke-interface {v8, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 438
    .local v38, "_tmp_3":I
    if-eqz v38, :cond_3

    const/16 v39, 0x1

    goto :goto_3

    :cond_3
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 439
    .local v40, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v39, v2

    move/from16 v2, v40

    .end local v40    # "_tmpMRequiresBatteryNotLow":Z
    .local v2, "_tmpMRequiresBatteryNotLow":Z
    .local v39, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-virtual {v0, v2}, Lccsanandroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 442
    invoke-interface {v8, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 443
    .local v40, "_tmp_4":I
    if-eqz v40, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    move/from16 v17, v16

    .line 444
    .local v17, "_tmpMRequiresStorageNotLow":Z
    move/from16 v16, v1

    move/from16 v1, v17

    .end local v17    # "_tmpMRequiresStorageNotLow":Z
    .local v1, "_tmpMRequiresStorageNotLow":Z
    .local v16, "_cursorIndexOfMRequiresStorageNotLow":I
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 446
    invoke-interface {v8, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v43, v41

    .line 447
    .local v43, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v41, v1

    move/from16 v17, v2

    move-wide/from16 v1, v43

    .end local v2    # "_tmpMRequiresBatteryNotLow":Z
    .end local v43    # "_tmpMTriggerContentUpdateDelay":J
    .local v1, "_tmpMTriggerContentUpdateDelay":J
    .local v17, "_tmpMRequiresBatteryNotLow":Z
    .local v41, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 449
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v44, v42

    .line 450
    .local v44, "_tmpMTriggerMaxContentDelay":J
    move-wide/from16 v42, v1

    move-wide/from16 v1, v44

    .end local v44    # "_tmpMTriggerMaxContentDelay":J
    .local v1, "_tmpMTriggerMaxContentDelay":J
    .local v42, "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 453
    invoke-interface {v8, v15}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v44

    .line 454
    .local v44, "_tmp_5":[B
    invoke-static/range {v44 .. v44}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v45

    move-object/from16 v46, v45

    .line 455
    .local v46, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    move-wide/from16 v47, v1

    move-object/from16 v1, v46

    .end local v46    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v47, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setContentUriTriggers(Lccsanandroidx/work/ContentUriTriggers;)V

    .line 456
    new-instance v2, Lccsanandroidx/work/impl/model/WorkSpec;

    move-object/from16 v45, v1

    move-object/from16 v1, v30

    move/from16 v30, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v1, "_tmpId":Ljava/lang/String;
    .local v3, "_tmpWorkerClassName":Ljava/lang/String;
    .local v30, "_tmpMRequiresDeviceIdle":Z
    .local v45, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    invoke-direct {v2, v1, v3}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .local v2, "_result":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-interface {v8, v9}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 459
    .local v31, "_tmp_6":I
    move-object/from16 v46, v1

    .end local v1    # "_tmpId":Ljava/lang/String;
    .local v46, "_tmpId":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 460
    invoke-interface {v8, v11}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 462
    invoke-interface {v8, v12}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 463
    .local v1, "_tmp_7":[B
    move-object/from16 v49, v3

    .end local v3    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v49, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 465
    invoke-interface {v8, v13}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 466
    .local v3, "_tmp_8":[B
    move-object/from16 v50, v1

    .end local v1    # "_tmp_7":[B
    .local v50, "_tmp_7":[B
    invoke-static {v3}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 467
    move-object/from16 v51, v3

    move v1, v4

    .end local v3    # "_tmp_8":[B
    .end local v4    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v1, "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v51, "_tmp_8":[B
    invoke-interface {v8, v14}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 468
    move/from16 v3, v28

    move/from16 v28, v5

    .end local v5    # "_tmpMRequiresCharging":Z
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v28, "_tmpMRequiresCharging":Z
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 469
    move/from16 v4, v27

    move/from16 v27, v6

    .end local v6    # "_cursorIndexOfMRequiresCharging":I
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v27, "_cursorIndexOfMRequiresCharging":I
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 470
    move/from16 v5, v26

    .end local v26    # "_cursorIndexOfRunAttemptCount":I
    .local v5, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 472
    move/from16 v6, v25

    .end local v25    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 473
    .local v25, "_tmp_9":I
    move/from16 v26, v1

    .end local v1    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v26, "_cursorIndexOfMTriggerMaxContentDelay":I
    invoke-static/range {v25 .. v25}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Lccsanandroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 474
    move/from16 v52, v4

    move/from16 v1, v24

    move/from16 v24, v3

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v24, "_cursorIndexOfIntervalDuration":I
    .local v52, "_cursorIndexOfFlexDuration":I
    invoke-interface {v8, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 475
    move/from16 v3, v23

    move/from16 v23, v5

    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v8, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 476
    move/from16 v4, v22

    move/from16 v22, v6

    .end local v6    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v8, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 477
    move v6, v3

    move/from16 v5, v21

    move/from16 v21, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    .local v6, "_cursorIndexOfPeriodStartTime":I
    .local v21, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v8, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 478
    iput-object v0, v2, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 479
    .end local v0    # "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .end local v17    # "_tmpMRequiresBatteryNotLow":Z
    .end local v25    # "_tmp_9":I
    .end local v28    # "_tmpMRequiresCharging":Z
    .end local v29    # "_tmp":I
    .end local v30    # "_tmpMRequiresDeviceIdle":Z
    .end local v31    # "_tmp_6":I
    .end local v34    # "_tmp_1":I
    .end local v35    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .end local v36    # "_tmp_2":I
    .end local v38    # "_tmp_3":I
    .end local v40    # "_tmp_4":I
    .end local v41    # "_tmpMRequiresStorageNotLow":Z
    .end local v42    # "_tmpMTriggerContentUpdateDelay":J
    .end local v44    # "_tmp_5":[B
    .end local v45    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .end local v46    # "_tmpId":Ljava/lang/String;
    .end local v47    # "_tmpMTriggerMaxContentDelay":J
    .end local v49    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v50    # "_tmp_7":[B
    .end local v51    # "_tmp_8":[B
    goto :goto_5

    .line 480
    .end local v16    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v33    # "_cursorIndexOfId":I
    .end local v37    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v39    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v52    # "_cursorIndexOfFlexDuration":I
    .local v0, "_cursorIndexOfId":I
    .local v1, "_cursorIndexOfMRequiresStorageNotLow":I
    .local v2, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v3, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v4, "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v5, "_cursorIndexOfMRequiredNetworkType":I
    .local v6, "_cursorIndexOfMRequiresCharging":I
    .local v21, "_cursorIndexOfScheduleRequestedAt":I
    .local v22, "_cursorIndexOfMinimumRetentionDuration":I
    .local v23, "_cursorIndexOfPeriodStartTime":I
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfBackoffPolicy":I
    .local v26, "_cursorIndexOfRunAttemptCount":I
    .local v27, "_cursorIndexOfFlexDuration":I
    .local v28, "_cursorIndexOfIntervalDuration":I
    :cond_5
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v39, v2

    move/from16 v37, v3

    move/from16 v32, v5

    move/from16 v5, v21

    move/from16 v21, v22

    move/from16 v1, v24

    move/from16 v22, v25

    move/from16 v52, v27

    move/from16 v24, v28

    move/from16 v27, v6

    move/from16 v6, v23

    move/from16 v23, v26

    move/from16 v26, v4

    .end local v0    # "_cursorIndexOfId":I
    .end local v2    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v3    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v4    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v25    # "_cursorIndexOfBackoffPolicy":I
    .end local v28    # "_cursorIndexOfIntervalDuration":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    .local v6, "_cursorIndexOfPeriodStartTime":I
    .restart local v16    # "_cursorIndexOfMRequiresStorageNotLow":I
    .local v21, "_cursorIndexOfMinimumRetentionDuration":I
    .local v22, "_cursorIndexOfBackoffPolicy":I
    .local v23, "_cursorIndexOfRunAttemptCount":I
    .local v24, "_cursorIndexOfIntervalDuration":I
    .local v26, "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v27, "_cursorIndexOfMRequiresCharging":I
    .restart local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .restart local v33    # "_cursorIndexOfId":I
    .restart local v37    # "_cursorIndexOfMRequiresDeviceIdle":I
    .restart local v39    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .restart local v52    # "_cursorIndexOfFlexDuration":I
    const/4 v2, 0x0

    .line 482
    .local v2, "_result":Lccsanandroidx/work/impl/model/WorkSpec;
    :goto_5
    nop

    .line 484
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->close()V

    .line 485
    invoke-virtual/range {v20 .. v20}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 482
    return-object v2

    .line 484
    .end local v1    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v2    # "_result":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v5    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v6    # "_cursorIndexOfPeriodStartTime":I
    .end local v7    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfMContentUriTriggers":I
    .end local v16    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v21    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v22    # "_cursorIndexOfBackoffPolicy":I
    .end local v23    # "_cursorIndexOfRunAttemptCount":I
    .end local v24    # "_cursorIndexOfIntervalDuration":I
    .end local v26    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v27    # "_cursorIndexOfMRequiresCharging":I
    .end local v32    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v33    # "_cursorIndexOfId":I
    .end local v37    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v39    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v52    # "_cursorIndexOfFlexDuration":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v20    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v5, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v20    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v19    # "_argIndex":I
    .end local v20    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v6, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v19, v6

    .end local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v19    # "_argIndex":I
    .restart local v20    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_6

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argIndex":I
    .end local v20    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v19, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argIndex":I
    .restart local v20    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :goto_6
    invoke-interface {v8}, Lccsanandroid/database/Cursor;->close()V

    .line 485
    invoke-virtual/range {v20 .. v20}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 486
    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    .line 615
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 616
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 617
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 618
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 619
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {v1, v2, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 623
    :goto_0
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 624
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 626
    .local v3, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string v4, "id"

    invoke-static {v3, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 627
    .local v4, "_cursorIndexOfId":I
    const-string/jumbo v5, "state"

    invoke-static {v3, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 628
    .local v5, "_cursorIndexOfState":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 631
    new-instance v7, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v7}, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;-><init>()V

    .line 632
    .local v7, "_item":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 634
    invoke-interface {v3, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 635
    .local v8, "_tmp":I
    invoke-static {v8}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v9

    iput-object v9, v7, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 636
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    nop

    .end local v7    # "_item":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    .end local v8    # "_tmp":I
    goto :goto_1

    .line 638
    :cond_1
    nop

    .line 640
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 641
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 638
    return-object v6

    .line 640
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfState":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 641
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 642
    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public getWorkSpecs(Ljava/util/List;)[Lccsanandroidx/work/impl/model/WorkSpec;
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lccsanandroidx/work/impl/model/WorkSpec;"
        }
    .end annotation

    .line 491
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    invoke-static {}, Lccsanandroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 492
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT * FROM workspec WHERE id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 494
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Lccsanandroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 495
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 498
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 499
    .local v6, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 500
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    .local v0, "_item":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 502
    invoke-virtual {v6, v8}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 504
    :cond_0
    invoke-virtual {v6, v8, v0}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 506
    :goto_1
    nop

    .end local v0    # "_item":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 507
    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 509
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v9

    .line 511
    .local v9, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v9, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 512
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v10, "state"

    invoke-static {v9, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 513
    .local v10, "_cursorIndexOfState":I
    const-string/jumbo v11, "worker_class_name"

    invoke-static {v9, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 514
    .local v11, "_cursorIndexOfWorkerClassName":I
    const-string v12, "input_merger_class_name"

    invoke-static {v9, v12}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 515
    .local v12, "_cursorIndexOfInputMergerClassName":I
    const-string v13, "input"

    invoke-static {v9, v13}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 516
    .local v13, "_cursorIndexOfInput":I
    const-string v14, "output"

    invoke-static {v9, v14}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 517
    .local v14, "_cursorIndexOfOutput":I
    const-string v15, "initial_delay"

    invoke-static {v9, v15}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 518
    .local v15, "_cursorIndexOfInitialDelay":I
    const-string v7, "interval_duration"

    invoke-static {v9, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 519
    .local v7, "_cursorIndexOfIntervalDuration":I
    const-string v1, "flex_duration"

    invoke-static {v9, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 520
    .local v1, "_cursorIndexOfFlexDuration":I
    move-object/from16 v16, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v16, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    const-string/jumbo v2, "run_attempt_count"

    invoke-static {v9, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 521
    .local v2, "_cursorIndexOfRunAttemptCount":I
    move/from16 v17, v3

    .end local v3    # "_inputSize":I
    .local v17, "_inputSize":I
    :try_start_2
    const-string v3, "backoff_policy"

    invoke-static {v9, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 522
    .local v3, "_cursorIndexOfBackoffPolicy":I
    move-object/from16 v18, v4

    .end local v4    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_3
    const-string v4, "backoff_delay_duration"

    invoke-static {v9, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 523
    .local v4, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v19, v5

    .end local v5    # "_argCount":I
    .local v19, "_argCount":I
    :try_start_4
    const-string v5, "period_start_time"

    invoke-static {v9, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 524
    .local v5, "_cursorIndexOfPeriodStartTime":I
    move/from16 v20, v8

    .end local v8    # "_argIndex":I
    .local v20, "_argIndex":I
    :try_start_5
    const-string v8, "minimum_retention_duration"

    invoke-static {v9, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 525
    .local v8, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v21, v6

    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v21, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :try_start_6
    const-string/jumbo v6, "schedule_requested_at"

    invoke-static {v9, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 526
    .local v6, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v22, v6

    .end local v6    # "_cursorIndexOfScheduleRequestedAt":I
    .local v22, "_cursorIndexOfScheduleRequestedAt":I
    const-string v6, "required_network_type"

    invoke-static {v9, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 527
    .local v6, "_cursorIndexOfMRequiredNetworkType":I
    move/from16 v23, v8

    .end local v8    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v23, "_cursorIndexOfMinimumRetentionDuration":I
    const-string v8, "requires_charging"

    invoke-static {v9, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 528
    .local v8, "_cursorIndexOfMRequiresCharging":I
    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfPeriodStartTime":I
    .local v24, "_cursorIndexOfPeriodStartTime":I
    const-string v5, "requires_device_idle"

    invoke-static {v9, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 529
    .local v5, "_cursorIndexOfMRequiresDeviceIdle":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfBackoffDelayDuration":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v9, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 530
    .local v4, "_cursorIndexOfMRequiresBatteryNotLow":I
    move/from16 v26, v3

    .end local v3    # "_cursorIndexOfBackoffPolicy":I
    .local v26, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "requires_storage_not_low"

    invoke-static {v9, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 531
    .local v3, "_cursorIndexOfMRequiresStorageNotLow":I
    move/from16 v27, v2

    .end local v2    # "_cursorIndexOfRunAttemptCount":I
    .local v27, "_cursorIndexOfRunAttemptCount":I
    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v9, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 532
    .local v2, "_cursorIndexOfMTriggerContentUpdateDelay":I
    move/from16 v28, v1

    .end local v1    # "_cursorIndexOfFlexDuration":I
    .local v28, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v1, "trigger_max_content_delay"

    invoke-static {v9, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 533
    .local v1, "_cursorIndexOfMTriggerMaxContentDelay":I
    move/from16 v29, v7

    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .local v29, "_cursorIndexOfIntervalDuration":I
    const-string v7, "content_uri_triggers"

    invoke-static {v9, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 534
    .local v7, "_cursorIndexOfMContentUriTriggers":I
    move/from16 v30, v15

    .end local v15    # "_cursorIndexOfInitialDelay":I
    .local v30, "_cursorIndexOfInitialDelay":I
    invoke-interface {v9}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v15

    new-array v15, v15, [Lccsanandroidx/work/impl/model/WorkSpec;

    .line 535
    .local v15, "_result":[Lccsanandroidx/work/impl/model/WorkSpec;
    const/16 v31, 0x0

    .line 536
    .local v31, "_index":I
    :goto_2
    invoke-interface {v9}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 539
    invoke-interface {v9, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v32

    .line 541
    .local v33, "_tmpId":Ljava/lang/String;
    invoke-interface {v9, v11}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v34, v32

    .line 543
    .local v34, "_tmpWorkerClassName":Ljava/lang/String;
    new-instance v32, Lccsanandroidx/work/Constraints;

    invoke-direct/range {v32 .. v32}, Lccsanandroidx/work/Constraints;-><init>()V

    move-object/from16 v35, v32

    .line 546
    .local v35, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    invoke-interface {v9, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 547
    .local v32, "_tmp":I
    invoke-static/range {v32 .. v32}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Lccsanandroidx/work/NetworkType;

    move-result-object v36

    move-object/from16 v37, v36

    .line 548
    .local v37, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    move/from16 v36, v0

    move-object/from16 v0, v35

    move/from16 v35, v6

    move-object/from16 v6, v37

    .end local v37    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v0, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .local v6, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .local v35, "_cursorIndexOfMRequiredNetworkType":I
    .local v36, "_cursorIndexOfId":I
    invoke-virtual {v0, v6}, Lccsanandroidx/work/Constraints;->setRequiredNetworkType(Lccsanandroidx/work/NetworkType;)V

    .line 551
    invoke-interface {v9, v8}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 552
    .local v37, "_tmp_1":I
    const/16 v38, 0x1

    if-eqz v37, :cond_2

    const/16 v39, 0x1

    goto :goto_3

    :cond_2
    const/16 v39, 0x0

    :goto_3
    move/from16 v40, v39

    .line 553
    .local v40, "_tmpMRequiresCharging":Z
    move-object/from16 v39, v6

    move/from16 v6, v40

    .end local v40    # "_tmpMRequiresCharging":Z
    .local v6, "_tmpMRequiresCharging":Z
    .local v39, "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    invoke-virtual {v0, v6}, Lccsanandroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 556
    invoke-interface {v9, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 557
    .local v40, "_tmp_2":I
    if-eqz v40, :cond_3

    const/16 v41, 0x1

    goto :goto_4

    :cond_3
    const/16 v41, 0x0

    :goto_4
    move/from16 v42, v41

    .line 558
    .local v42, "_tmpMRequiresDeviceIdle":Z
    move/from16 v41, v5

    move/from16 v5, v42

    .end local v42    # "_tmpMRequiresDeviceIdle":Z
    .local v5, "_tmpMRequiresDeviceIdle":Z
    .local v41, "_cursorIndexOfMRequiresDeviceIdle":I
    invoke-virtual {v0, v5}, Lccsanandroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 561
    invoke-interface {v9, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 562
    .local v42, "_tmp_3":I
    if-eqz v42, :cond_4

    const/16 v43, 0x1

    goto :goto_5

    :cond_4
    const/16 v43, 0x0

    :goto_5
    move/from16 v44, v43

    .line 563
    .local v44, "_tmpMRequiresBatteryNotLow":Z
    move/from16 v43, v4

    move/from16 v4, v44

    .end local v44    # "_tmpMRequiresBatteryNotLow":Z
    .local v4, "_tmpMRequiresBatteryNotLow":Z
    .local v43, "_cursorIndexOfMRequiresBatteryNotLow":I
    invoke-virtual {v0, v4}, Lccsanandroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 566
    invoke-interface {v9, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 567
    .local v44, "_tmp_4":I
    if-eqz v44, :cond_5

    goto :goto_6

    :cond_5
    const/16 v38, 0x0

    :goto_6
    move/from16 v45, v38

    .line 568
    .local v45, "_tmpMRequiresStorageNotLow":Z
    move/from16 v38, v3

    move/from16 v3, v45

    .end local v45    # "_tmpMRequiresStorageNotLow":Z
    .local v3, "_tmpMRequiresStorageNotLow":Z
    .local v38, "_cursorIndexOfMRequiresStorageNotLow":I
    invoke-virtual {v0, v3}, Lccsanandroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 570
    invoke-interface {v9, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    move-wide/from16 v47, v45

    .line 571
    .local v47, "_tmpMTriggerContentUpdateDelay":J
    move/from16 v45, v2

    move/from16 v46, v3

    move-wide/from16 v2, v47

    .end local v3    # "_tmpMRequiresStorageNotLow":Z
    .end local v47    # "_tmpMTriggerContentUpdateDelay":J
    .local v2, "_tmpMTriggerContentUpdateDelay":J
    .local v45, "_cursorIndexOfMTriggerContentUpdateDelay":I
    .local v46, "_tmpMRequiresStorageNotLow":Z
    invoke-virtual {v0, v2, v3}, Lccsanandroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 573
    invoke-interface {v9, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    move-wide/from16 v49, v47

    .line 574
    .local v49, "_tmpMTriggerMaxContentDelay":J
    move/from16 v47, v1

    move-wide/from16 v51, v2

    move-wide/from16 v1, v49

    .end local v2    # "_tmpMTriggerContentUpdateDelay":J
    .end local v49    # "_tmpMTriggerMaxContentDelay":J
    .local v1, "_tmpMTriggerMaxContentDelay":J
    .local v47, "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v51, "_tmpMTriggerContentUpdateDelay":J
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 577
    invoke-interface {v9, v7}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 578
    .local v3, "_tmp_5":[B
    invoke-static {v3}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v48

    move-object/from16 v49, v48

    .line 579
    .local v49, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    move-wide/from16 v53, v1

    move-object/from16 v1, v49

    .end local v49    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v1, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .local v53, "_tmpMTriggerMaxContentDelay":J
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->setContentUriTriggers(Lccsanandroidx/work/ContentUriTriggers;)V

    .line 580
    new-instance v2, Lccsanandroidx/work/impl/model/WorkSpec;

    move-object/from16 v48, v1

    move-object/from16 v1, v33

    move-object/from16 v33, v3

    move-object/from16 v3, v34

    .end local v34    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v1, "_tmpId":Ljava/lang/String;
    .local v3, "_tmpWorkerClassName":Ljava/lang/String;
    .local v33, "_tmp_5":[B
    .local v48, "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    invoke-direct {v2, v1, v3}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v2, "_item_1":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-interface {v9, v10}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 583
    .local v34, "_tmp_6":I
    move-object/from16 v49, v1

    .end local v1    # "_tmpId":Ljava/lang/String;
    .local v49, "_tmpId":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 584
    invoke-interface {v9, v12}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 586
    invoke-interface {v9, v13}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 587
    .local v1, "_tmp_7":[B
    move-object/from16 v50, v3

    .end local v3    # "_tmpWorkerClassName":Ljava/lang/String;
    .local v50, "_tmpWorkerClassName":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 589
    invoke-interface {v9, v14}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 590
    .local v3, "_tmp_8":[B
    move-object/from16 v55, v1

    .end local v1    # "_tmp_7":[B
    .local v55, "_tmp_7":[B
    invoke-static {v3}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 591
    move-object/from16 v56, v3

    move/from16 v1, v30

    move/from16 v30, v4

    .end local v3    # "_tmp_8":[B
    .end local v4    # "_tmpMRequiresBatteryNotLow":Z
    .local v1, "_cursorIndexOfInitialDelay":I
    .local v30, "_tmpMRequiresBatteryNotLow":Z
    .local v56, "_tmp_8":[B
    invoke-interface {v9, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 592
    move/from16 v3, v29

    move/from16 v29, v5

    .end local v5    # "_tmpMRequiresDeviceIdle":Z
    .local v3, "_cursorIndexOfIntervalDuration":I
    .local v29, "_tmpMRequiresDeviceIdle":Z
    invoke-interface {v9, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 593
    move/from16 v4, v28

    move/from16 v28, v6

    .end local v6    # "_tmpMRequiresCharging":Z
    .local v4, "_cursorIndexOfFlexDuration":I
    .local v28, "_tmpMRequiresCharging":Z
    invoke-interface {v9, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 594
    move/from16 v5, v27

    .end local v27    # "_cursorIndexOfRunAttemptCount":I
    .local v5, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v9, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 596
    move/from16 v6, v26

    .end local v26    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v9, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 597
    .local v26, "_tmp_9":I
    move/from16 v27, v1

    .end local v1    # "_cursorIndexOfInitialDelay":I
    .local v27, "_cursorIndexOfInitialDelay":I
    invoke-static/range {v26 .. v26}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Lccsanandroidx/work/BackoffPolicy;

    move-result-object v1

    iput-object v1, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 598
    move/from16 v57, v4

    move/from16 v1, v25

    move/from16 v25, v3

    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .local v1, "_cursorIndexOfBackoffDelayDuration":I
    .local v25, "_cursorIndexOfIntervalDuration":I
    .local v57, "_cursorIndexOfFlexDuration":I
    invoke-interface {v9, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 599
    move/from16 v3, v24

    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .local v3, "_cursorIndexOfPeriodStartTime":I
    .local v24, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v9, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 600
    move/from16 v4, v23

    move/from16 v23, v6

    .end local v6    # "_cursorIndexOfBackoffPolicy":I
    .local v4, "_cursorIndexOfMinimumRetentionDuration":I
    .local v23, "_cursorIndexOfBackoffPolicy":I
    invoke-interface {v9, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 601
    move v6, v3

    move/from16 v5, v22

    move/from16 v22, v4

    .end local v3    # "_cursorIndexOfPeriodStartTime":I
    .end local v4    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    .local v6, "_cursorIndexOfPeriodStartTime":I
    .local v22, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v9, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 602
    iput-object v0, v2, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 603
    aput-object v2, v15, v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 604
    nop

    .end local v0    # "_tmpConstraints":Lccsanandroidx/work/Constraints;
    .end local v2    # "_item_1":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v26    # "_tmp_9":I
    .end local v28    # "_tmpMRequiresCharging":Z
    .end local v29    # "_tmpMRequiresDeviceIdle":Z
    .end local v30    # "_tmpMRequiresBatteryNotLow":Z
    .end local v32    # "_tmp":I
    .end local v33    # "_tmp_5":[B
    .end local v34    # "_tmp_6":I
    .end local v37    # "_tmp_1":I
    .end local v39    # "_tmpMRequiredNetworkType":Lccsanandroidx/work/NetworkType;
    .end local v40    # "_tmp_2":I
    .end local v42    # "_tmp_3":I
    .end local v44    # "_tmp_4":I
    .end local v46    # "_tmpMRequiresStorageNotLow":Z
    .end local v48    # "_tmpMContentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    .end local v49    # "_tmpId":Ljava/lang/String;
    .end local v50    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v51    # "_tmpMTriggerContentUpdateDelay":J
    .end local v53    # "_tmpMTriggerMaxContentDelay":J
    .end local v55    # "_tmp_7":[B
    .end local v56    # "_tmp_8":[B
    add-int/lit8 v31, v31, 0x1

    .line 605
    move/from16 v26, v23

    move/from16 v29, v25

    move/from16 v30, v27

    move/from16 v0, v36

    move/from16 v3, v38

    move/from16 v4, v43

    move/from16 v2, v45

    move/from16 v28, v57

    move/from16 v25, v1

    move/from16 v23, v22

    move/from16 v27, v24

    move/from16 v1, v47

    move/from16 v22, v5

    move/from16 v24, v6

    move/from16 v6, v35

    move/from16 v5, v41

    goto/16 :goto_2

    .line 606
    .end local v35    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v36    # "_cursorIndexOfId":I
    .end local v38    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v41    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v43    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v45    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v47    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v57    # "_cursorIndexOfFlexDuration":I
    .local v0, "_cursorIndexOfId":I
    .local v1, "_cursorIndexOfMTriggerMaxContentDelay":I
    .local v2, "_cursorIndexOfMTriggerContentUpdateDelay":I
    .local v3, "_cursorIndexOfMRequiresStorageNotLow":I
    .local v4, "_cursorIndexOfMRequiresBatteryNotLow":I
    .local v5, "_cursorIndexOfMRequiresDeviceIdle":I
    .local v6, "_cursorIndexOfMRequiredNetworkType":I
    .local v22, "_cursorIndexOfScheduleRequestedAt":I
    .local v23, "_cursorIndexOfMinimumRetentionDuration":I
    .local v24, "_cursorIndexOfPeriodStartTime":I
    .local v25, "_cursorIndexOfBackoffDelayDuration":I
    .local v26, "_cursorIndexOfBackoffPolicy":I
    .local v27, "_cursorIndexOfRunAttemptCount":I
    .local v28, "_cursorIndexOfFlexDuration":I
    .local v29, "_cursorIndexOfIntervalDuration":I
    .local v30, "_cursorIndexOfInitialDelay":I
    :cond_6
    nop

    .line 608
    invoke-interface {v9}, Lccsanandroid/database/Cursor;->close()V

    .line 609
    invoke-virtual/range {v21 .. v21}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 606
    return-object v15

    .line 608
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfMTriggerMaxContentDelay":I
    .end local v2    # "_cursorIndexOfMTriggerContentUpdateDelay":I
    .end local v3    # "_cursorIndexOfMRequiresStorageNotLow":I
    .end local v4    # "_cursorIndexOfMRequiresBatteryNotLow":I
    .end local v5    # "_cursorIndexOfMRequiresDeviceIdle":I
    .end local v6    # "_cursorIndexOfMRequiredNetworkType":I
    .end local v7    # "_cursorIndexOfMContentUriTriggers":I
    .end local v8    # "_cursorIndexOfMRequiresCharging":I
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfWorkerClassName":I
    .end local v12    # "_cursorIndexOfInputMergerClassName":I
    .end local v13    # "_cursorIndexOfInput":I
    .end local v14    # "_cursorIndexOfOutput":I
    .end local v15    # "_result":[Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v22    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v23    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v24    # "_cursorIndexOfPeriodStartTime":I
    .end local v25    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v26    # "_cursorIndexOfBackoffPolicy":I
    .end local v27    # "_cursorIndexOfRunAttemptCount":I
    .end local v28    # "_cursorIndexOfFlexDuration":I
    .end local v29    # "_cursorIndexOfIntervalDuration":I
    .end local v30    # "_cursorIndexOfInitialDelay":I
    .end local v31    # "_index":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v6, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v6

    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v8, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v5, "_argCount":I
    .restart local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_3
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v4, "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v3, "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_5
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    goto :goto_7

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    :goto_7
    invoke-interface {v9}, Lccsanandroid/database/Cursor;->close()V

    .line 609
    invoke-virtual/range {v21 .. v21}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 610
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 14
    .param p1, "id"    # Ljava/lang/String;

    .line 695
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    .line 696
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 697
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 698
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 699
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 701
    :cond_0
    invoke-virtual {v1, v3, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 703
    :goto_0
    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 704
    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 706
    :try_start_0
    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v4, v1, v2}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 708
    .local v2, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    const-string v4, "id"

    invoke-static {v2, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 709
    .local v4, "_cursorIndexOfId":I
    const-string/jumbo v5, "state"

    invoke-static {v2, v5}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 710
    .local v5, "_cursorIndexOfState":I
    const-string v6, "output"

    invoke-static {v2, v6}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 711
    .local v6, "_cursorIndexOfOutput":I
    const-string/jumbo v7, "run_attempt_count"

    invoke-static {v2, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 712
    .local v7, "_cursorIndexOfRunAttemptCount":I
    new-instance v8, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v8}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 713
    .local v8, "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 714
    invoke-interface {v2, v4}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 715
    invoke-interface {v2, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 716
    .local v9, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 717
    .local v10, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v10, :cond_2

    .line 718
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v11

    .line 719
    invoke-virtual {v8, v9, v10}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .end local v9    # "_tmpKey":Ljava/lang/String;
    .end local v10    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 723
    :cond_3
    const/4 v9, -0x1

    invoke-interface {v2, v9}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 724
    invoke-direct {p0, v8}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    .line 726
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 727
    const/4 v9, 0x0

    .line 728
    .local v9, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2, v4}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 729
    invoke-interface {v2, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 730
    .local v10, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    move-object v9, v11

    .line 732
    .end local v10    # "_tmpKey_1":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    .line 733
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 735
    :cond_5
    new-instance v10, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v10}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 736
    .local v10, "_result":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v2, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 738
    invoke-interface {v2, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 739
    .local v11, "_tmp":I
    invoke-static {v11}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v12

    iput-object v12, v10, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 741
    invoke-interface {v2, v6}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 742
    .local v12, "_tmp_1":[B
    invoke-static {v12}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v13

    iput-object v13, v10, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    .line 743
    invoke-interface {v2, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v10, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 744
    iput-object v9, v10, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 745
    .end local v9    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "_tmp":I
    .end local v12    # "_tmp_1":[B
    goto :goto_2

    .line 746
    .end local v10    # "_result":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :cond_6
    const/4 v9, 0x0

    move-object v10, v9

    .line 748
    .restart local v10    # "_result":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :goto_2
    iget-object v9, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v9}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    nop

    .line 751
    :try_start_2
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 752
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 755
    iget-object v9, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v9}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 749
    return-object v10

    .line 751
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfState":I
    .end local v6    # "_cursorIndexOfOutput":I
    .end local v7    # "_cursorIndexOfRunAttemptCount":I
    .end local v8    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "_result":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 752
    invoke-virtual {v1}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 753
    nop

    .end local v0    # "_sql":Ljava/lang/String;
    .end local v1    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v3    # "_argIndex":I
    .end local p1    # "id":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 755
    .end local v2    # "_cursor":Lccsanandroid/database/Cursor;
    .restart local v0    # "_sql":Ljava/lang/String;
    .restart local v1    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_argIndex":I
    .restart local p1    # "id":Ljava/lang/String;
    :catchall_1
    move-exception v2

    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 756
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 761
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    invoke-static {}, Lccsanandroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 762
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 764
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Lccsanandroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 765
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 767
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 768
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 769
    .local v6, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 770
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    .local v0, "_item":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 772
    invoke-virtual {v6, v8}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 774
    :cond_0
    invoke-virtual {v6, v8, v0}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 776
    :goto_1
    nop

    .end local v0    # "_item":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 777
    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 779
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 781
    :try_start_0
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    .line 783
    .local v7, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v7, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 784
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 785
    .local v9, "_cursorIndexOfState":I
    const-string v10, "output"

    invoke-static {v7, v10}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 786
    .local v10, "_cursorIndexOfOutput":I
    const-string/jumbo v11, "run_attempt_count"

    invoke-static {v7, v11}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 787
    .local v11, "_cursorIndexOfRunAttemptCount":I
    new-instance v12, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v12}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 788
    .local v12, "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v13, :cond_4

    .line 789
    :try_start_2
    invoke-interface {v7, v0}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 790
    invoke-interface {v7, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 791
    .local v13, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 792
    .local v14, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_3

    .line 793
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v15

    .line 794
    invoke-virtual {v12, v13, v14}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    .end local v13    # "_tmpKey":Ljava/lang/String;
    .end local v14    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    goto :goto_2

    .line 826
    .end local v0    # "_cursorIndexOfId":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 798
    .restart local v0    # "_cursorIndexOfId":I
    .restart local v9    # "_cursorIndexOfState":I
    .restart local v10    # "_cursorIndexOfOutput":I
    .restart local v11    # "_cursorIndexOfRunAttemptCount":I
    .restart local v12    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_4
    const/4 v13, -0x1

    :try_start_3
    invoke-interface {v7, v13}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 799
    invoke-direct {v1, v12}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    .line 800
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v7}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 801
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 803
    const/4 v14, 0x0

    .line 804
    .local v14, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7, v0}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v15, :cond_5

    .line 805
    :try_start_4
    invoke-interface {v7, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 806
    .local v15, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v12, v15}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v14, v16

    .line 808
    .end local v15    # "_tmpKey_1":Ljava/lang/String;
    :cond_5
    if-nez v14, :cond_6

    .line 809
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v15

    .line 811
    :cond_6
    :try_start_5
    new-instance v15, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v15}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 812
    .local v15, "_item_1":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v16, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v16, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_6
    invoke-interface {v7, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 814
    invoke-interface {v7, v9}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 815
    .local v2, "_tmp":I
    move/from16 v17, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v17, "_cursorIndexOfId":I
    invoke-static {v2}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v0

    iput-object v0, v15, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 817
    invoke-interface {v7, v10}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 818
    .local v0, "_tmp_1":[B
    move/from16 v18, v2

    .end local v2    # "_tmp":I
    .local v18, "_tmp":I
    invoke-static {v0}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v2

    iput-object v2, v15, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    .line 819
    invoke-interface {v7, v11}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 820
    iput-object v14, v15, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 821
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    move-object/from16 v2, v16

    move/from16 v0, v17

    .end local v0    # "_tmp_1":[B
    .end local v14    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "_item_1":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v18    # "_tmp":I
    goto :goto_3

    .line 823
    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    move/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "_cursorIndexOfId":I
    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_cursorIndexOfId":I
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 824
    nop

    .line 826
    :try_start_7
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->close()V

    .line 827
    invoke-virtual {v6}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 830
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 824
    return-object v13

    .line 826
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfRunAttemptCount":I
    .end local v12    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v17    # "_cursorIndexOfId":I
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_4
    :try_start_8
    invoke-interface {v7}, Lccsanandroid/database/Cursor;->close()V

    .line 827
    invoke-virtual {v6}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 828
    nop

    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 830
    .end local v7    # "_cursor":Lccsanandroid/database/Cursor;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    goto :goto_5

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_5
    iget-object v2, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 831
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1059
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1060
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1061
    .local v5, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1062
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 1063
    invoke-virtual {v5, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {v5, v6, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1067
    :goto_0
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1068
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 1070
    :try_start_0
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v0, v5, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 1072
    .local v4, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v4, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1073
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v7, "state"

    invoke-static {v4, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1074
    .local v7, "_cursorIndexOfState":I
    const-string v8, "output"

    invoke-static {v4, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1075
    .local v8, "_cursorIndexOfOutput":I
    const-string/jumbo v9, "run_attempt_count"

    invoke-static {v4, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1076
    .local v9, "_cursorIndexOfRunAttemptCount":I
    new-instance v10, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v10}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 1077
    .local v10, "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1078
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1079
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1080
    .local v11, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v10, v11}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1081
    .local v12, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v12, :cond_2

    .line 1082
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 1083
    invoke-virtual {v10, v11, v12}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    .end local v11    # "_tmpKey":Ljava/lang/String;
    .end local v12    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 1087
    :cond_3
    const/4 v11, -0x1

    invoke-interface {v4, v11}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 1088
    invoke-direct {v1, v10}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    .line 1089
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1090
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_2
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1092
    const/4 v12, 0x0

    .line 1093
    .local v12, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1094
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1095
    .local v13, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v12, v14

    .line 1097
    .end local v13    # "_tmpKey_1":Ljava/lang/String;
    :cond_4
    if-nez v12, :cond_5

    .line 1098
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 1100
    :cond_5
    new-instance v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v13}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 1101
    .local v13, "_item":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1103
    invoke-interface {v4, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1104
    .local v14, "_tmp":I
    invoke-static {v14}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v15

    iput-object v15, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 1106
    invoke-interface {v4, v8}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 1107
    .local v15, "_tmp_1":[B
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v16, "_cursorIndexOfId":I
    invoke-static {v15}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v0

    iput-object v0, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    .line 1108
    invoke-interface {v4, v9}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1109
    iput-object v12, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1110
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    move/from16 v0, v16

    .end local v12    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "_item":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v14    # "_tmp":I
    .end local v15    # "_tmp_1":[B
    goto :goto_2

    .line 1112
    .end local v16    # "_cursorIndexOfId":I
    .restart local v0    # "_cursorIndexOfId":I
    :cond_6
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v16    # "_cursorIndexOfId":I
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    nop

    .line 1115
    :try_start_2
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 1116
    invoke-virtual {v5}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1119
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 1113
    return-object v11

    .line 1115
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_cursorIndexOfOutput":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v16    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 1116
    invoke-virtual {v5}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1117
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1119
    .end local v4    # "_cursor":Lccsanandroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    iget-object v4, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 1120
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 919
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 920
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 921
    .local v5, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 922
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 923
    invoke-virtual {v5, v6}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {v5, v6, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 927
    :goto_0
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 928
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 930
    :try_start_0
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-static {v0, v5, v4}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 932
    .local v4, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    const-string v0, "id"

    invoke-static {v4, v0}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 933
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v7, "state"

    invoke-static {v4, v7}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 934
    .local v7, "_cursorIndexOfState":I
    const-string v8, "output"

    invoke-static {v4, v8}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 935
    .local v8, "_cursorIndexOfOutput":I
    const-string/jumbo v9, "run_attempt_count"

    invoke-static {v4, v9}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 936
    .local v9, "_cursorIndexOfRunAttemptCount":I
    new-instance v10, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v10}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 937
    .local v10, "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 938
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 939
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 940
    .local v11, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v10, v11}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 941
    .local v12, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v12, :cond_2

    .line 942
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 943
    invoke-virtual {v10, v11, v12}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .end local v11    # "_tmpKey":Ljava/lang/String;
    .end local v12    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 947
    :cond_3
    const/4 v11, -0x1

    invoke-interface {v4, v11}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 948
    invoke-direct {v1, v10}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Lccsanandroidx/collection/ArrayMap;)V

    .line 949
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 950
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_2
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 952
    const/4 v12, 0x0

    .line 953
    .local v12, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 954
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 955
    .local v13, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v12, v14

    .line 957
    .end local v13    # "_tmpKey_1":Ljava/lang/String;
    :cond_4
    if-nez v12, :cond_5

    .line 958
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 960
    :cond_5
    new-instance v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v13}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 961
    .local v13, "_item":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 963
    invoke-interface {v4, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 964
    .local v14, "_tmp":I
    invoke-static {v14}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v15

    iput-object v15, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 966
    invoke-interface {v4, v8}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 967
    .local v15, "_tmp_1":[B
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v16, "_cursorIndexOfId":I
    invoke-static {v15}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v0

    iput-object v0, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    .line 968
    invoke-interface {v4, v9}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 969
    iput-object v12, v13, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 970
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    move/from16 v0, v16

    .end local v12    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "_item":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v14    # "_tmp":I
    .end local v15    # "_tmp_1":[B
    goto :goto_2

    .line 972
    .end local v16    # "_cursorIndexOfId":I
    .restart local v0    # "_cursorIndexOfId":I
    :cond_6
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v16    # "_cursorIndexOfId":I
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    nop

    .line 975
    :try_start_2
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 976
    invoke-virtual {v5}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 979
    iget-object v0, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 973
    return-object v11

    .line 975
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_cursorIndexOfOutput":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v16    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 976
    invoke-virtual {v5}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 977
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "tag":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 979
    .end local v4    # "_cursor":Lccsanandroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "tag":Ljava/lang/String;
    :catchall_1
    move-exception v0

    iget-object v4, v1, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 980
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Lccsanandroidx/lifecycle/LiveData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 836
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccsanandroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 837
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 839
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Lccsanandroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 840
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, "_sql":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x0

    .line 843
    .local v3, "_argCount":I
    invoke-static {v2, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 844
    .local v4, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 845
    .local v5, "_argIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 846
    .local v7, "_item":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 847
    invoke-virtual {v4, v5}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 849
    :cond_0
    invoke-virtual {v4, v5, v7}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 851
    :goto_1
    nop

    .end local v7    # "_item":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 852
    goto :goto_0

    .line 853
    :cond_1
    iget-object v6, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v6}, Lccsanandroidx/room/RoomDatabase;->getInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "WorkTag"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string/jumbo v8, "workspec"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$10;

    invoke-direct {v8, p0, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v6, v7, v9, v8}, Lccsanandroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v6

    return-object v6
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1125
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1126
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1127
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 1128
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 1129
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {v1, v3, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1133
    :goto_0
    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->getInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "WorkTag"

    aput-object v7, v5, v6

    const-string/jumbo v6, "workspec"

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string/jumbo v7, "workname"

    aput-object v7, v5, v6

    new-instance v6, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$12;

    invoke-direct {v6, p0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Lccsanandroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 985
    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 986
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Lccsanandroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 987
    .local v1, "_statement":Lccsanandroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 988
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 989
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {v1, v3, p1}, Lccsanandroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 993
    :goto_0
    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->getInvalidationTracker()Lccsanandroidx/room/InvalidationTracker;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "WorkTag"

    aput-object v7, v5, v6

    const-string/jumbo v6, "workspec"

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string/jumbo v7, "worktag"

    aput-object v7, v5, v6

    new-instance v6, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;

    invoke-direct {v6, p0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Lccsanandroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 285
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 286
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 287
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 288
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 292
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 294
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 295
    .local v2, "_result":I
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    nop

    .line 298
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 299
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 296
    return v2

    .line 298
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 299
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 300
    throw v2
.end method

.method public insertWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 2
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 202
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 203
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 205
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Lccsanandroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 209
    nop

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 209
    throw v0
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 326
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 327
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 328
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 329
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 330
    const/4 v1, 0x2

    .line 331
    if-nez p1, :cond_0

    .line 332
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 336
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 338
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 339
    .local v2, "_result":I
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    nop

    .line 342
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 343
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 340
    return v2

    .line 342
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 343
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 344
    throw v2
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 3

    .line 364
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 365
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 366
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 368
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 369
    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 372
    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 373
    nop

    .line 374
    return-void

    .line 371
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 372
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 373
    throw v1
.end method

.method public resetScheduledState()I
    .locals 3

    .line 349
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 350
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 351
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 353
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 354
    .local v1, "_result":I
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    nop

    .line 357
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 358
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 355
    return v1

    .line 357
    .end local v1    # "_result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 358
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 359
    throw v1
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 306
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 307
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 308
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 309
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 313
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 315
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 316
    .local v2, "_result":I
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    nop

    .line 319
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 320
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 317
    return v2

    .line 319
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 320
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 321
    throw v2
.end method

.method public setOutput(Ljava/lang/String;Lccsanandroidx/work/Data;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "output"    # Lccsanandroidx/work/Data;

    .line 234
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 235
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 236
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 238
    .local v1, "_argIndex":I
    invoke-static {p2}, Lccsanandroidx/work/Data;->toByteArray(Lccsanandroidx/work/Data;)[B

    move-result-object v2

    .line 239
    .local v2, "_tmp":[B
    if-nez v2, :cond_0

    .line 240
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v0, v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 244
    :goto_0
    const/4 v1, 0x2

    .line 245
    if-nez p1, :cond_1

    .line 246
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 248
    :cond_1
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 250
    :goto_1
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 252
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 253
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 257
    nop

    .line 258
    return-void

    .line 255
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v4}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 257
    throw v3
.end method

.method public setPeriodStartTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "periodStartTime"    # J

    .line 262
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 263
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Lccsanandroidx/room/SharedSQLiteStatement;->acquire()Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 264
    .local v0, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 265
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 266
    const/4 v1, 0x2

    .line 267
    if-nez p1, :cond_0

    .line 268
    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {v0, v1, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 272
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 274
    :try_start_0
    invoke-interface {v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 275
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v2}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 278
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 279
    nop

    .line 280
    return-void

    .line 277
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 278
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Lccsanandroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Lccsanandroidx/room/SharedSQLiteStatement;->release(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 279
    throw v2
.end method

.method public varargs setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I
    .locals 9
    .param p1, "state"    # Lccsanandroidx/work/WorkInfo$State;
    .param p2, "ids"    # [Ljava/lang/String;

    .line 1622
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1623
    invoke-static {}, Lccsanandroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1624
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE workspec SET state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v1, " WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    array-length v1, p2

    .line 1628
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Lccsanandroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1629
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1631
    .local v2, "_sql":Ljava/lang/String;
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v3, v2}, Lccsanandroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v3

    .line 1632
    .local v3, "_stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v4, 0x1

    .line 1634
    .local v4, "_argIndex":I
    invoke-static {p1}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->stateToInt(Lccsanandroidx/work/WorkInfo$State;)I

    move-result v5

    .line 1635
    .local v5, "_tmp":I
    int-to-long v6, v5

    invoke-interface {v3, v4, v6, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 1636
    const/4 v4, 0x2

    .line 1637
    array-length v6, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, p2, v7

    .line 1638
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1639
    invoke-interface {v3, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 1641
    :cond_0
    invoke-interface {v3, v4, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1643
    :goto_1
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 1637
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1645
    :cond_1
    iget-object v6, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v6}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 1647
    :try_start_0
    invoke-interface {v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v6

    .line 1648
    .local v6, "_result":I
    iget-object v7, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v7}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    nop

    .line 1651
    iget-object v7, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v7}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 1649
    return v6

    .line 1651
    .end local v6    # "_result":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->__db:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v7}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 1652
    goto :goto_3

    :goto_2
    throw v6

    :goto_3
    goto :goto_2
.end method
