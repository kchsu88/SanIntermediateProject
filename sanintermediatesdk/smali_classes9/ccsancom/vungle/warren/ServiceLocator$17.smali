.class Lccsancom/vungle/warren/ServiceLocator$17;
.super Lccsancom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ServiceLocator;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/vungle/warren/ServiceLocator;

    .line 281
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$17;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/VisionController;
    .locals 3

    .line 284
    new-instance v0, Lccsancom/vungle/warren/VisionController;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$17;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/ServiceLocator$17;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    invoke-static {v2}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/vungle/warren/utility/NetworkProvider;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/utility/NetworkProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/VisionController;-><init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/NetworkProvider;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$17;->create()Lccsancom/vungle/warren/VisionController;

    move-result-object v0

    return-object v0
.end method
