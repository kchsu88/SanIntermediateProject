.class Lccsancom/vungle/warren/ServiceLocator$6;
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

    .line 180
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$6;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/VungleApiClient;
    .locals 6

    .line 183
    new-instance v0, Lccsancom/vungle/warren/VungleApiClient;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$6;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/ServiceLocator$6;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v3, Lccsancom/vungle/warren/persistence/CacheManager;

    .line 184
    invoke-static {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/persistence/CacheManager;

    iget-object v3, p0, Lccsancom/vungle/warren/ServiceLocator$6;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/persistence/Repository;

    .line 185
    invoke-static {v3, v4}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/persistence/Repository;

    iget-object v4, p0, Lccsancom/vungle/warren/ServiceLocator$6;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v5, Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 186
    invoke-static {v4, v5}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/omsdk/OMInjector;

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/vungle/warren/VungleApiClient;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/omsdk/OMInjector;)V

    .line 183
    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$6;->create()Lccsancom/vungle/warren/VungleApiClient;

    move-result-object v0

    return-object v0
.end method
