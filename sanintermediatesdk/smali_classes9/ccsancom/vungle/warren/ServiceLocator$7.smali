.class Lccsancom/vungle/warren/ServiceLocator$7;
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

    .line 190
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$7;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/persistence/Repository;
    .locals 6

    .line 193
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$7;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/Executors;

    .line 194
    .local v0, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    new-instance v1, Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/ServiceLocator$7;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    invoke-static {v2}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/ServiceLocator$7;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/persistence/Designer;

    .line 195
    invoke-static {v3, v4}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/persistence/Designer;

    .line 196
    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 197
    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 194
    return-object v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$7;->create()Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    return-object v0
.end method
