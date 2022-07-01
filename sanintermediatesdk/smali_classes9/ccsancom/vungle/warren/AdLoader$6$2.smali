.class Lccsancom/vungle/warren/AdLoader$6$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader$6;->onSuccess(Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/AdLoader$6;

.field final synthetic val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader$6;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/AdLoader$6;

    .line 1235
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadedFile:Ljava/io/File;

    iput-object p3, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1238
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Downloaded file not found!"

    const/4 v3, -0x1

    const-string v4, "AdLoader#getAssetDownloadListener; loadAd sequence"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 1239
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadedFile:Ljava/io/File;

    .line 1240
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "Downloaded file %1$s doesn\'t exist"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v4, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    new-instance v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v1}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v4, v1}, Lccsancom/vungle/warren/AdLoader$6;->onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1247
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    .line 1251
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v7, v7, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v7}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v7

    const-class v8, Lccsancom/vungle/warren/model/AdAsset;

    invoke-virtual {v7, v0, v8}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/vungle/warren/model/AdAsset;

    .line 1252
    .local v7, "adAsset":Lccsancom/vungle/warren/model/AdAsset;
    :goto_0
    const/4 v8, 0x2

    if-nez v7, :cond_3

    .line 1253
    new-array v1, v8, [Ljava/lang/Object;

    .line 1255
    if-nez v0, :cond_2

    const-string v8, "id is null"

    goto :goto_1

    :cond_2
    const-string v8, "repository returned null"

    :goto_1
    aput-object v8, v1, v5

    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    aput-object v5, v1, v6

    .line 1254
    const-string v5, "adAsset is null because %1$s, downloadRequest = %2$s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-static {v4, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    new-instance v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v6}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v1, v4, v2}, Lccsancom/vungle/warren/AdLoader$6;->onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1263
    return-void

    .line 1266
    :cond_3
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v9, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadedFile:Ljava/io/File;

    invoke-static {v2, v9}, Lccsancom/vungle/warren/AdLoader;->access$2700(Lccsancom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    :goto_2
    iput v2, v7, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    .line 1267
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v7, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    .line 1268
    iput v1, v7, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1270
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v1}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {v1, v7}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    nop

    .line 1278
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadedFile:Ljava/io/File;

    invoke-static {v1, v2}, Lccsancom/vungle/warren/AdLoader;->access$2700(Lccsancom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1280
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$6;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v3, v3, Lccsancom/vungle/warren/AdLoader$6;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$6;->val$callback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v1, v2, v3, v4}, Lccsancom/vungle/warren/AdLoader;->access$2800(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Z

    .line 1283
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$6;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v3, v3, Lccsancom/vungle/warren/AdLoader$6;->val$callback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$6;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-static {v1, v2, v3, v7, v4}, Lccsancom/vungle/warren/AdLoader;->access$2900(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/model/AdAsset;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1286
    :cond_5
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    .line 1291
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$6;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$6;->val$callback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v12, v1, Lccsancom/vungle/warren/AdLoader$6;->errors:Ljava/util/List;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$6;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$6;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 1292
    invoke-static {v1, v2}, Lccsancom/vungle/warren/AdLoader;->access$3000(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v1

    .line 1291
    xor-int/lit8 v13, v1, 0x1

    invoke-static/range {v8 .. v13}, Lccsancom/vungle/warren/AdLoader;->access$2600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1294
    :cond_6
    return-void

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    .local v1, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v1, v2, v6

    .line 1273
    const-string v5, "Can\'t save adAsset %1$s; exception = %2$s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    invoke-static {v4, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$6$2;->this$1:Lccsancom/vungle/warren/AdLoader$6;

    new-instance v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v6, 0x4

    invoke-direct {v4, v3, v5, v6}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$6$2;->val$downloadRequest:Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v2, v4, v3}, Lccsancom/vungle/warren/AdLoader$6;->onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1275
    return-void
.end method
