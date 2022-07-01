.class Lccsancom/vungle/warren/Banners$1;
.super Ljava/lang/Object;
.source "Banners.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

.field final synthetic val$context:Lccsanandroid/content/Context;

.field final synthetic val$markup:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lccsancom/vungle/warren/Banners$1;->val$context:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsancom/vungle/warren/Banners$1;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/Banners$1;->val$markup:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/vungle/warren/Banners$1;->val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11

    .line 88
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 88
    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lccsancom/vungle/warren/Banners;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v2

    .line 93
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Banners$1;->val$context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 94
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v3, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/persistence/Repository;

    .line 95
    .local v3, "repository":Lccsancom/vungle/warren/persistence/Repository;
    new-instance v4, Lccsancom/vungle/warren/AdRequest;

    iget-object v5, p0, Lccsancom/vungle/warren/Banners$1;->val$placementId:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/vungle/warren/Banners$1;->val$markup:Ljava/lang/String;

    invoke-static {v6}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;)V

    .line 97
    .local v4, "request":Lccsancom/vungle/warren/AdRequest;
    iget-object v5, p0, Lccsancom/vungle/warren/Banners$1;->val$placementId:Ljava/lang/String;

    const-class v6, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3, v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Placement;

    .line 98
    .local v5, "placement":Lccsancom/vungle/warren/model/Placement;
    if-nez v5, :cond_1

    .line 99
    return-object v2

    .line 101
    :cond_1
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 102
    return-object v2

    .line 105
    :cond_2
    iget-object v6, p0, Lccsancom/vungle/warren/Banners$1;->val$placementId:Ljava/lang/String;

    .line 106
    invoke-virtual {v4}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/model/Advertisement;

    .line 107
    .local v6, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-nez v6, :cond_3

    .line 108
    return-object v2

    .line 111
    :cond_3
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v7

    .line 112
    .local v7, "plSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    invoke-virtual {v6}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v8

    .line 116
    .local v8, "advSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    iget-object v9, p0, Lccsancom/vungle/warren/Banners$1;->val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    sget-object v10, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-ne v9, v10, :cond_4

    .line 117
    invoke-static {v7}, Lccsancom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Lccsancom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 120
    .local v1, "skipSizeCheck":Z
    :goto_0
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v7}, Lccsancom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 121
    invoke-static {v8}, Lccsancom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 122
    const/4 v1, 0x1

    .line 125
    :cond_5
    if-nez v1, :cond_7

    iget-object v9, p0, Lccsancom/vungle/warren/Banners$1;->val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-ne v9, v7, :cond_6

    if-eq v9, v8, :cond_7

    .line 126
    :cond_6
    return-object v2

    .line 129
    :cond_7
    invoke-static {v6}, Lccsancom/vungle/warren/Vungle;->canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lccsancom/vungle/warren/Banners$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
