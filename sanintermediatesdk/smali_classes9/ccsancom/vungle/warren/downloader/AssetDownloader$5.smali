.class Lccsancom/vungle/warren/downloader/AssetDownloader$5;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$copy:Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

.field final synthetic val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$listener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 1456
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$listener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p4, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$copy:Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1459
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$listener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$copy:Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$5;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/downloader/AssetDownloadListener;->onProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1461
    return-void
.end method
