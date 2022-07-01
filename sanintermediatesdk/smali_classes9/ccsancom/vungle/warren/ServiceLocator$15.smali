.class Lccsancom/vungle/warren/ServiceLocator$15;
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

    .line 248
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/PresentationFactory;
    .locals 10

    .line 251
    new-instance v9, Lccsancom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/AdLoader;

    .line 252
    invoke-static {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/vungle/warren/AdLoader;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/VungleStaticApi;

    .line 253
    invoke-static {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lccsancom/vungle/warren/VungleStaticApi;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v3, Lccsancom/vungle/warren/persistence/Repository;

    .line 254
    invoke-static {v0, v3}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lccsancom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/VungleApiClient;

    .line 255
    invoke-static {v0, v4}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lccsancom/vungle/warren/VungleApiClient;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v5, Lccsancom/vungle/warren/tasks/JobRunner;

    .line 256
    invoke-static {v0, v5}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lccsancom/vungle/warren/tasks/JobRunner;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v6, Lccsancom/vungle/warren/RuntimeValues;

    .line 257
    invoke-static {v0, v6}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lccsancom/vungle/warren/RuntimeValues;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v7, Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    .line 258
    invoke-static {v0, v7}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$15;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v8, Lccsancom/vungle/warren/utility/Executors;

    .line 259
    invoke-static {v0, v8}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/RuntimeValues;Lccsancom/vungle/warren/omsdk/OMTracker$Factory;Ljava/util/concurrent/ExecutorService;)V

    .line 251
    return-object v9
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$15;->create()Lccsancom/vungle/warren/PresentationFactory;

    move-result-object v0

    return-object v0
.end method

.method isSingleton()Z
    .locals 1

    .line 264
    const/4 v0, 0x0

    return v0
.end method
