.class public final Lccsansan/dc/getDownloadingList;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static unifiedDownload:Lccsansan/dc/getDownloadingList;


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

.field private addDownloadListener:Lccsansan/dc/removeDownloadListener;

.field private getDownloadingList:Lccsansan/dc/addDownloadListener;

.field private removeDownloadListener:Lccsansan/dc/deleteDownItem;


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "mads_ad.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lccsansan/dc/getDownloadingList;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 4
    new-instance p1, Lccsansan/dc/deleteDownItem;

    invoke-direct {p1}, Lccsansan/dc/deleteDownItem;-><init>()V

    iput-object p1, p0, Lccsansan/dc/getDownloadingList;->removeDownloadListener:Lccsansan/dc/deleteDownItem;

    .line 5
    new-instance p1, Lccsansan/dc/removeDownloadListener;

    invoke-direct {p1}, Lccsansan/dc/removeDownloadListener;-><init>()V

    iput-object p1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    .line 6
    new-instance p1, Lccsansan/dc/addDownloadListener;

    invoke-direct {p1}, Lccsansan/dc/addDownloadListener;-><init>()V

    iput-object p1, p0, Lccsansan/dc/getDownloadingList;->getDownloadingList:Lccsansan/dc/addDownloadListener;

    return-void
.end method

