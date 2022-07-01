.class Lccsancom/vungle/warren/AdLoader$6;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lccsancom/vungle/warren/downloader/AssetDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->getAssetDownloadListener(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Lccsancom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

.field errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field final synthetic val$callback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic val$op:Lccsancom/vungle/warren/AdLoader$Operation;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 2
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 1177
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$6;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iput-object p3, p0, Lccsancom/vungle/warren/AdLoader$6;->val$callback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p4, p0, Lccsancom/vungle/warren/AdLoader$6;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p2, Lccsancom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lccsancom/vungle/warren/AdLoader$6;->downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1180
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 2
    .param p1, "downloadError"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .param p2, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1186
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$2500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/AdLoader$6$1;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/vungle/warren/AdLoader$6$1;-><init>(Lccsancom/vungle/warren/AdLoader$6;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1224
    return-void
.end method

.method public onProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0
    .param p1, "progress"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .param p2, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1230
    return-void
.end method

.method public onSuccess(Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 2
    .param p1, "downloadedFile"    # Ljava/io/File;
    .param p2, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1235
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$2500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/AdLoader$6$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/AdLoader$6$2;-><init>(Lccsancom/vungle/warren/AdLoader$6;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1296
    return-void
.end method
