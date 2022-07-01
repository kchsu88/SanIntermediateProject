.class Lccsancom/vungle/warren/downloader/AssetDownloader$4;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$error:Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 1424
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p3, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->val$error:Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iput-object p4, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1427
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->val$error:Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/downloader/AssetDownloadListener;->onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1428
    return-void
.end method
