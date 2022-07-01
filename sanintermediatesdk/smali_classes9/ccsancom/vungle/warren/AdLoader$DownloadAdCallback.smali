.class Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lccsancom/vungle/warren/AdLoader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;


# direct methods
.method private constructor <init>(Lccsancom/vungle/warren/AdLoader;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p2, "x1"    # Lccsancom/vungle/warren/AdLoader$1;

    .line 1518
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lccsancom/vungle/warren/AdLoader;)V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .locals 8
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "advertisementId"    # Ljava/lang/String;

    .line 1521
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Placement;

    .line 1524
    .local v0, "placement":Lccsancom/vungle/warren/model/Placement;
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 1525
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v4

    .line 1527
    const-string v1, "loaded placement is null: request = %1$s; advertisementId = %2$s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1525
    invoke-static {v3, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1530
    return-void

    .line 1533
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1534
    const/4 v5, 0x0

    goto :goto_0

    .line 1535
    :cond_1
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v5}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v5

    const-class v6, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v5, p2, v6}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Advertisement;

    :goto_0
    nop

    .line 1536
    .local v5, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-nez v5, :cond_2

    .line 1537
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v4

    .line 1538
    const-string v1, "advertisement is null: request = %1$s; advertisementId = %2$s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    invoke-static {v3, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1541
    return-void

    .line 1544
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lccsancom/vungle/warren/model/Advertisement;->setFinishedDownloadingTime(J)V

    .line 1547
    :try_start_0
    iget-object v6, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v6}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v6

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7, v4}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    nop

    .line 1556
    invoke-virtual {p0, p1, v0, v5}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1557
    return-void

    .line 1548
    :catch_0
    move-exception v6

    .line 1549
    .local v6, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    aput-object p1, v7, v4

    aput-object v5, v7, v2

    .line 1550
    const-string v1, "Can\'t save/apply state READY: exception = %1$s;request = %2$s; advertisement = %3$s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {v3, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1554
    return-void
.end method

