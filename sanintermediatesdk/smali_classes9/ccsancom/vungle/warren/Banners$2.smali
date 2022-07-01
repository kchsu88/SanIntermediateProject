.class Lccsancom/vungle/warren/Banners$2;
.super Ljava/lang/Object;
.source "Banners.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lccsanandroid/util/Pair<",
        "Ljava/lang/Boolean;",
        "Lccsancom/vungle/warren/model/Placement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

.field final synthetic val$listener:Lccsancom/vungle/warren/PlayAdCallback;

.field final synthetic val$markup:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/AdConfig$AdSize;Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/vungle/warren/Banners$2;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    iput-object p3, p0, Lccsancom/vungle/warren/Banners$2;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    iput-object p4, p0, Lccsancom/vungle/warren/Banners$2;->val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    iput-object p5, p0, Lccsancom/vungle/warren/Banners$2;->val$markup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsanandroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 227
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 224
    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lccsancom/vungle/warren/Banners;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Vungle is not initialized."

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/Banners$2;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    const/16 v4, 0x9

    invoke-static {v0, v3, v4}, Lccsancom/vungle/warren/Banners;->access$100(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 227
    new-instance v0, Lccsanandroid/util/Pair;

    invoke-direct {v0, v2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0xd

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/Banners$2;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    invoke-static {v0, v4, v3}, Lccsancom/vungle/warren/Banners;->access$100(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 232
    new-instance v0, Lccsanandroid/util/Pair;

    invoke-direct {v0, v2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 235
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/Banners$2;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/Repository;

    .line 236
    .local v0, "repository":Lccsancom/vungle/warren/persistence/Repository;
    iget-object v4, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    const-class v5, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Placement;

    .line 237
    .local v4, "placement":Lccsancom/vungle/warren/model/Placement;
    if-nez v4, :cond_2

    .line 238
    iget-object v5, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/vungle/warren/Banners$2;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    invoke-static {v5, v6, v3}, Lccsancom/vungle/warren/Banners;->access$100(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 239
    new-instance v3, Lccsanandroid/util/Pair;

    invoke-direct {v3, v2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 242
    :cond_2
    iget-object v1, p0, Lccsancom/vungle/warren/Banners$2;->val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v1}, Lccsancom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    iget-object v1, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/Banners$2;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    const/16 v5, 0x1e

    invoke-static {v1, v3, v5}, Lccsancom/vungle/warren/Banners;->access$100(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 244
    new-instance v1, Lccsanandroid/util/Pair;

    invoke-direct {v1, v2, v4}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 247
    :cond_3
    iget-object v1, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/Banners$2;->val$markup:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/vungle/warren/Banners$2;->val$adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v1, v3, v5}, Lccsancom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 248
    iget-object v1, p0, Lccsancom/vungle/warren/Banners$2;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/Banners$2;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    const/16 v5, 0xa

    invoke-static {v1, v3, v5}, Lccsancom/vungle/warren/Banners;->access$100(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 249
    new-instance v1, Lccsanandroid/util/Pair;

    invoke-direct {v1, v2, v4}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 252
    :cond_4
    new-instance v1, Lccsanandroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lccsancom/vungle/warren/Banners$2;->call()Lccsanandroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
