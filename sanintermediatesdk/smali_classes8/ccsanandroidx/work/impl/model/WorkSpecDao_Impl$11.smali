.class Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

.field final synthetic val$_statement:Lccsanandroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    .line 993
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->val$_statement:Lccsanandroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;)Lccsanandroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->beginTransaction()V

    .line 998
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;)Lccsanandroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->val$_statement:Lccsanandroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1000
    .local v0, "_cursor":Lccsanandroid/database/Cursor;
    :try_start_1
    const-string v1, "id"

    invoke-static {v0, v1}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 1001
    .local v1, "_cursorIndexOfId":I
    const-string/jumbo v2, "state"

    invoke-static {v0, v2}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1002
    .local v2, "_cursorIndexOfState":I
    const-string v3, "output"

    invoke-static {v0, v3}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1003
    .local v3, "_cursorIndexOfOutput":I
    const-string/jumbo v4, "run_attempt_count"

    invoke-static {v0, v4}, Lccsanandroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Lccsanandroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1004
    .local v4, "_cursorIndexOfRunAttemptCount":I
    new-instance v5, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v5}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 1005
    .local v5, "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1006
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1007
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1008
    .local v6, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1009
    .local v7, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 1010
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 1011
    invoke-virtual {v5, v6, v7}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .end local v6    # "_tmpKey":Ljava/lang/String;
    .end local v7    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 1015
    :cond_2
    const/4 v6, -0x1

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 1016
    iget-object v6, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v6, v5}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->access$100(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/collection/ArrayMap;)V

    .line 1017
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1018
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1020
    const/4 v7, 0x0

    .line 1021
    .local v7, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1022
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1023
    .local v8, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v7, v9

    .line 1025
    .end local v8    # "_tmpKey_1":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    .line 1026
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 1028
    :cond_4
    new-instance v8, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v8}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 1029
    .local v8, "_item":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1031
    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1032
    .local v9, "_tmp":I
    invoke-static {v9}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->intToState(I)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v10

    iput-object v10, v8, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 1034
    invoke-interface {v0, v3}, Lccsanandroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1035
    .local v10, "_tmp_1":[B
    invoke-static {v10}, Lccsanandroidx/work/Data;->fromByteArray([B)Lccsanandroidx/work/Data;

    move-result-object v11

    iput-object v11, v8, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    .line 1036
    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v8, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1037
    iput-object v7, v8, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1038
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    nop

    .end local v7    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "_item":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v9    # "_tmp":I
    .end local v10    # "_tmp_1":[B
    goto :goto_1

    .line 1040
    :cond_5
    iget-object v7, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v7}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;)Lccsanandroidx/room/RoomDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    nop

    .line 1043
    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1046
    iget-object v7, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v7}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;)Lccsanandroidx/room/RoomDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 1041
    return-object v6

    .line 1043
    .end local v1    # "_cursorIndexOfId":I
    .end local v2    # "_cursorIndexOfState":I
    .end local v3    # "_cursorIndexOfOutput":I
    .end local v4    # "_cursorIndexOfRunAttemptCount":I
    .end local v5    # "_collectionTags":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 1044
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1046
    .end local v0    # "_cursor":Lccsanandroid/database/Cursor;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v1}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;)Lccsanandroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase;->endTransaction()V

    .line 1047
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected finalize()V
    .locals 1

    .line 1052
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$11;->val$_statement:Lccsanandroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomSQLiteQuery;->release()V

    .line 1053
    return-void
.end method
