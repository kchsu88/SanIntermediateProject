.class Lccsancom/vungle/warren/ServiceLocator$8;
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

    .line 201
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$8;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method create()Ljava/lang/Object;
    .locals 8

    .line 204
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$8;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/Executors;

    .line 205
    .local v0, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    new-instance v7, Lccsancom/vungle/warren/log/LogManager;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$8;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$8;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v3, Lccsancom/vungle/warren/persistence/CacheManager;

    .line 206
    invoke-static {v1, v3}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lccsancom/vungle/warren/persistence/CacheManager;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$8;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/VungleApiClient;

    .line 207
    invoke-static {v1, v4}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lccsancom/vungle/warren/VungleApiClient;

    .line 208
    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getLoggerExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$8;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v6, Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 209
    invoke-static {v1, v6}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lccsancom/vungle/warren/persistence/FilePreferences;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lccsancom/vungle/warren/log/LogManager;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/VungleApiClient;Ljava/util/concurrent/Executor;Lccsancom/vungle/warren/persistence/FilePreferences;)V

    .line 205
    return-object v7
.end method
