.class Lccsancom/vungle/warren/Vungle$9;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adLoader:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$listener:Lccsancom/vungle/warren/PlayAdCallback;

.field final synthetic val$markup:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$repository:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

.field final synthetic val$settings:Lccsancom/vungle/warren/AdConfig;

.field final synthetic val$vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/utility/Executors;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$9;->val$markup:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$9;->val$adLoader:Lccsancom/vungle/warren/AdLoader;

    iput-object p4, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    iput-object p5, p0, Lccsancom/vungle/warren/Vungle$9;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p6, p0, Lccsancom/vungle/warren/Vungle$9;->val$settings:Lccsancom/vungle/warren/AdConfig;

    iput-object p7, p0, Lccsancom/vungle/warren/Vungle$9;->val$vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    iput-object p8, p0, Lccsancom/vungle/warren/Vungle$9;->val$sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 937
    new-instance v0, Lccsancom/vungle/warren/AdRequest;

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9;->val$markup:Ljava/lang/String;

    invoke-static {v2}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;)V

    .line 939
    .local v0, "request":Lccsancom/vungle/warren/AdRequest;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v2}, Lccsancom/vungle/warren/Vungle;->access$1700(Lccsancom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$9;->val$adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/AdLoader;->isLoading(Lccsancom/vungle/warren/AdRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 944
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$9;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    const-class v3, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Placement;

    .line 945
    .local v1, "placement":Lccsancom/vungle/warren/model/Placement;
    if-nez v1, :cond_1

    .line 946
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v3, v4}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 947
    return-void

    .line 950
    :cond_1
    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    invoke-static {v2}, Lccsancom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 951
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Incorrect API for Banners and MREC"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1c

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v3, v4}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 953
    return-void

    .line 957
    :cond_2
    const/4 v2, 0x0

    .line 960
    .local v2, "streamingOnly":Z
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    .line 961
    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->findPotentiallyExpiredAd(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lccsancom/vungle/warren/model/Advertisement;

    .line 964
    .local v9, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 965
    .local v3, "currentTime":J
    const/4 v5, 0x1

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Advertisement;->getExpireTime()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gez v8, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 967
    .local v6, "hasExpired":Z
    :goto_0
    invoke-static {v9}, Lccsancom/vungle/warren/Vungle;->canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_4

    goto :goto_1

    .line 988
    :cond_4
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$9;->val$settings:Lccsancom/vungle/warren/AdConfig;

    invoke-virtual {v9, v7}, Lccsancom/vungle/warren/model/Advertisement;->configure(Lccsancom/vungle/warren/AdConfig;)V

    .line 989
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$9;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v7, v9}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_2

    .line 969
    :cond_5
    :goto_1
    const/4 v2, 0x1

    .line 971
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v7

    if-eq v7, v5, :cond_6

    if-eqz v6, :cond_7

    .line 973
    :cond_6
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$9;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v8, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v8, v10}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 974
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$9;->val$adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v1, v8, v10, v11}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    .line 977
    :cond_7
    if-eqz v6, :cond_8

    .line 978
    nop

    .line 979
    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v8, Lccsancom/vungle/warren/error/VungleException;

    const/16 v10, 0x25

    invoke-direct {v8, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 978
    invoke-static {v5, v7, v8}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    return-void

    .line 994
    .end local v3    # "currentTime":J
    .end local v6    # "hasExpired":Z
    :cond_8
    :goto_2
    nop

    .line 996
    sget-object v3, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v3}, Lccsancom/vungle/warren/Vungle;->access$400(Lccsancom/vungle/warren/Vungle;)Lccsanandroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 999
    move v10, v2

    .line 1000
    .local v10, "finalStreamingOnly":Z
    move-object v11, v9

    .line 1002
    .local v11, "finalAdvertisement":Lccsancom/vungle/warren/model/Advertisement;
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v3}, Lccsancom/vungle/warren/VungleApiClient;->canCallWillPlayAd()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1003
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v5

    .line 1004
    if-eqz v2, :cond_9

    const-string v6, ""

    goto :goto_3

    :cond_9
    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v6

    .line 1003
    :goto_3
    invoke-virtual {v3, v4, v5, v6}, Lccsancom/vungle/warren/VungleApiClient;->willPlayAd(Ljava/lang/String;ZLjava/lang/String;)Lccsancom/vungle/warren/network/Call;

    move-result-object v12

    new-instance v13, Lccsancom/vungle/warren/Vungle$9$1;

    move-object v3, v13

    move-object v4, p0

    move v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lccsancom/vungle/warren/Vungle$9$1;-><init>(Lccsancom/vungle/warren/Vungle$9;ZLccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1004
    invoke-interface {v12, v13}, Lccsancom/vungle/warren/network/Call;->enqueue(Lccsancom/vungle/warren/network/Callback;)V

    goto :goto_4

    .line 1066
    :cond_a
    if-eqz v10, :cond_b

    .line 1067
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v6, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v4, v6}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    goto :goto_4

    .line 1069
    :cond_b
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    invoke-static {v0, v3, v1, v11}, Lccsancom/vungle/warren/Vungle;->access$1900(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1073
    .end local v10    # "finalStreamingOnly":Z
    .end local v11    # "finalAdvertisement":Lccsancom/vungle/warren/model/Advertisement;
    :cond_c
    :goto_4
    return-void

    .line 991
    :catch_0
    move-exception v3

    .line 992
    .local v3, "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v4, v5, v6}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 993
    return-void

    .line 940
    .end local v1    # "placement":Lccsancom/vungle/warren/model/Placement;
    .end local v2    # "streamingOnly":Z
    .end local v3    # "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v9    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :cond_d
    :goto_5
    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v2, v3}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 941
    return-void
.end method
