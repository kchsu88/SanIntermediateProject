.class Lccsancom/vungle/warren/AdLoader$4;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->loadAd(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/DownloadCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$adRequestStartTimeStamp:J

.field final synthetic val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$op:Lccsancom/vungle/warren/AdLoader$Operation;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/AdLoader$Operation;J)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 579
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iput-object p3, p0, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iput-wide p4, p0, Lccsancom/vungle/warren/AdLoader$4;->val$adRequestStartTimeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 582
    move-object/from16 v1, p0

    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$1000(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VungleStaticApi;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    const-string v2, "AdLoader#loadAd#execute; loadAd sequence"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 583
    const-string v0, "Vungle is not initialized"

    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0x9

    invoke-direct {v2, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v4, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 585
    return-void

    .line 588
    :cond_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lccsancom/vungle/warren/model/Placement;

    .line 589
    .local v4, "placement":Lccsancom/vungle/warren/model/Placement;
    if-nez v4, :cond_1

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placement not found for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0xd

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 592
    return-void

    .line 595
    :cond_1
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 596
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 597
    return-void

    .line 600
    :cond_2
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0, v4, v5}, Lccsancom/vungle/warren/AdLoader;->access$1100(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size is invalid, size = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1c

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 604
    return-void

    .line 607
    :cond_3
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    const/16 v5, 0x1a

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 608
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v8}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 609
    .local v7, "advs":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    if-eqz v7, :cond_6

    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, "deleted":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "deleted":Z
    .local v9, "deleted":Z
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lccsancom/vungle/warren/model/Advertisement;

    .line 612
    .local v10, "adv":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    iget-object v11, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v11, v11, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq v0, v11, :cond_4

    .line 614
    :try_start_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    nop

    .line 621
    const/4 v0, 0x1

    move v9, v0

    .end local v9    # "deleted":Z
    .restart local v0    # "deleted":Z
    goto :goto_1

    .line 615
    .end local v0    # "deleted":Z
    .restart local v9    # "deleted":Z
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot delete advertisement, request = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v6, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v6, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 619
    return-void

    .line 623
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v10    # "adv":Lccsancom/vungle/warren/model/Advertisement;
    :cond_4
    :goto_1
    goto :goto_0

    .line 624
    :cond_5
    if-eqz v9, :cond_6

    .line 625
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v4, v8, v10, v11}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    .line 631
    .end local v7    # "advs":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    .end local v9    # "deleted":Z
    :cond_6
    const/4 v0, 0x0

    .line 632
    .local v0, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    iget-object v7, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v7}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v7

    .line 633
    .local v7, "type":I
    const-string v8, "cannot save/apply ERROR state, request = "

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v7, :cond_9

    if-ne v7, v9, :cond_7

    goto :goto_2

    .line 695
    :cond_7
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v2

    if-ne v2, v6, :cond_8

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v12, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    invoke-static {v2}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lccsancom/vungle/warren/AdLoader;->access$1800(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/persistence/Repository;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 697
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v2, v5}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 698
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v5, v4, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 699
    return-void

    .line 702
    :cond_8
    move-object v13, v0

    goto/16 :goto_6

    .line 634
    :cond_9
    :goto_2
    iget-object v12, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v12}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, "eventId":Ljava/lang/String;
    iget-object v13, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v13}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v13

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/vungle/warren/model/Advertisement;

    .line 637
    .end local v0    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    .local v13, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v0

    if-nez v0, :cond_b

    .line 638
    if-nez v12, :cond_a

    .line 639
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x24

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 641
    return-void

    .line 642
    :cond_a
    if-nez v13, :cond_b

    .line 643
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0xa

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 644
    return-void

    .line 649
    :cond_b
    if-eqz v13, :cond_c

    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0, v13}, Lccsancom/vungle/warren/AdLoader;->canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 650
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 651
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v4, v13}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 652
    return-void

    .line 653
    :cond_c
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0, v13}, Lccsancom/vungle/warren/AdLoader;->access$1200(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 654
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Found valid adv but not ready - downloading content"

    invoke-static {v0, v9}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$1400(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lccsancom/vungle/warren/VungleSettings;

    .line 657
    .local v9, "settings":Lccsancom/vungle/warren/VungleSettings;
    const-string v14, "AdLoader#loadAd#execute; loadAd sequence; canReDownload branch"

    if-eqz v9, :cond_f

    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$1500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v15

    invoke-virtual {v9}, Lccsancom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v17

    cmp-long v0, v15, v17

    if-gez v0, :cond_d

    goto :goto_4

    .line 676
    :cond_d
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v0, v2, v6}, Lccsancom/vungle/warren/AdLoader;->access$1600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Z)V

    .line 678
    invoke-virtual {v13}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_e

    .line 680
    :try_start_1
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2, v11}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    goto :goto_3

    .line 681
    :catch_1
    move-exception v0

    .line 682
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot save/apply NEW state, request = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v6, v6, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v6, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v6, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 686
    return-void

    .line 689
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_e
    :goto_3
    iget-wide v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$adRequestStartTimeStamp:J

    invoke-virtual {v13, v2, v3}, Lccsancom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Lccsancom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 691
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 692
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v3, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0, v2, v13, v3}, Lccsancom/vungle/warren/AdLoader;->access$1700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    .line 693
    return-void

    .line 658
    :cond_f
    :goto_4
    invoke-virtual {v13}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eq v0, v10, :cond_10

    .line 660
    :try_start_2
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v6, v6, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v6}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v13, v6, v10}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_2
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_2 .. :try_end_2} :catch_2

    .line 667
    goto :goto_5

    .line 661
    :catch_2
    move-exception v0

    .line 662
    .restart local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v6, v6, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v6, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v6, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 666
    return-void

    .line 669
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_10
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to download assets, no space; request = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x13

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 672
    return-void

    .line 695
    .end local v9    # "settings":Lccsancom/vungle/warren/VungleSettings;
    .end local v12    # "eventId":Ljava/lang/String;
    :cond_11
    nop

    .line 702
    :goto_6
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v0, v14, v16

    if-lez v0, :cond_12

    .line 703
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 704
    new-array v0, v6, [Ljava/lang/Object;

    .line 705
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    const-string v2, "Placement with id %s is snoozed "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 704
    const-string v2, "AdLoader#loadAd#execute; loadAd sequence; snoozed branch"

    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is  snoozed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is sleeping rescheduling it "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v5, v8

    invoke-virtual {v0, v4, v2, v5, v6}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    goto/16 :goto_a

    .line 712
    :cond_12
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v0

    if-ne v0, v6, :cond_13

    const-string v0, "advs"

    goto :goto_7

    :cond_13
    const-string v0, "adv"

    :goto_7
    move-object v2, v0

    .line 713
    .local v2, "advMsg":Ljava/lang/String;
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "didn\'t find cached "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v14, v14, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " downloading"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v12, "AdLoader#loadAd#execute; loadAd sequence; last else branch"

    if-eqz v13, :cond_14

    .line 717
    :try_start_3
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v14, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v14, v14, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v14}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14, v10}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_3
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3 .. :try_end_3} :catch_3

    .line 724
    goto :goto_8

    .line 718
    :catch_3
    move-exception v0

    .line 719
    .restart local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v8, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v8, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v6, v8, v5, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 723
    return-void

    .line 728
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_14
    :goto_8
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$1400(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VungleSettings;

    .line 729
    .local v0, "settings":Lccsancom/vungle/warren/VungleSettings;
    if-eqz v0, :cond_16

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v5}, Lccsancom/vungle/warren/AdLoader;->access$1500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/CacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v14

    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-gez v5, :cond_16

    .line 730
    new-array v5, v9, [Ljava/lang/Object;

    .line 734
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v11

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v8, v5, v6

    .line 733
    const-string v6, "no space to load, isAutoCached = %1$s, request = %2$s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 730
    invoke-static {v12, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 737
    const/16 v8, 0x12

    goto :goto_9

    :cond_15
    const/16 v8, 0x11

    :goto_9
    invoke-direct {v6, v8}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    .line 736
    invoke-virtual {v5, v6, v8, v3}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 738
    return-void

    .line 742
    :cond_16
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for placement "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " getting new data "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v3, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v3, v5, v6}, Lccsancom/vungle/warren/AdLoader;->access$1600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Z)V

    .line 746
    iget-object v3, v1, Lccsancom/vungle/warren/AdLoader$4;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$4;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$4;->val$listener:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v3, v5, v4, v6}, Lccsancom/vungle/warren/AdLoader;->access$1900(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    .line 748
    .end local v0    # "settings":Lccsancom/vungle/warren/VungleSettings;
    .end local v2    # "advMsg":Ljava/lang/String;
    :goto_a
    return-void
.end method
