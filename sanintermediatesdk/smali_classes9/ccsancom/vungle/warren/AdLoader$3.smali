.class Lccsancom/vungle/warren/AdLoader$3;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->checkAndUpdateHBPPlacementBannerSize(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/Repository$LoadCallback<",
        "Lccsancom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$newAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 491
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$3;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$3;->val$newAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lccsancom/vungle/warren/model/Placement;)V
    .locals 3
    .param p1, "placement"    # Lccsancom/vungle/warren/model/Placement;

    .line 494
    if-eqz p1, :cond_0

    .line 496
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 498
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$3;->val$newAdSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq v0, v1, :cond_0

    .line 500
    invoke-virtual {p1, v1}, Lccsancom/vungle/warren/model/Placement;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 501
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$3;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    .line 503
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 491
    check-cast p1, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdLoader$3;->onLoaded(Lccsancom/vungle/warren/model/Placement;)V

    return-void
.end method
