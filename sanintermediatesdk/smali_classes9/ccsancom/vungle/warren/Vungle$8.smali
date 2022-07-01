.class Lccsancom/vungle/warren/Vungle$8;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;Ljava/lang/String;)Z
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
.field final synthetic val$context:Lccsanandroid/content/Context;

.field final synthetic val$markup:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$8;->val$context:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$8;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$8;->val$markup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8

    .line 816
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    .line 818
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 816
    if-nez v0, :cond_0

    .line 817
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Vungle is not initialized"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-object v1

    .line 821
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$8;->val$context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 822
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/persistence/Repository;

    .line 824
    .local v2, "repository":Lccsancom/vungle/warren/persistence/Repository;
    new-instance v3, Lccsancom/vungle/warren/AdRequest;

    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$8;->val$placementId:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$8;->val$markup:Ljava/lang/String;

    invoke-static {v5}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;)V

    .line 825
    .local v3, "request":Lccsancom/vungle/warren/AdRequest;
    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$8;->val$placementId:Ljava/lang/String;

    const-class v5, Lccsancom/vungle/warren/model/Placement;

    .line 826
    invoke-virtual {v2, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    .line 827
    invoke-virtual {v4}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Placement;

    .line 828
    .local v4, "placement":Lccsancom/vungle/warren/model/Placement;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 832
    :cond_1
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 833
    return-object v1

    .line 836
    :cond_2
    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$8;->val$placementId:Ljava/lang/String;

    .line 837
    invoke-virtual {v3}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    .line 838
    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Advertisement;

    .line 840
    .local v5, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-nez v5, :cond_3

    .line 841
    return-object v1

    .line 844
    :cond_3
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 845
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v6

    invoke-static {v6}, Lccsancom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 846
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v6

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/AdConfig$AdSize;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 850
    :cond_4
    invoke-static {v5}, Lccsancom/vungle/warren/Vungle;->canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 847
    :cond_5
    :goto_0
    return-object v1

    .line 829
    .end local v5    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :cond_6
    :goto_1
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Lccsancom/vungle/warren/Vungle$8;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
