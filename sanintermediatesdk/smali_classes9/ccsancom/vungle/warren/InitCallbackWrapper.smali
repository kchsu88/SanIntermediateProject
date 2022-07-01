.class Lccsancom/vungle/warren/InitCallbackWrapper;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Lccsancom/vungle/warren/InitCallback;


# instance fields
.field private final callback:Lccsancom/vungle/warren/InitCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/InitCallback;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "callback"    # Lccsancom/vungle/warren/InitCallback;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->callback:Lccsancom/vungle/warren/InitCallback;

    .line 14
    iput-object p1, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/InitCallbackWrapper;)Lccsancom/vungle/warren/InitCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/InitCallbackWrapper;

    .line 7
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->callback:Lccsancom/vungle/warren/InitCallback;

    return-object v0
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->callback:Lccsancom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/InitCallbackWrapper$3;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/InitCallbackWrapper$3;-><init>(Lccsancom/vungle/warren/InitCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public onError(Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 31
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->callback:Lccsancom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/InitCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/InitCallbackWrapper$2;-><init>(Lccsancom/vungle/warren/InitCallbackWrapper;Lccsancom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 19
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->callback:Lccsancom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/InitCallbackWrapper$1;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/InitCallbackWrapper$1;-><init>(Lccsancom/vungle/warren/InitCallbackWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method
