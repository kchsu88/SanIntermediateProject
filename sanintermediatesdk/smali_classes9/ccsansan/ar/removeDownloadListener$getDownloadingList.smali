.class Lccsansan/ar/removeDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

.field final synthetic addDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/ar/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    iput-object p2, p0, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "succeed_continue"

    const-string v3, "failed_continue"

    const-string v4, ""

    const-string v5, "_"

    const-string v6, "continue"

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ai/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/am/IncentiveDownloadUtils;)V

    .line 4
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ar/getDownloadingList;->removeDownloadListener()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_0

    .line 5
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ar/getDownloadingList;->removeDownloadListener()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 8
    :cond_0
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ar/removeDownloadListener;)Lccsansan/ai/addDownloadListener;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ar/removeDownloadListener;)Lccsansan/ai/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ai/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    new-instance v9, Lccsansan/ar/addDownloadListener;

    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object v10

    invoke-direct {v9, v10}, Lccsansan/ar/addDownloadListener;-><init>(Lccsansan/am/IncentiveDownloadUtils;)V

    .line 10
    iget-object v10, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v10}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v10

    iget-object v11, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v11}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;

    move-result-object v11

    invoke-virtual {v11}, Lccsansan/ar/getDownloadingList;->unifiedDownload()I

    move-result v11

    invoke-virtual {v9, v10, v11, v0}, Lccsansan/ar/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;ILjava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 11
    :try_start_1
    invoke-virtual {v9}, Lccsansan/ar/addDownloadListener;->IncentiveDownloadUtils()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :try_start_2
    invoke-virtual {v9}, Lccsansan/ar/addDownloadListener;->removeDownloadListener()Ljava/lang/Exception;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-virtual {v9}, Lccsansan/ar/addDownloadListener;->getDownloadingList()J

    move-result-wide v16
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, v13, v10, v14}, Lccsansan/ar/getDownloadingList;->addDownloadListener(ZZLjava/lang/Exception;)V

    .line 18
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0, v8}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ar/removeDownloadListener;Z)Z

    .line 21
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_3
    iget-object v2, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    sget-object v3, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONTINUE_UPLOAD:Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-static {v2, v3, v0}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    .line 24
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v12

    iget-object v15, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static/range {v12 .. v17}, Lccsansan/l/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;ZLjava/lang/Exception;Ljava/lang/String;J)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v7, v14

    goto :goto_4

    .line 33
    :catch_0
    move-exception v0

    move v15, v13

    move-object v7, v14

    goto/16 :goto_9

    .line 24
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 33
    :catch_1
    move-exception v0

    move v15, v13

    goto/16 :goto_9

    .line 24
    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    goto :goto_4

    .line 33
    :catch_2
    move-exception v0

    move v15, v13

    const/4 v10, 0x0

    goto :goto_9

    .line 24
    :catchall_3
    move-exception v0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 25
    :goto_4
    iget-object v9, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v9}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;

    move-result-object v9

    invoke-virtual {v9, v13, v10, v7}, Lccsansan/ar/getDownloadingList;->addDownloadListener(ZZLjava/lang/Exception;)V

    .line 26
    iget-object v9, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v9, v8}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ar/removeDownloadListener;Z)Z

    .line 29
    iget-object v8, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    goto :goto_8

    :cond_6
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    move-object v2, v3

    :goto_7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    :goto_8
    iget-object v3, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    sget-object v4, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONTINUE_UPLOAD:Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-static {v3, v4, v2}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    .line 32
    iget-object v2, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v2}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v5, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-wide/16 v8, -0x1

    move v3, v13

    move-object v4, v7

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lccsansan/l/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;ZLjava/lang/Exception;Ljava/lang/String;J)V

    .line 33
    throw v0

    :catch_3
    move-exception v0

    .line 34
    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_9
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, v15, v10, v7}, Lccsansan/ar/getDownloadingList;->addDownloadListener(ZZLjava/lang/Exception;)V

    .line 35
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0, v8}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ar/removeDownloadListener;Z)Z

    .line 38
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    goto :goto_c

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_a

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_b

    goto :goto_b

    :cond_b
    move-object v2, v3

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_c
    iget-object v2, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    sget-object v3, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONTINUE_UPLOAD:Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-static {v2, v3, v0}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    .line 41
    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/ar/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v14

    iget-object v0, v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-wide/16 v18, -0x1

    move-object/from16 v16, v7

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v19}, Lccsansan/l/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;ZLjava/lang/Exception;Ljava/lang/String;J)V

    :goto_d
    return-void
.end method
