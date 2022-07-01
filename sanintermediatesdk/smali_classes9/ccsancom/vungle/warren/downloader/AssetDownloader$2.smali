.class Lccsancom/vungle/warren/downloader/AssetDownloader$2;
.super Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/downloader/AssetDownloader;->load(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p2, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 331
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 41

    .line 335
    move-object/from16 v1, p0

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "reconnectRetries":I
    const/4 v2, 0x0

    .line 338
    .local v2, "done":Z
    new-instance v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v3}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 339
    .local v3, "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    const/4 v5, 0x0

    .line 343
    .local v5, "isPaused":Z
    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v6, v6, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 344
    .local v6, "url":Ljava/lang/String;
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v7, v7, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 345
    .local v7, "path":Ljava/lang/String;
    iget-object v8, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v8, v8, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 347
    .local v8, "metPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v10

    .line 350
    .local v14, "metaFile":Ljava/io/File;
    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v10, v10, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v10, :cond_0

    .line 351
    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v10

    invoke-interface {v10, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->startTracking(Ljava/io/File;)V

    .line 354
    :cond_0
    move/from16 v40, v2

    move v2, v0

    move/from16 v0, v40

    .local v0, "done":Z
    .local v2, "reconnectRetries":I
    :goto_0
    if-nez v0, :cond_52

    .line 355
    const/16 v16, 0x1

    .line 357
    .end local v0    # "done":Z
    .local v16, "done":Z
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start load: url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/16 v17, 0x0

    .line 360
    .local v17, "sink":Lccsanokio/BufferedSink;
    const/16 v18, 0x0

    .line 361
    .local v18, "source":Lccsanokio/BufferedSource;
    const-wide/16 v19, 0x0

    .line 362
    .local v19, "totalRead":J
    const/16 v21, 0x0

    .line 364
    .local v21, "call":Lccsanokhttp3/Call;
    const/16 v22, -0x1

    .line 365
    .local v22, "code":I
    const/16 v23, 0x0

    .line 368
    .local v23, "response":Lccsanokhttp3/Response;
    const/4 v10, 0x1

    :try_start_0
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_20

    if-nez v0, :cond_7

    .line 369
    :try_start_1
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Abort download, wrong state "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 370
    invoke-static {v12, v13}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 369
    invoke-static {v0, v12}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 636
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_1
    if-eqz v21, :cond_2

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_2
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request is done "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v16, :cond_4

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 663
    if-nez v5, :cond_3

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_1

    .line 656
    :pswitch_0
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v4, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_1

    .line 653
    :pswitch_1
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_1

    .line 659
    :pswitch_2
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_3
    :goto_1
    :pswitch_3
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Done with request in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v11}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 669
    invoke-static {v0, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 672
    :cond_4
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not removing connections and listener "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 672
    invoke-static {v0, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_2
    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v12

    .line 678
    :try_start_2
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v16, :cond_6

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_6

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_3

    .line 689
    :cond_5
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 371
    :cond_6
    :goto_3
    return-void

    .line 679
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 551
    :catchall_1
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object v8, v14

    move/from16 v5, v22

    goto/16 :goto_1a

    .line 374
    :cond_7
    :try_start_4
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 381
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 384
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_20

    if-eqz v0, :cond_8

    :try_start_5
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 388
    :cond_8
    :try_start_6
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_20

    const-wide/16 v26, 0x0

    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :cond_9
    move-wide/from16 v12, v26

    .line 390
    .local v12, "downloaded":J
    :goto_4
    :try_start_8
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "already downloaded : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", file exists = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 394
    invoke-static {v10, v11}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 390
    invoke-static {v0, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, v14}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$600(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    move-object v11, v0

    .line 398
    .local v11, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v10, v9, v11}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_20

    if-eqz v0, :cond_10

    .line 399
    :try_start_9
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 400
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v15, "Using cache without verification, dispatch existing file"

    invoke-static {v0, v15}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 636
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 637
    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_a
    if-eqz v21, :cond_b

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_b
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "request is done "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    move-object/from16 v34, v7

    .end local v7    # "path":Ljava/lang/String;
    .local v34, "path":Ljava/lang/String;
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v15, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v16, :cond_d

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 663
    if-nez v5, :cond_c

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_5

    .line 656
    :pswitch_4
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v4, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_5

    .line 653
    :pswitch_5
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_5

    .line 659
    :pswitch_6
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_c
    :goto_5
    :pswitch_7
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Done with request in state "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v10, v15}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 669
    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 672
    :cond_d
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not removing connections and listener "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v10, v15}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_6
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v7

    .line 678
    :try_start_a
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v16, :cond_f

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_f

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_7

    .line 689
    :cond_e
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 402
    :cond_f
    :goto_7
    return-void

    .line 679
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 551
    .end local v11    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "downloaded":J
    .end local v34    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v34, v7

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v35, v8

    move-object v8, v14

    move/from16 v5, v22

    .end local v7    # "path":Ljava/lang/String;
    .restart local v34    # "path":Ljava/lang/String;
    goto/16 :goto_1a

    .line 405
    .end local v34    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v11    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "downloaded":J
    :cond_10
    move-object/from16 v34, v7

    const/4 v10, 0x4

    .end local v7    # "path":Ljava/lang/String;
    .restart local v34    # "path":Ljava/lang/String;
    :try_start_c
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ttDownloadContext"

    const-string v15, "Send network request: %1$s, at: %2$d"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1e

    move-object/from16 v35, v8

    const/4 v8, 0x2

    .end local v8    # "metPath":Ljava/lang/String;
    .local v35, "metPath":Ljava/lang/String;
    :try_start_d
    new-array v10, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v6, v10, v24

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/4 v8, 0x1

    aput-object v25, v10, v8

    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 405
    invoke-static {v8, v0, v7, v10}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v0, Lccsanokhttp3/Request$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v6}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v15

    .line 410
    .local v15, "requestBuilder":Lccsanokhttp3/Request$Builder;
    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1d

    const/4 v7, 0x4

    move-object v7, v11

    move-wide/from16 v24, v12

    const/4 v8, 0x0

    const/4 v13, 0x4

    .end local v11    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "downloaded":J
    .local v7, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v24, "downloaded":J
    move-wide/from16 v11, v24

    move-object v13, v9

    move-object v8, v14

    .end local v14    # "metaFile":Ljava/io/File;
    .local v8, "metaFile":Ljava/io/File;
    move-object v14, v7

    :try_start_e
    invoke-static/range {v10 .. v15}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$800(Lccsancom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Lccsanokhttp3/Request$Builder;)V

    .line 412
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$900(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsanokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v15}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v10

    invoke-virtual {v0, v10}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v0

    move-object/from16 v21, v0

    .line 413
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1c

    move-object v10, v0

    .line 415
    .end local v23    # "response":Lccsanokhttp3/Response;
    .local v10, "response":Lccsanokhttp3/Response;
    :try_start_f
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1000(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsanokhttp3/Response;)J

    move-result-wide v11

    .line 417
    .local v11, "contentLength":J
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Response code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsanokhttp3/Response;->code()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v10}, Lccsanokhttp3/Response;->code()I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1b

    move v13, v0

    .line 421
    .end local v22    # "code":I
    .local v13, "code":I
    :try_start_10
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v10, v14, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1100(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 422
    invoke-static {v0, v14, v9, v7, v13}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1200(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_11

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    move v5, v13

    move-object/from16 v28, v15

    goto/16 :goto_15

    .line 440
    :cond_11
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v28, v0

    move-wide/from16 v29, v24

    move/from16 v31, v13

    move-object/from16 v32, v10

    move-object/from16 v33, v14

    invoke-static/range {v28 .. v33}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1400(Lccsancom/vungle/warren/downloader/AssetDownloader;JILccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1a

    if-eqz v0, :cond_19

    .line 442
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "reconnectRetries":I
    .local v14, "reconnectRetries":I
    :try_start_11
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget v0, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v2, v0, :cond_18

    .line 443
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    const/4 v2, 0x0

    invoke-static {v0, v9, v8, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1500(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 444
    const/4 v2, 0x0

    .line 636
    .end local v16    # "done":Z
    .local v2, "done":Z
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 637
    invoke-virtual {v10}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_12
    if-eqz v21, :cond_13

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_13
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    move/from16 v22, v14

    .end local v14    # "reconnectRetries":I
    .local v22, "reconnectRetries":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v15

    .end local v15    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .local v28, "requestBuilder":Lccsanokhttp3/Request$Builder;
    const-string v15, "request is done "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    move-object/from16 v29, v7

    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v29, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v15, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v2, :cond_15

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 663
    if-nez v5, :cond_14

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_8

    .line 656
    :pswitch_8
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v4, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_8

    .line 653
    :pswitch_9
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_8

    .line 659
    :pswitch_a
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_14
    :goto_8
    :pswitch_b
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Done with request in state "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v14}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v14, v15}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 669
    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 672
    :cond_15
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not removing connections and listener "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v14, v15}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_9
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v7

    .line 678
    :try_start_12
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v2, :cond_17

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_17

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_a

    .line 689
    :cond_16
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 354
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v11    # "contentLength":J
    .end local v13    # "code":I
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v24    # "downloaded":J
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    :goto_a
    move v0, v2

    move-object v14, v8

    move/from16 v2, v22

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    goto/16 :goto_0

    .line 679
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v11    # "contentLength":J
    .restart local v13    # "code":I
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v24    # "downloaded":J
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v0

    .line 448
    .end local v2    # "done":Z
    .end local v22    # "reconnectRetries":I
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "reconnectRetries":I
    .restart local v15    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v16    # "done":Z
    :cond_18
    move-object/from16 v29, v7

    move/from16 v22, v14

    move-object/from16 v28, v15

    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "reconnectRetries":I
    .end local v15    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v22    # "reconnectRetries":I
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_14
    new-instance v0, Lccsancom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Code: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v13    # "code":I
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v22    # "reconnectRetries":I
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 551
    .end local v11    # "contentLength":J
    .end local v24    # "downloaded":J
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v13    # "code":I
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v22    # "reconnectRetries":I
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v23, v10

    move v5, v13

    move/from16 v2, v22

    goto/16 :goto_1a

    .end local v22    # "reconnectRetries":I
    .restart local v14    # "reconnectRetries":I
    :catchall_6
    move-exception v0

    move/from16 v22, v14

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v23, v10

    move v5, v13

    move/from16 v2, v22

    .end local v14    # "reconnectRetries":I
    .restart local v22    # "reconnectRetries":I
    goto/16 :goto_1a

    .line 451
    .end local v22    # "reconnectRetries":I
    .local v2, "reconnectRetries":I
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "contentLength":J
    .restart local v15    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v24    # "downloaded":J
    :cond_19
    move-object/from16 v29, v7

    move-object/from16 v28, v15

    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_15
    invoke-virtual {v10}, Lccsanokhttp3/Response;->isSuccessful()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1a

    if-eqz v0, :cond_2b

    .line 455
    const/16 v0, 0xce

    if-eq v13, v0, :cond_1a

    .line 456
    const-wide/16 v14, 0x0

    .line 457
    .end local v24    # "downloaded":J
    .local v14, "downloaded":J
    :try_start_16
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    const/4 v7, 0x0

    invoke-static {v0, v9, v8, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1500(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_b

    .line 551
    .end local v11    # "contentLength":J
    .end local v14    # "downloaded":J
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_7
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v23, v10

    move v5, v13

    goto/16 :goto_1a

    .line 455
    .restart local v11    # "contentLength":J
    .restart local v24    # "downloaded":J
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1a
    move-wide/from16 v14, v24

    .line 460
    .end local v24    # "downloaded":J
    .restart local v14    # "downloaded":J
    :goto_b
    :try_start_17
    invoke-static {v8}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 462
    invoke-virtual {v10}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    .line 464
    .local v0, "headers":Lccsanokhttp3/Headers;
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v7, v9, v8, v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1600(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lccsanokhttp3/Headers;)V

    .line 465
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v7, v8, v0, v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1700(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsanokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 467
    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v10}, Lccsanokhttp3/internal/http/HttpHeaders;->hasBody(Lccsanokhttp3/Response;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 473
    move-object/from16 v22, v0

    .end local v0    # "headers":Lccsanokhttp3/Headers;
    .local v22, "headers":Lccsanokhttp3/Headers;
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    if-eqz v0, :cond_1b

    .line 474
    :try_start_18
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move/from16 v31, v5

    move-object/from16 v30, v6

    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .local v30, "url":Ljava/lang/String;
    .local v31, "isPaused":Z
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0, v9, v5, v6}, Lccsancom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_c

    .line 551
    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "contentLength":J
    .end local v14    # "downloaded":J
    .end local v22    # "headers":Lccsanokhttp3/Headers;
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    :catchall_8
    move-exception v0

    move-object/from16 v23, v10

    move v5, v13

    goto/16 :goto_1a

    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v23, v10

    move v5, v13

    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    goto/16 :goto_1a

    .line 473
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "contentLength":J
    .restart local v14    # "downloaded":J
    .restart local v22    # "headers":Lccsanokhttp3/Headers;
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    :cond_1b
    move/from16 v31, v5

    move-object/from16 v30, v6

    .line 477
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    :goto_c
    :try_start_1a
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1800(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsanokhttp3/Response;)Lccsanokhttp3/ResponseBody;

    move-result-object v0

    .line 479
    .local v0, "body":Lccsanokhttp3/ResponseBody;
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_14

    .line 481
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .local v5, "source":Lccsanokio/BufferedSource;
    :try_start_1b
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    move/from16 v32, v2

    .end local v2    # "reconnectRetries":I
    .local v32, "reconnectRetries":I
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    move/from16 v23, v13

    .end local v13    # "code":I
    .local v23, "code":I
    :try_start_1d
    const-string v13, "Start download from bytes: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    move-object/from16 v33, v4

    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .local v33, "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :try_start_1e
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 482
    invoke-static {v13, v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-static {v6, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-wide/from16 v24, v14

    .line 485
    .local v24, "offset":J
    move-wide/from16 v36, v14

    move-wide/from16 v13, v24

    .end local v14    # "downloaded":J
    .end local v24    # "offset":J
    .local v13, "offset":J
    .local v36, "downloaded":J
    add-long/2addr v11, v13

    .line 487
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "final offset = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 489
    cmp-long v2, v13, v26

    if-nez v2, :cond_1c

    :try_start_1f
    invoke-static {v9}, Lccsanokio/Okio;->sink(Ljava/io/File;)Lccsanokio/Sink;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    goto :goto_d

    .line 551
    .end local v0    # "body":Lccsanokhttp3/ResponseBody;
    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "contentLength":J
    .end local v13    # "offset":J
    .end local v22    # "headers":Lccsanokhttp3/Headers;
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v36    # "downloaded":J
    :catchall_a
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v4, v33

    move-object/from16 v23, v10

    goto/16 :goto_1a

    .line 489
    .restart local v0    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "contentLength":J
    .restart local v13    # "offset":J
    .restart local v22    # "headers":Lccsanokhttp3/Headers;
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v36    # "downloaded":J
    :cond_1c
    :try_start_20
    invoke-static {v9}, Lccsanokio/Okio;->appendingSink(Ljava/io/File;)Lccsanokio/Sink;

    move-result-object v2

    :goto_d
    invoke-static {v2}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v2

    move-object/from16 v17, v2

    .line 492
    const/4 v2, 0x0

    iput v2, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 493
    move-object v2, v7

    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    iput-wide v6, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 494
    iput-wide v13, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 496
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v6, v3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1900(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 497
    const/4 v4, 0x0

    .line 499
    .local v4, "current":I
    :goto_e
    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-eqz v6, :cond_22

    .line 500
    :try_start_21
    invoke-interface/range {v17 .. v17}, Lccsanokio/BufferedSink;->buffer()Lccsanokio/Buffer;

    move-result-object v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    move-object v15, v8

    .end local v8    # "metaFile":Ljava/io/File;
    .local v15, "metaFile":Ljava/io/File;
    const-wide/16 v7, 0x800

    :try_start_22
    invoke-interface {v5, v6, v7, v8}, Lccsanokio/BufferedSource;->read(Lccsanokio/Buffer;J)J

    move-result-wide v6

    move-wide/from16 v24, v6

    .local v24, "read":J
    const-wide/16 v38, -0x1

    cmp-long v8, v6, v38

    if-eqz v8, :cond_21

    .line 502
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 508
    invoke-interface/range {v17 .. v17}, Lccsanokio/BufferedSink;->emit()Lccsanokio/BufferedSink;

    .line 510
    add-long v19, v19, v24

    .line 512
    add-long v36, v13, v19

    .line 514
    const-wide/16 v6, 0x64

    cmp-long v8, v11, v26

    if-lez v8, :cond_1d

    .line 515
    mul-long v38, v36, v6

    div-long v6, v38, v11

    long-to-int v4, v6

    .line 518
    :cond_1d
    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 525
    :goto_f
    iget v6, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2000(Lccsancom/vungle/warren/downloader/AssetDownloader;)I

    move-result v7

    add-int/2addr v6, v7

    if-gt v6, v4, :cond_1e

    iget v6, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 526
    invoke-static {v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2000(Lccsancom/vungle/warren/downloader/AssetDownloader;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/16 v38, 0x64

    cmp-long v8, v6, v38

    if-gtz v8, :cond_1e

    .line 528
    const/4 v6, 0x1

    iput v6, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 529
    iget v6, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2000(Lccsancom/vungle/warren/downloader/AssetDownloader;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 530
    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v7, v3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1900(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    goto :goto_f

    .line 499
    .end local v24    # "read":J
    :cond_1e
    move-object v8, v15

    goto :goto_e

    .line 519
    .restart local v24    # "read":J
    :cond_1f
    const-string v6, "AssetDownloader#load; loadAd sequence"

    const-string v7, "mediator %s is not connected"

    move-object/from16 v26, v0

    const/4 v8, 0x1

    .end local v0    # "body":Lccsanokhttp3/ResponseBody;
    .local v26, "body":Lccsanokhttp3/ResponseBody;
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v8, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    move/from16 v18, v4

    .end local v4    # "current":I
    .local v18, "current":I
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 521
    invoke-static {v8, v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v0, v8

    .line 520
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Request is not connected"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v5    # "source":Lccsanokio/BufferedSource;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v15    # "metaFile":Ljava/io/File;
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "code":I
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    throw v0

    .line 503
    .end local v18    # "current":I
    .end local v26    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v0    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v4    # "current":I
    .restart local v5    # "source":Lccsanokio/BufferedSource;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v15    # "metaFile":Ljava/io/File;
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :cond_20
    move-object/from16 v26, v0

    .end local v0    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v26    # "body":Lccsanokhttp3/ResponseBody;
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v6, "file %s does not exist"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v8, v7

    .line 504
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 503
    invoke-static {v0, v6}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v0, Lccsancom/vungle/warren/downloader/Downloader$RequestException;

    const-string v6, "File is not existing"

    invoke-direct {v0, v6}, Lccsancom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v5    # "source":Lccsanokio/BufferedSource;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v15    # "metaFile":Ljava/io/File;
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "code":I
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 500
    .end local v26    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v0    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v5    # "source":Lccsanokio/BufferedSource;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v15    # "metaFile":Ljava/io/File;
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :cond_21
    move-object/from16 v26, v0

    .end local v0    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v26    # "body":Lccsanokhttp3/ResponseBody;
    goto :goto_10

    .line 551
    .end local v2    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "current":I
    .end local v11    # "contentLength":J
    .end local v13    # "offset":J
    .end local v22    # "headers":Lccsanokhttp3/Headers;
    .end local v24    # "read":J
    .end local v26    # "body":Lccsanokhttp3/ResponseBody;
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v36    # "downloaded":J
    :catchall_b
    move-exception v0

    move-object/from16 v18, v5

    move-object v8, v15

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v4, v33

    move-object/from16 v23, v10

    goto/16 :goto_1a

    .end local v15    # "metaFile":Ljava/io/File;
    .restart local v8    # "metaFile":Ljava/io/File;
    :catchall_c
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v4, v33

    move-object/from16 v23, v10

    .end local v8    # "metaFile":Ljava/io/File;
    .restart local v15    # "metaFile":Ljava/io/File;
    goto/16 :goto_1a

    .line 499
    .end local v15    # "metaFile":Ljava/io/File;
    .restart local v0    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v2    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "current":I
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v11    # "contentLength":J
    .restart local v13    # "offset":J
    .restart local v22    # "headers":Lccsanokhttp3/Headers;
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v36    # "downloaded":J
    :cond_22
    move-object/from16 v26, v0

    move-object v15, v8

    .line 534
    .end local v0    # "body":Lccsanokhttp3/ResponseBody;
    .end local v8    # "metaFile":Ljava/io/File;
    .restart local v15    # "metaFile":Ljava/io/File;
    .restart local v26    # "body":Lccsanokhttp3/ResponseBody;
    :goto_10
    :try_start_23
    invoke-interface/range {v17 .. v17}, Lccsanokio/BufferedSink;->flush()V

    .line 536
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    if-eqz v0, :cond_23

    .line 538
    :try_start_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 539
    .local v6, "now":J
    const-string v0, "DOWNLOAD_COMPLETE"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v0, "Last-Cache-Verification"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v0, "Last-Download"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    move-object v8, v15

    .end local v15    # "metaFile":Ljava/io/File;
    .restart local v8    # "metaFile":Ljava/io/File;
    :try_start_25
    invoke-static {v0, v8, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1300(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 544
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 545
    .end local v6    # "now":J
    goto :goto_11

    .line 551
    .end local v2    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "current":I
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v11    # "contentLength":J
    .end local v13    # "offset":J
    .end local v22    # "headers":Lccsanokhttp3/Headers;
    .end local v26    # "body":Lccsanokhttp3/ResponseBody;
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v36    # "downloaded":J
    .restart local v15    # "metaFile":Ljava/io/File;
    :catchall_d
    move-exception v0

    move-object v8, v15

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v4, v33

    move-object/from16 v23, v10

    .end local v15    # "metaFile":Ljava/io/File;
    .restart local v8    # "metaFile":Ljava/io/File;
    goto/16 :goto_1a

    .line 546
    .end local v8    # "metaFile":Ljava/io/File;
    .restart local v2    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "current":I
    .restart local v11    # "contentLength":J
    .restart local v13    # "offset":J
    .restart local v15    # "metaFile":Ljava/io/File;
    .restart local v22    # "headers":Lccsanokhttp3/Headers;
    .restart local v26    # "body":Lccsanokhttp3/ResponseBody;
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v36    # "downloaded":J
    :cond_23
    move-object v8, v15

    const/4 v15, 0x4

    .end local v15    # "metaFile":Ljava/io/File;
    .restart local v8    # "metaFile":Ljava/io/File;
    const/4 v0, 0x6

    :try_start_26
    iput v0, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 547
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v6, v3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1900(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 548
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "State has changed, cancelling download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v7, v15}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    .line 636
    .end local v2    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "current":I
    .end local v11    # "contentLength":J
    .end local v13    # "offset":J
    .end local v22    # "headers":Lccsanokhttp3/Headers;
    .end local v26    # "body":Lccsanokhttp3/ResponseBody;
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    :goto_11
    if-eqz v10, :cond_24

    invoke-virtual {v10}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 637
    invoke-virtual {v10}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_24
    if-eqz v21, :cond_25

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_25
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v16, :cond_27

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 663
    move-object/from16 v4, v33

    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .local v4, "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    if-nez v31, :cond_26

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_12

    .line 656
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :pswitch_c
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v4, v33

    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    invoke-static {v0, v4, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_12

    .line 653
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :pswitch_d
    move-object/from16 v4, v33

    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_12

    .line 659
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :pswitch_e
    move-object/from16 v4, v33

    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    goto :goto_12

    .line 651
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :pswitch_f
    move-object/from16 v4, v33

    .line 669
    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :cond_26
    :goto_12
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done with request in state "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v6, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 672
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :cond_27
    move-object/from16 v4, v33

    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removing connections and listener "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v6, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_13
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 678
    :try_start_27
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static {v5}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v16, :cond_29

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_29

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_14

    .line 689
    :cond_28
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 693
    .end local v5    # "source":Lccsanokio/BufferedSource;
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "code":I
    .end local v36    # "downloaded":J
    :cond_29
    :goto_14
    move/from16 v0, v16

    move/from16 v5, v31

    move/from16 v2, v32

    goto/16 :goto_27

    .line 679
    .restart local v5    # "source":Lccsanokio/BufferedSource;
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "code":I
    .restart local v36    # "downloaded":J
    :catchall_e
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    throw v0

    .line 551
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v36    # "downloaded":J
    .restart local v15    # "metaFile":Ljava/io/File;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :catchall_f
    move-exception v0

    move-object v8, v15

    move-object/from16 v4, v33

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v23, v10

    .end local v15    # "metaFile":Ljava/io/File;
    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v8    # "metaFile":Ljava/io/File;
    goto/16 :goto_1a

    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :catchall_10
    move-exception v0

    move-object/from16 v4, v33

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v23, v10

    .end local v33    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    goto/16 :goto_1a

    :catchall_11
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v23, v10

    goto/16 :goto_1a

    .end local v23    # "code":I
    .local v13, "code":I
    :catchall_12
    move-exception v0

    move/from16 v23, v13

    move-object/from16 v18, v5

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v23, v10

    .end local v13    # "code":I
    .restart local v23    # "code":I
    goto/16 :goto_1a

    .end local v23    # "code":I
    .end local v32    # "reconnectRetries":I
    .local v2, "reconnectRetries":I
    .restart local v13    # "code":I
    :catchall_13
    move-exception v0

    move/from16 v32, v2

    move/from16 v23, v13

    move-object/from16 v18, v5

    move/from16 v5, v23

    move-object/from16 v23, v10

    .end local v2    # "reconnectRetries":I
    .end local v13    # "code":I
    .restart local v23    # "code":I
    .restart local v32    # "reconnectRetries":I
    goto/16 :goto_1a

    .end local v5    # "source":Lccsanokio/BufferedSource;
    .end local v23    # "code":I
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .restart local v13    # "code":I
    .local v18, "source":Lccsanokio/BufferedSource;
    :catchall_14
    move-exception v0

    move/from16 v32, v2

    move/from16 v23, v13

    move/from16 v5, v23

    move-object/from16 v23, v10

    .end local v2    # "reconnectRetries":I
    .end local v13    # "code":I
    .restart local v23    # "code":I
    .restart local v32    # "reconnectRetries":I
    goto/16 :goto_1a

    .line 468
    .end local v23    # "code":I
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .local v0, "headers":Lccsanokhttp3/Headers;
    .restart local v2    # "reconnectRetries":I
    .local v5, "isPaused":Z
    .local v6, "url":Ljava/lang/String;
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "contentLength":J
    .restart local v13    # "code":I
    .restart local v14    # "downloaded":J
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    :cond_2a
    move-object/from16 v22, v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object v2, v7

    move/from16 v23, v13

    move-wide/from16 v36, v14

    .end local v0    # "headers":Lccsanokhttp3/Headers;
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "code":I
    .end local v14    # "downloaded":J
    .local v2, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "headers":Lccsanokhttp3/Headers;
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v36    # "downloaded":J
    :try_start_29
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v5, "response has no body %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v7, v6

    .line 469
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-static {v0, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Response body is null"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "code":I
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    .line 551
    .end local v2    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "contentLength":J
    .end local v22    # "headers":Lccsanokhttp3/Headers;
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v36    # "downloaded":J
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move/from16 v5, v23

    move/from16 v2, v32

    move-object/from16 v23, v10

    goto/16 :goto_1a

    .end local v23    # "code":I
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .local v2, "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v13    # "code":I
    :catchall_16
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move/from16 v23, v13

    move/from16 v5, v23

    move-object/from16 v23, v10

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v13    # "code":I
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    goto/16 :goto_1a

    .line 452
    .end local v23    # "code":I
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v11    # "contentLength":J
    .restart local v13    # "code":I
    .local v24, "downloaded":J
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move/from16 v23, v13

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v13    # "code":I
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    :try_start_2a
    new-instance v0, Lccsancom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    move/from16 v5, v23

    .end local v23    # "code":I
    .local v5, "code":I
    :try_start_2b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v5    # "code":I
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    throw v0

    .line 551
    .end local v11    # "contentLength":J
    .end local v24    # "downloaded":J
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "response":Lccsanokhttp3/Response;
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :catchall_17
    move-exception v0

    move/from16 v5, v23

    move-object/from16 v23, v10

    move/from16 v2, v32

    .end local v23    # "code":I
    .restart local v5    # "code":I
    goto/16 :goto_1a

    .line 421
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .local v5, "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "contentLength":J
    .restart local v13    # "code":I
    .local v15, "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v24    # "downloaded":J
    :cond_2c
    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    move v5, v13

    move-object/from16 v28, v15

    .line 424
    .end local v2    # "reconnectRetries":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "code":I
    .end local v15    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .local v5, "code":I
    .restart local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    :goto_15
    const/16 v0, 0x130

    if-ne v5, v0, :cond_2d

    .line 425
    const-string v0, "Last-Cache-Verification"

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 425
    move-object/from16 v6, v29

    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, v8, v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1300(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 428
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Verification success, dispatch existing file"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 431
    .end local v6    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2d
    move-object/from16 v6, v29

    .end local v29    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using local cache file despite response code = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v10}, Lccsanokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_16
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    .line 636
    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 637
    invoke-virtual {v10}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_2e
    if-eqz v21, :cond_2f

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_2f
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request is done "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v7, v13}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v16, :cond_31

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    .line 663
    if-nez v31, :cond_30

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_17

    .line 656
    :pswitch_10
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v4, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_17

    .line 653
    :pswitch_11
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_17

    .line 659
    :pswitch_12
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_30
    :goto_17
    :pswitch_13
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done with request in state "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v7, v13}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 672
    :cond_31
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not removing connections and listener "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v7, v13}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_18
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 678
    :try_start_2c
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v16, :cond_33

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_33

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_19

    .line 689
    :cond_32
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 437
    :cond_33
    :goto_19
    return-void

    .line 679
    :catchall_18
    move-exception v0

    :try_start_2d
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    throw v0

    .line 551
    .end local v6    # "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "contentLength":J
    .end local v24    # "downloaded":J
    .end local v28    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    :catchall_19
    move-exception v0

    move-object/from16 v23, v10

    move/from16 v2, v32

    goto/16 :goto_1a

    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .local v5, "isPaused":Z
    .local v6, "url":Ljava/lang/String;
    .restart local v13    # "code":I
    :catchall_1a
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move v5, v13

    move-object/from16 v23, v10

    .end local v2    # "reconnectRetries":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v13    # "code":I
    .local v5, "code":I
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    goto/16 :goto_1a

    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .local v5, "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .local v22, "code":I
    :catchall_1b
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v23, v10

    move/from16 v5, v22

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    goto/16 :goto_1a

    .end local v10    # "response":Lccsanokhttp3/Response;
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .local v23, "response":Lccsanokhttp3/Response;
    :catchall_1c
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move/from16 v5, v22

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    goto/16 :goto_1a

    .end local v8    # "metaFile":Ljava/io/File;
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .local v14, "metaFile":Ljava/io/File;
    :catchall_1d
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object v8, v14

    move/from16 v5, v22

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v14    # "metaFile":Ljava/io/File;
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    goto :goto_1a

    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v35    # "metPath":Ljava/lang/String;
    .restart local v2    # "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .local v8, "metPath":Ljava/lang/String;
    .restart local v14    # "metaFile":Ljava/io/File;
    :catchall_1e
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v35, v8

    move-object v8, v14

    move/from16 v5, v22

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v14    # "metaFile":Ljava/io/File;
    .local v8, "metaFile":Ljava/io/File;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v35    # "metPath":Ljava/lang/String;
    goto :goto_1a

    .line 375
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    .restart local v2    # "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .local v7, "path":Ljava/lang/String;
    .local v8, "metPath":Ljava/lang/String;
    .restart local v14    # "metaFile":Ljava/io/File;
    :cond_34
    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object v8, v14

    .end local v2    # "reconnectRetries":I
    .end local v5    # "isPaused":Z
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v14    # "metaFile":Ljava/io/File;
    .local v8, "metaFile":Ljava/io/File;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :try_start_2e
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Request is not connected to required network"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v2, "No connected to required network requests in %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 378
    invoke-static {v5, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 377
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {v0, v2}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not connected to correct network"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v22    # "code":I
    .end local v23    # "response":Lccsanokhttp3/Response;
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1f

    .line 551
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v22    # "code":I
    .restart local v23    # "response":Lccsanokhttp3/Response;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v32    # "reconnectRetries":I
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :catchall_1f
    move-exception v0

    move/from16 v5, v22

    move/from16 v2, v32

    goto :goto_1a

    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v32    # "reconnectRetries":I
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    .restart local v2    # "reconnectRetries":I
    .restart local v5    # "isPaused":Z
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .local v8, "metPath":Ljava/lang/String;
    .restart local v14    # "metaFile":Ljava/io/File;
    :catchall_20
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object v8, v14

    move/from16 v5, v22

    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v14    # "metaFile":Ljava/io/File;
    .end local v22    # "code":I
    .local v5, "code":I
    .local v8, "metaFile":Ljava/io/File;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :goto_1a
    move-object v6, v0

    .line 552
    .local v6, "throwable":Ljava/lang/Throwable;
    :try_start_2f
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v7, "exception, cannot load due to %1$s, state is %2$s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 554
    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 553
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 552
    invoke-static {v0, v7}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Exception on download"

    invoke-static {v0, v7, v6}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    const/4 v10, 0x5

    if-nez v0, :cond_35

    .line 557
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 560
    :cond_35
    instance-of v0, v6, Ljava/io/IOException;

    if-eqz v0, :cond_44

    .line 561
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v11}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    move v11, v0

    .line 564
    .local v11, "connected":Z
    if-nez v11, :cond_3d

    if-nez v23, :cond_3d

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 565
    invoke-static {v0, v8}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$600(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v13

    const/4 v14, -0x1

    invoke-static {v0, v12, v9, v13, v14}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1200(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 567
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 568
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_26

    .line 636
    :cond_36
    if-eqz v23, :cond_37

    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 637
    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_37
    if-eqz v21, :cond_38

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_38
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request is done "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v10, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v16, :cond_3a

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    .line 663
    if-nez v31, :cond_39

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_1b

    .line 656
    :pswitch_14
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v4, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_1b

    .line 653
    :pswitch_15
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_1b

    .line 659
    :pswitch_16
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_39
    :goto_1b
    :pswitch_17
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Done with request in state "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v10, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 669
    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 672
    :cond_3a
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not removing connections and listener "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v10, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_1c
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v7

    .line 678
    :try_start_30
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_21

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v16, :cond_3c

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_3c

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_1d

    .line 689
    :cond_3b
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 571
    :cond_3c
    :goto_1d
    return-void

    .line 679
    :catchall_21
    move-exception v0

    :try_start_31
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_21

    throw v0

    .line 575
    :cond_3d
    :try_start_32
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v11}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 577
    new-instance v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 578
    invoke-static {v12, v6, v11}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2100(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I

    move-result v12

    invoke-direct {v0, v5, v6, v12}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    move-object v4, v0

    .line 580
    if-nez v11, :cond_41

    .line 581
    iput v10, v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 582
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v10, v3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1900(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 584
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_26

    if-nez v0, :cond_41

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "reconnectRetries":I
    .local v10, "reconnectRetries":I
    :try_start_33
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget v0, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v2, v0, :cond_40

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget v2, v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I

    if-ge v0, v2, :cond_40

    .line 589
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget v12, v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    int-to-long v12, v12

    invoke-static {v2, v12, v13}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2200(Lccsancom/vungle/warren/downloader/AssetDownloader;J)V

    .line 591
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 592
    goto :goto_1f

    .line 595
    :cond_3e
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v12, "Trying to reconnect"

    invoke-static {v2, v12}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 598
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Reconnected, starting download again"

    invoke-static {v2, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/16 v16, 0x0

    .line 600
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 601
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2, v7}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 602
    move v2, v10

    goto :goto_20

    .line 605
    :cond_3f
    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_22

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 610
    .end local v0    # "i":I
    :cond_40
    :goto_1f
    move v2, v10

    goto :goto_20

    .line 636
    .end local v6    # "throwable":Ljava/lang/Throwable;
    .end local v11    # "connected":Z
    :catchall_22
    move-exception v0

    move-object v6, v4

    move v2, v10

    move/from16 v7, v31

    goto/16 :goto_28

    .line 610
    .end local v10    # "reconnectRetries":I
    .restart local v2    # "reconnectRetries":I
    .restart local v6    # "throwable":Ljava/lang/Throwable;
    .restart local v11    # "connected":Z
    :cond_41
    :goto_20
    :try_start_34
    iget-object v7, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v7
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_26

    .line 612
    if-eqz v16, :cond_43

    :try_start_35
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 613
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 614
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Reconnected, starting download again"

    invoke-static {v0, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_24

    .line 615
    const/4 v10, 0x0

    .line 616
    .end local v16    # "done":Z
    .local v10, "done":Z
    :try_start_36
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 617
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v12}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_23

    move/from16 v16, v10

    goto :goto_21

    .line 622
    :catchall_23
    move-exception v0

    move/from16 v16, v10

    goto :goto_22

    .line 619
    .end local v10    # "done":Z
    .restart local v16    # "done":Z
    :cond_42
    :try_start_37
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v10, v3, v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2300(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result v0

    move/from16 v31, v0

    .line 622
    :cond_43
    :goto_21
    monitor-exit v7

    .line 624
    .end local v11    # "connected":Z
    move v6, v2

    move-object v7, v4

    move/from16 v10, v16

    move/from16 v11, v31

    goto :goto_23

    .line 622
    .restart local v11    # "connected":Z
    :catchall_24
    move-exception v0

    :goto_22
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_24

    .end local v2    # "reconnectRetries":I
    .end local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v5    # "code":I
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "response":Lccsanokhttp3/Response;
    .end local v30    # "url":Ljava/lang/String;
    .end local v31    # "isPaused":Z
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    :try_start_38
    throw v0

    .line 624
    .end local v11    # "connected":Z
    .restart local v2    # "reconnectRetries":I
    .restart local v3    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v5    # "code":I
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v16    # "done":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "response":Lccsanokhttp3/Response;
    .restart local v30    # "url":Ljava/lang/String;
    .restart local v31    # "isPaused":Z
    .restart local v34    # "path":Ljava/lang/String;
    .restart local v35    # "metPath":Ljava/lang/String;
    :cond_44
    instance-of v0, v6, Lccsancom/vungle/warren/downloader/Downloader$RequestException;

    if-eqz v0, :cond_45

    .line 625
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    const/4 v7, 0x1

    invoke-static {v0, v9, v8, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1500(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 626
    new-instance v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {v0, v5, v6, v7}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    move-object v4, v0

    move v6, v2

    move-object v7, v4

    move/from16 v10, v16

    move/from16 v11, v31

    goto :goto_23

    .line 629
    :cond_45
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    const/4 v7, 0x1

    invoke-static {v0, v9, v8, v7}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$1500(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 630
    new-instance v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v7, 0x4

    invoke-direct {v0, v5, v6, v7}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_26

    move-object v4, v0

    move v6, v2

    move-object v7, v4

    move/from16 v10, v16

    move/from16 v11, v31

    .line 636
    .end local v2    # "reconnectRetries":I
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v16    # "done":Z
    .end local v31    # "isPaused":Z
    .local v6, "reconnectRetries":I
    .local v7, "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v10    # "done":Z
    .local v11, "isPaused":Z
    :goto_23
    if-eqz v23, :cond_46

    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 637
    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_46
    if-eqz v21, :cond_47

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_47
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v10, :cond_49

    .line 648
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    .line 663
    if-nez v11, :cond_48

    .line 664
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_24

    .line 656
    :pswitch_18
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_24

    .line 653
    :pswitch_19
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v9, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_24

    .line 659
    :pswitch_1a
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_48
    :goto_24
    :pswitch_1b
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v4, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 672
    :cond_49
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not removing connections and listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v4, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_25
    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v12

    .line 678
    :try_start_39
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v12
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_25

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v10, :cond_4b

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_4b

    .line 685
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 687
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_26

    .line 689
    :cond_4a
    iget-object v0, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 693
    .end local v5    # "code":I
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "response":Lccsanokhttp3/Response;
    :cond_4b
    :goto_26
    move v2, v6

    move-object v4, v7

    move v0, v10

    move v5, v11

    .end local v6    # "reconnectRetries":I
    .end local v7    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v10    # "done":Z
    .end local v11    # "isPaused":Z
    .local v0, "done":Z
    .restart local v2    # "reconnectRetries":I
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .local v5, "isPaused":Z
    :goto_27
    move-object v14, v8

    move-object/from16 v6, v30

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    goto/16 :goto_0

    .line 679
    .end local v0    # "done":Z
    .end local v2    # "reconnectRetries":I
    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .local v5, "code":I
    .restart local v6    # "reconnectRetries":I
    .restart local v7    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v10    # "done":Z
    .restart local v11    # "isPaused":Z
    .restart local v17    # "sink":Lccsanokio/BufferedSink;
    .restart local v18    # "source":Lccsanokio/BufferedSource;
    .restart local v19    # "totalRead":J
    .restart local v21    # "call":Lccsanokhttp3/Call;
    .restart local v23    # "response":Lccsanokhttp3/Response;
    :catchall_25
    move-exception v0

    :try_start_3a
    monitor-exit v12
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_25

    throw v0

    .line 636
    .end local v6    # "reconnectRetries":I
    .end local v7    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v10    # "done":Z
    .end local v11    # "isPaused":Z
    .restart local v2    # "reconnectRetries":I
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .restart local v16    # "done":Z
    .restart local v31    # "isPaused":Z
    :catchall_26
    move-exception v0

    move-object v6, v4

    move/from16 v7, v31

    .end local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v31    # "isPaused":Z
    .local v6, "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .local v7, "isPaused":Z
    :goto_28
    if-eqz v23, :cond_4c

    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 637
    invoke-virtual/range {v23 .. v23}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lccsanokhttp3/ResponseBody;->close()V

    .line 640
    :cond_4c
    if-eqz v21, :cond_4d

    .line 641
    invoke-interface/range {v21 .. v21}, Lccsanokhttp3/Call;->cancel()V

    .line 644
    :cond_4d
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request is done "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v16, :cond_4f

    .line 648
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_7

    .line 663
    if-nez v7, :cond_4e

    .line 664
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_29

    .line 656
    :pswitch_1c
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v6, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 657
    goto :goto_29

    .line 653
    :pswitch_1d
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v9, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 654
    goto :goto_29

    .line 659
    :pswitch_1e
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v10}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 660
    nop

    .line 669
    :cond_4e
    :goto_29
    :pswitch_1f
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Done with request in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v11}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 670
    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 669
    invoke-static {v4, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 672
    :cond_4f
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not removing connections and listener "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 673
    invoke-static {v11, v12}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 672
    invoke-static {v4, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_2a
    iget-object v10, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v10

    .line 678
    :try_start_3b
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    .line 679
    monitor-exit v10
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_27

    .line 681
    invoke-static/range {v17 .. v17}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 682
    invoke-static/range {v18 .. v18}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 684
    if-eqz v16, :cond_51

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v4

    if-eqz v4, :cond_51

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v4, v4, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v4, :cond_51

    .line 685
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v4

    invoke-interface {v4, v9}, Lccsancom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 686
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_50

    .line 687
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v4

    invoke-interface {v4}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_2b

    .line 689
    :cond_50
    iget-object v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;

    move-result-object v4

    invoke-interface {v4}, Lccsancom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 692
    :cond_51
    :goto_2b
    throw v0

    .line 679
    :catchall_27
    move-exception v0

    :try_start_3c
    monitor-exit v10
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_27

    throw v0

    .line 694
    .end local v16    # "done":Z
    .end local v17    # "sink":Lccsanokio/BufferedSink;
    .end local v18    # "source":Lccsanokio/BufferedSource;
    .end local v19    # "totalRead":J
    .end local v21    # "call":Lccsanokhttp3/Call;
    .end local v23    # "response":Lccsanokhttp3/Response;
    .end local v30    # "url":Ljava/lang/String;
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "metPath":Ljava/lang/String;
    .restart local v0    # "done":Z
    .restart local v4    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .local v5, "isPaused":Z
    .local v6, "url":Ljava/lang/String;
    .local v7, "path":Ljava/lang/String;
    .local v8, "metPath":Ljava/lang/String;
    .restart local v14    # "metaFile":Ljava/io/File;
    :cond_52
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method
