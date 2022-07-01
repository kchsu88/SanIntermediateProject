.class Lccsancom/vungle/warren/ServiceLocator$4;
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

    .line 153
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/AdLoader;
    .locals 12

    .line 156
    new-instance v11, Lccsancom/vungle/warren/AdLoader;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/vungle/warren/utility/Executors;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/persistence/Repository;

    .line 157
    invoke-static {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lccsancom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v3, Lccsancom/vungle/warren/VungleApiClient;

    .line 158
    invoke-static {v0, v3}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lccsancom/vungle/warren/VungleApiClient;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/persistence/CacheManager;

    .line 159
    invoke-static {v0, v4}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lccsancom/vungle/warren/persistence/CacheManager;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v5, Lccsancom/vungle/warren/downloader/Downloader;

    .line 160
    invoke-static {v0, v5}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lccsancom/vungle/warren/downloader/Downloader;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v6, Lccsancom/vungle/warren/RuntimeValues;

    .line 161
    invoke-static {v0, v6}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lccsancom/vungle/warren/RuntimeValues;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v7, Lccsancom/vungle/warren/VungleStaticApi;

    .line 162
    invoke-static {v0, v7}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lccsancom/vungle/warren/VungleStaticApi;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v8, Lccsancom/vungle/warren/VisionController;

    .line 163
    invoke-static {v0, v8}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lccsancom/vungle/warren/VisionController;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v9, Lccsancom/vungle/warren/OperationSequence;

    .line 164
    invoke-static {v0, v9}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lccsancom/vungle/warren/OperationSequence;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$4;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v10, Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 165
    invoke-static {v0, v10}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lccsancom/vungle/warren/omsdk/OMInjector;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lccsancom/vungle/warren/AdLoader;-><init>(Lccsancom/vungle/warren/utility/Executors;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/downloader/Downloader;Lccsancom/vungle/warren/RuntimeValues;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/OperationSequence;Lccsancom/vungle/warren/omsdk/OMInjector;)V

    .line 156
    return-object v11
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$4;->create()Lccsancom/vungle/warren/AdLoader;

    move-result-object v0

    return-object v0
.end method