.method public onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .locals 18
    .param p1, "exception"    # Lccsancom/vungle/warren/error/VungleException;
    .param p2, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p3, "advertisementId"    # Ljava/lang/String;

    .line 1605
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$400(Lccsancom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 1606
    .local v4, "op":Lccsancom/vungle/warren/AdLoader$Operation;
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 1608
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lccsancom/vungle/warren/model/Placement;

    .line 1609
    .local v5, "placement":Lccsancom/vungle/warren/model/Placement;
    if-nez v3, :cond_0

    .line 1610
    const/4 v0, 0x0

    goto :goto_0

    .line 1611
    :cond_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    const-class v6, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v3, v6}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Advertisement;

    :goto_0
    move-object v6, v0

    .line 1613
    .local v6, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    const/4 v0, 0x4

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-nez v5, :cond_3

    .line 1614
    if-eqz v6, :cond_1

    .line 1616
    :try_start_0
    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v9}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10, v0}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    goto :goto_1

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v9, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v9, v7}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    move-object v7, v9

    .end local p1    # "exception":Lccsancom/vungle/warren/error/VungleException;
    .local v7, "exception":Lccsancom/vungle/warren/error/VungleException;
    goto :goto_2

    .line 1622
    .end local v0    # "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v7    # "exception":Lccsancom/vungle/warren/error/VungleException;
    .restart local p1    # "exception":Lccsancom/vungle/warren/error/VungleException;
    :cond_1
    :goto_1
    move-object/from16 v7, p1

    .end local p1    # "exception":Lccsancom/vungle/warren/error/VungleException;
    .restart local v7    # "exception":Lccsancom/vungle/warren/error/VungleException;
    :goto_2
    if-eqz v4, :cond_2

    .line 1623
    iget-object v0, v4, Lccsancom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsancom/vungle/warren/LoadAdCallback;

    .line 1624
    .local v9, "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1625
    .end local v9    # "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    goto :goto_3

    .line 1627
    :cond_2
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0, v2, v8}, Lccsancom/vungle/warren/AdLoader;->access$1600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Z)V

    .line 1628
    return-void

    .line 1631
    .end local v7    # "exception":Lccsancom/vungle/warren/error/VungleException;
    .restart local p1    # "exception":Lccsancom/vungle/warren/error/VungleException;
    :cond_3
    const/4 v9, 0x0

    .line 1632
    .local v9, "canRetry":Z
    const/4 v10, 0x0

    .line 1633
    .local v10, "stopInfinite":Z
    const/4 v11, 0x4

    .line 1635
    .local v11, "state":I
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_4

    .line 1641
    :sswitch_0
    if-eqz v6, :cond_4

    .line 1642
    const/4 v9, 0x1

    .line 1643
    const/4 v11, 0x0

    goto :goto_4

    .line 1638
    :sswitch_1
    const/4 v9, 0x1

    .line 1639
    goto :goto_4

    .line 1650
    :sswitch_2
    const/4 v10, 0x1

    .line 1651
    nop

    .line 1656
    :cond_4
    :goto_4
    if-eqz v4, :cond_6

    iget-boolean v12, v4, Lccsancom/vungle/warren/AdLoader$Operation;->logError:Z

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v14, p1

    goto :goto_6

    .line 1657
    :cond_6
    :goto_5
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to load Ad/Assets for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ". Cause : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-static {v12, v13, v14}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1660
    :goto_6
    iget-object v12, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v12, v2, v8}, Lccsancom/vungle/warren/AdLoader;->access$1600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Z)V

    .line 1662
    if-eqz v4, :cond_d

    .line 1664
    :try_start_1
    iget v8, v4, Lccsancom/vungle/warren/AdLoader$Operation;->policy:I

    const/4 v15, 0x1

    if-nez v8, :cond_8

    .line 1665
    iget v8, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retry:I

    iget v7, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retryLimit:I

    if-ge v8, v7, :cond_b

    if-eqz v9, :cond_b

    .line 1666
    if-eqz v6, :cond_7

    .line 1667
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v11}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 1669
    :cond_7
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-wide v7, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v4, v7, v8}, Lccsancom/vungle/warren/AdLoader$Operation;->delay(J)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v7

    iget-wide v12, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retryDelay:J

    const-wide/16 v16, 0x2

    mul-long v12, v12, v16

    invoke-virtual {v7, v12, v13}, Lccsancom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v7

    iget v8, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retry:I

    add-int/2addr v8, v15

    invoke-virtual {v7, v8}, Lccsancom/vungle/warren/AdLoader$Operation;->retry(I)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v7

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 1670
    return-void

    .line 1672
    :cond_8
    iget v7, v4, Lccsancom/vungle/warren/AdLoader$Operation;->policy:I

    if-ne v7, v15, :cond_b

    if-nez v10, :cond_b

    .line 1673
    iget v0, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retry:I

    .line 1674
    .local v0, "retry":I
    iget v7, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retryLimit:I

    if-ge v0, v7, :cond_9

    if-eqz v9, :cond_9

    .line 1675
    add-int/2addr v0, v15

    goto :goto_7

    .line 1677
    :cond_9
    const/4 v0, 0x0

    .line 1678
    const/4 v11, 0x4

    .line 1680
    :goto_7
    if-eqz v6, :cond_a

    .line 1681
    iget-object v7, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v7}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8, v11}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 1683
    :cond_a
    iget-object v7, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-wide v12, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v4, v12, v13}, Lccsancom/vungle/warren/AdLoader$Operation;->delay(J)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v8

    iget-wide v12, v4, Lccsancom/vungle/warren/AdLoader$Operation;->retryDelay:J

    const-wide/16 v16, 0x2

    mul-long v12, v12, v16

    invoke-virtual {v8, v12, v13}, Lccsancom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v8

    invoke-virtual {v8, v0}, Lccsancom/vungle/warren/AdLoader$Operation;->retry(I)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 1684
    return-void

    .line 1687
    .end local v0    # "retry":I
    :cond_b
    if-eqz v6, :cond_c

    .line 1688
    iget-object v7, v1, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v7}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8, v0}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1692
    :cond_c
    goto :goto_8

    .line 1690
    :catch_1
    move-exception v0

    .line 1691
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v7, Lccsancom/vungle/warren/error/VungleException;

    const/16 v8, 0x1a

    invoke-direct {v7, v8}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    move-object v14, v7

    .line 1694
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local p1    # "exception":Lccsancom/vungle/warren/error/VungleException;
    .local v14, "exception":Lccsancom/vungle/warren/error/VungleException;
    :goto_8
    iget-object v0, v4, Lccsancom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/vungle/warren/LoadAdCallback;

    .line 1695
    .local v7, "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v14}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1696
    .end local v7    # "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    goto :goto_9

    .line 1698
    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xe -> :sswitch_2
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x19 -> :sswitch_2
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 11
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 1561
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lccsancom/vungle/warren/AdLoader;->access$1600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Z)V

    .line 1564
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$1400(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/HeaderBiddingCallback;

    .line 1565
    .local v0, "headerBiddingCallback":Lccsancom/vungle/warren/HeaderBiddingCallback;
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lccsancom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lccsancom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_0
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found already cached valid adv, calling onAdLoad callback for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v2}, Lccsancom/vungle/warren/AdLoader;->access$1400(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/RuntimeValues;

    move-result-object v2

    iget-object v2, v2, Lccsancom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/InitCallback;

    .line 1572
    .local v2, "initCallback":Lccsancom/vungle/warren/InitCallback;
    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v3

    .line 1573
    .local v3, "type":I
    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-eq v3, v5, :cond_1

    if-nez v3, :cond_2

    .line 1574
    :cond_1
    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lccsancom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    .line 1577
    :cond_2
    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v4}, Lccsancom/vungle/warren/AdLoader;->access$400(Lccsancom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 1578
    .local v4, "operation":Lccsancom/vungle/warren/AdLoader$Operation;
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 1580
    .local v6, "advertisementId":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_4

    .line 1581
    iget-object v7, v4, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {p2, v7}, Lccsancom/vungle/warren/model/Placement;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 1584
    :try_start_0
    iget-object v7, p0, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v7}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v7

    invoke-virtual {v7, p2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    nop

    .line 1595
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading took "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p1, Lccsancom/vungle/warren/AdRequest;->timeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms for:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v1, v4, Lccsancom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/LoadAdCallback;

    .line 1598
    .local v5, "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lccsancom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    .line 1599
    .end local v5    # "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    goto :goto_1

    .line 1585
    :catch_0
    move-exception v7

    .line 1586
    .local v7, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v1

    const/4 v1, 0x1

    aput-object p2, v8, v1

    aput-object p3, v8, v5

    .line 1587
    const-string v1, "Can\'t save placement: exception = %1$s;placement = %2$s; advertisement = %3$s"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1586
    const-string v5, "AdLoader#DownloadAdCallback#onReady; loadAd sequence"

    invoke-static {v5, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v1, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p1, v6}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1591
    return-void

    .line 1601
    .end local v7    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_4
    return-void
.end method
