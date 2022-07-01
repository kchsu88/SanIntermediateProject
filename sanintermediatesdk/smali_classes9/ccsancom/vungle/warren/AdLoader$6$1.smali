.class Lccsancom/vungle/warren/AdLoader$6$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader$6;->onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/AdLoader$6;

.field final synthetic val$downloadError:Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

.field final synthetic val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader$6;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/AdLoader$6;

    .line 1186
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$6$1;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lccsancom/vungle/warren/AdLoader$6$1;->val$downloadError:Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1189
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download Failed"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 1191
    iget-object v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    .line 1192
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1193
    :cond_0
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v3, v3, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v3}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v3

    const-class v4, Lccsancom/vungle/warren/model/AdAsset;

    invoke-virtual {v3, v0, v4}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/AdAsset;

    :goto_0
    nop

    .line 1195
    .local v3, "asset":Lccsancom/vungle/warren/model/AdAsset;
    if-eqz v3, :cond_1

    .line 1196
    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader$6$1;->val$downloadError:Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    const/4 v4, 0x2

    iput v4, v3, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1199
    :try_start_0
    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v4}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1200
    :catch_0
    move-exception v4

    .line 1201
    .local v4, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    new-instance v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v7, Lccsancom/vungle/warren/error/VungleException;

    const/16 v8, 0x1a

    invoke-direct {v7, v8}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v6, v2, v7, v1}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    .end local v4    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_1
    goto :goto_2

    .line 1208
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    new-instance v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Downloaded file not found!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v4, v2, v5, v6}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    .end local v0    # "id":Ljava/lang/String;
    .end local v3    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    :goto_2
    goto :goto_3

    .line 1215
    :cond_2
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    new-instance v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "error in request"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4, v1}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    :goto_3
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$6;->downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 1220
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v0, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v2, v0, Lccsancom/vungle/warren/AdLoader$6;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v3, v0, Lccsancom/vungle/warren/AdLoader$6;->val$callback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$6;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$1;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v5, v0, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lccsancom/vungle/warren/AdLoader;->access$2600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1222
    :cond_3
    return-void
.end method
