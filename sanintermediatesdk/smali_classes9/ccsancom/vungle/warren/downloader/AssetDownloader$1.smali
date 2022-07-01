.class Lccsancom/vungle/warren/downloader/AssetDownloader$1;
.super Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/downloader/AssetDownloader;->download(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetPriority;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p2, "priority"    # Lccsancom/vungle/warren/downloader/AssetPriority;

    .line 194
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    iput-object p4, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(Lccsancom/vungle/warren/downloader/AssetPriority;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 197
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Start to download asset %1$s, at: %2$d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string v2, "ttDownloadContext"

    invoke-static {v3, v0, v2, v1}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$100(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot launch request due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssetDownloader#download; loadAd sequence"

    invoke-static {v2, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on launching request"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$1;->val$downloadListener:Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v5, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v0, v3}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-static {v1, v2, v4, v5}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$200(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