.method public static declared-synchronized getDownloadingList()V
    .locals 2

    const-class v0, Lccsansan/dc/getDownloadingList;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsansan/dc/getDownloadingList;->unifiedDownload:Lccsansan/dc/getDownloadingList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lccsansan/dc/getDownloadingList;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static removeDownloadListener()Lccsansan/dc/getDownloadingList;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/dc/getDownloadingList;->unifiedDownload:Lccsansan/dc/getDownloadingList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/dc/getDownloadingList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/dc/getDownloadingList;->unifiedDownload:Lccsansan/dc/getDownloadingList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/dc/getDownloadingList;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/dc/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/dc/getDownloadingList;->unifiedDownload:Lccsansan/dc/getDownloadingList;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/dc/getDownloadingList;->unifiedDownload:Lccsansan/dc/getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized IncentiveDownloadUtils(Z)I
    .locals 7

    monitor-enter p0

    .line 114
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 115
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    invoke-virtual {p0}, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/removeDownloadListener;

    .line 120
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getDownloadedCount()Z

    move-result v4

    if-ne v4, p1, :cond_0

    .line 121
    iget-object v4, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, v3, v6}, Lccsansan/dc/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "DB.Mads.Database"

    const-string v2, "clearMadsAdCache"

    .line 131
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v0

    :goto_1
    :try_start_4
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 134
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 37
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/dc/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DB.Mads.Database"

    const-string v2, "listCompletedMadsAds Ad error"

    .line 39
    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 42
    :goto_0
    throw v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/dt/getDownloadingRecordByUrl;
    .locals 2

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 111
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->getDownloadingList:Lccsansan/dc/addDownloadListener;

    invoke-virtual {v1, p1, v0}, Lccsansan/dc/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsansan/dt/getDownloadingRecordByUrl;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 113
    const-string v0, "DB.Mads.Database"

    const-string v1, "listAllNative Ad error"

    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 107
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, p1, v0}, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 107
    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "DB.Mads.Database"

    const-string v1, "updateStatus error"

    .line 109
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized IncentiveDownloadUtils(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 51
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 55
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 56
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/util/Pair;

    .line 61
    iget-object v4, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v5, v3, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lccsansan/dt/removeDownloadListener;

    iget-object v3, v3, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, v3, v6}, Lccsansan/dc/removeDownloadListener;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v1, "DB.Mads.Database"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert Or UpdateMadsAd success count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", AdDataPairs total count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 71
    :goto_1
    :try_start_5
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_6
    const-string v1, "DB.Mads.Database"

    const-string v2, "insertNative error"

    .line 72
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 75
    :try_start_7
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return v0

    :goto_2
    :try_start_8
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 76
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception p1

    :try_start_9
    const-string v1, "DB.Mads.Database"

    const-string v2, "insertNative error"

    .line 78
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :goto_3
    monitor-exit p0

    return v0

    .line 50
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public addDownloadListener()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 25
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/dc/removeDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    const-string v1, "DB.Mads.Database"

    const-string v2, "getAllMadsAds Ad error"

    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 20
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, p1, v0}, Lccsansan/dc/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    const-string v0, "DB.Mads.Database"

    const-string v1, "listAllNative Ad error"

    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized addDownloadListener(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 12
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->removeDownloadListener:Lccsansan/dc/deleteDownItem;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lccsansan/dc/deleteDownItem;->getDownloadingList(ILccsanandroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 20
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 19
    :goto_1
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 22
    :goto_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 23
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7
    :catchall_1
    move-exception p1

    goto :goto_4

    .line 23
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 25
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    .line 7
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4
    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DB.Mads.Database"

    .line 7
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 0
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteDownItem(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    .line 6
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 15
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 0
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 15
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 17
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 0
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteDownItem(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dt/getDownloadingRecordByUrl;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 15
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 19
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/getDownloadingRecordByUrl;

    .line 23
    iget-object v4, p0, Lccsansan/dc/getDownloadingList;->getDownloadingList:Lccsansan/dc/addDownloadListener;

    iget-object v5, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v5}, Lccsansan/dc/addDownloadListener;->addDownloadListener(Lccsansan/dt/getDownloadingRecordByUrl;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v1, "DB.Mads.Database"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert or update cache ads play queue success count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  total count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 33
    :goto_1
    :try_start_5
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_6
    const-string v1, "DB.Mads.Database"

    const-string v2, "insertNative error"

    .line 34
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    :try_start_7
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return v0

    :goto_2
    :try_start_8
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 38
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception p1

    :try_start_9
    const-string v1, "DB.Mads.Database"

    const-string v2, "insertNative error"

    .line 40
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :goto_3
    monitor-exit p0

    return v0

    .line 14
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized getDownloadedRecordByUrl(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, p1, v0}, Lccsansan/dc/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 7
    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 7
    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 9
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 0
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public getDownloadingList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsansan/m/deleteDownList;",
            ">;"
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 26
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->removeDownloadListener:Lccsansan/dc/deleteDownItem;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lccsansan/dc/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "DB.Mads.Database"

    const-string v1, "list Valid Track urls error"

    .line 28
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 31
    :goto_0
    throw p1
.end method

.method public getDownloadingList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 27
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, v0, p1}, Lccsansan/dc/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "DB.Mads.Database"

    const-string v1, "listRelevantPosIds Ad error"

    .line 29
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 32
    :goto_0
    throw p1
.end method

.method public declared-synchronized getDownloadingList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->removeDownloadListener:Lccsansan/dc/deleteDownItem;

    iget-object v2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lccsansan/dc/deleteDownItem;->getDownloadingList(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 13
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 12
    :goto_1
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 15
    :goto_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 0
    :catchall_1
    move-exception p1

    goto :goto_4

    .line 16
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 18
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    .line 0
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public getDownloadingList(Ljava/lang/String;Lccsansan/dt/getDownloadingRecordByUrl;)Z
    .locals 2

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 140
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->getDownloadingList:Lccsansan/dc/addDownloadListener;

    invoke-virtual {v1, p1, p2, v0}, Lccsansan/dc/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/dt/getDownloadingRecordByUrl;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 142
    const-string p2, "DB.Mads.Database"

    const-string v0, "listAllNative Ad error"

    invoke-static {p2, v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 6
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->removeDownloadListener:Lccsansan/dc/deleteDownItem;

    iget-object v2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, v2}, Lccsansan/dc/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_1
    :try_start_3
    iget-object p2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "DB.Mads.Database"

    const-string v1, "insertTrack Urls error"

    .line 18
    invoke-static {p2, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    :goto_0
    :try_start_6
    iget-object p2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 22
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception p1

    :try_start_7
    const-string p2, "DB.Mads.Database"

    const-string v1, "insertTrack Urls error"

    .line 24
    invoke-static {p2, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    .line 0
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDownloadingRecordByUrl(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 20
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    .line 24
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 33
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 33
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 35
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 18
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1
    const-string v0, "DB.Mads.Database"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    :try_start_0
    sget-object v3, Lccsansan/dc/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    sget-object v3, Lccsansan/dc/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    sget-object v3, Lccsansan/dc/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database create error  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MadsDatabase onCreate  consuming : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    :try_start_0
    const-string p2, "drop table if exists offline_urls"

    .line 1
    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "drop table if exists mads_ad"

    .line 2
    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lccsansan/dc/getDownloadingList;->onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Database upgrade ver  : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DB.Mads.Database"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 4
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, p1, v0}, Lccsansan/dc/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "DB.Mads.Database"

    const-string v1, "listAllNative Ad error"

    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized removeDownloadListener(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 19
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->removeDownloadListener:Lccsansan/dc/deleteDownItem;

    iget-object v2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lccsansan/dc/deleteDownItem;->unifiedDownload(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 30
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 29
    :goto_1
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 32
    :goto_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 33
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    :catchall_1
    move-exception p1

    goto :goto_4

    .line 33
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 35
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    .line 17
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    .line 6
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 15
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 0
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 15
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 17
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 0
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public unifiedDownload()V
    .locals 3

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 136
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->getDownloadingList:Lccsansan/dc/addDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/dc/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    const-string v1, "DB.Mads.Database"

    const-string v2, "clearAdsPlayQueue  Ad error"

    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unifiedDownload(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 13
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 12
    :goto_1
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 15
    :goto_2
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 0
    :catchall_1
    move-exception p1

    goto :goto_4

    .line 16
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove removeMadsAds error"

    .line 18
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    .line 0
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized unifiedDownload(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 32
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 34
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 35
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, v2}, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 45
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 44
    :goto_1
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 47
    :goto_2
    iget-object p2, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31
    :catchall_1
    move-exception p1

    goto :goto_4

    .line 48
    :catch_1
    move-exception p1

    :try_start_5
    const-string p2, "DB.Mads.Database"

    const-string v0, "remove ad error"

    .line 50
    invoke-static {p2, v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    .line 31
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized unifiedDownload(Lccsanorg/json/JSONArray;)V
    .locals 5

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 80
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 83
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 84
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad_id"

    .line 85
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    .line 86
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-object v3, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    iget-object v4, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1, v4}, Lccsansan/dc/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 97
    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    iget-object p1, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 96
    :goto_2
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    .line 99
    :goto_3
    iget-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    goto :goto_5

    .line 100
    :catch_1
    move-exception p1

    :try_start_5
    const-string v0, "DB.Mads.Database"

    const-string v1, "remove NativeAd error"

    .line 102
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    monitor-exit p0

    return-void

    .line 78
    :goto_5
    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public declared-synchronized unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 12
    iget-object v1, p0, Lccsansan/dc/getDownloadingList;->addDownloadListener:Lccsansan/dc/removeDownloadListener;

    invoke-virtual {v1, p1, v0}, Lccsansan/dc/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "DB.Mads.Database"

    const-string v1, "update NativeShowCount error"

    .line 14
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 7
    :goto_1
    monitor-exit p0

    throw p1
.end method
