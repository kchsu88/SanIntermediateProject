.class Lccsancom/vungle/warren/DownloadCallbackWrapper;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Lccsancom/vungle/warren/AdLoader$DownloadCallback;


# instance fields
.field private final downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "downloadCallback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 19
    iput-object p1, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/DownloadCallbackWrapper;)Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/DownloadCallbackWrapper;

    .line 12
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    return-object v0
.end method


# virtual methods
.method public onDownloadCompleted(Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "advertisementId"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/DownloadCallbackWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/DownloadCallbackWrapper$1;-><init>(Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method public onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "exception"    # Lccsancom/vungle/warren/error/VungleException;
    .param p2, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p3, "advertisementId"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;-><init>(Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 48
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;-><init>(Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
