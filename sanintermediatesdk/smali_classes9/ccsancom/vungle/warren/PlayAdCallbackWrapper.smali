.class Lccsancom/vungle/warren/PlayAdCallbackWrapper;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Lccsancom/vungle/warren/PlayAdCallback;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/PlayAdCallback;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    .line 14
    iput-object p1, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/PlayAdCallbackWrapper;)Lccsancom/vungle/warren/PlayAdCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    .line 7
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    return-object v0
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .locals 2
    .param p1, "creativeId"    # Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$1;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$5;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$5;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$4;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$4;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "completed"    # Z
    .param p3, "isCTAClicked"    # Z

    .line 43
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$3;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$6;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$6;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$7;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$7;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$2;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 103
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;-><init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
