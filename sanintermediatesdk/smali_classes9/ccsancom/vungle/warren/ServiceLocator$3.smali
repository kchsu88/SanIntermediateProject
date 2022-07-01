.class Lccsancom/vungle/warren/ServiceLocator$3;
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

    .line 142
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$3;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/tasks/JobRunner;
    .locals 5

    .line 145
    new-instance v0, Lccsancom/vungle/warren/VungleJobRunner;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$3;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/tasks/JobCreator;

    .line 146
    invoke-static {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/tasks/JobCreator;

    iget-object v2, p0, Lccsancom/vungle/warren/ServiceLocator$3;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v3, Lccsancom/vungle/warren/utility/Executors;

    .line 147
    invoke-static {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Executors;->getJobExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lccsancom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;

    invoke-direct {v3}, Lccsancom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;-><init>()V

    iget-object v4, p0, Lccsancom/vungle/warren/ServiceLocator$3;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    .line 149
    invoke-static {v4}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsancom/vungle/warren/utility/NetworkProvider;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/utility/NetworkProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/vungle/warren/VungleJobRunner;-><init>(Lccsancom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;Lccsancom/vungle/warren/utility/NetworkProvider;)V

    .line 145
    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$3;->create()Lccsancom/vungle/warren/tasks/JobRunner;

    move-result-object v0

    return-object v0
.end method
