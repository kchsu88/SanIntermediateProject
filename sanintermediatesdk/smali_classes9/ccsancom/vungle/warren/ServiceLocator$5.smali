.class Lccsancom/vungle/warren/ServiceLocator$5;
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

    .line 168
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$5;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/downloader/Downloader;
    .locals 8

    .line 171
    new-instance v7, Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$5;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/downloader/DownloaderCache;

    .line 172
    invoke-static {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloaderCache;

    sget-wide v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->VERIFICATION_WINDOW:J

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$5;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    .line 175
    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/utility/NetworkProvider;

    move-result-object v5

    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$5;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v4, Lccsancom/vungle/warren/utility/Executors;

    .line 176
    invoke-static {v0, v4}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    const/4 v4, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;-><init>(Lccsancom/vungle/warren/downloader/DownloaderCache;JILccsancom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 171
    return-object v7
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$5;->create()Lccsancom/vungle/warren/downloader/Downloader;

    move-result-object v0

    return-object v0
.end method
