.class Lccsancom/vungle/warren/Vungle$6;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->configure(Lccsancom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/Vungle;

.field final synthetic val$adLoader:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$placementList:Ljava/util/List;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle;Ljava/util/List;Lccsancom/vungle/warren/AdLoader;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/Vungle;

    .line 663
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$6;->this$0:Lccsancom/vungle/warren/Vungle;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$6;->val$placementList:Ljava/util/List;

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$6;->val$adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 666
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$6;->val$placementList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Placement;

    .line 667
    .local v1, "placement":Lccsancom/vungle/warren/model/Placement;
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$6;->val$adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    .line 668
    .end local v1    # "placement":Lccsancom/vungle/warren/model/Placement;
    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method
