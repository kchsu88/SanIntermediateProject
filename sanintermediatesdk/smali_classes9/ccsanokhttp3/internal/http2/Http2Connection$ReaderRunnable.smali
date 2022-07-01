.class Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lccsanokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lccsanokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lccsanokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lccsanokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/http2/Http2Connection;Lccsanokhttp3/internal/http2/Http2Reader;)V
    .locals 3
    .param p1, "this$0"    # Lccsanokhttp3/internal/http2/Http2Connection;
    .param p2, "reader"    # Lccsanokhttp3/internal/http2/Http2Reader;

    .line 657
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    .line 658
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Lccsanokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lccsanokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iput-object p2, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lccsanokhttp3/internal/http2/Http2Reader;

    .line 660
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 811
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lccsanokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lccsanokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 884
    return-void
.end method

.method applyAndAckSettings(ZLccsanokhttp3/internal/http2/Settings;)V
    .locals 9
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lccsanokhttp3/internal/http2/Settings;

    .line 774
    const-wide/16 v0, 0x0

    .line 775
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 776
    .local v2, "streamsToNotify":[Lccsanokhttp3/internal/http2/Http2Stream;
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lccsanokhttp3/internal/http2/Http2Connection;->writer:Lccsanokhttp3/internal/http2/Http2Writer;

    monitor-enter v3

    .line 777
    :try_start_0
    iget-object v4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 778
    :try_start_1
    iget-object v5, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lccsanokhttp3/internal/http2/Http2Connection;->peerSettings:Lccsanokhttp3/internal/http2/Settings;

    invoke-virtual {v5}, Lccsanokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v5

    .line 779
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Connection;->peerSettings:Lccsanokhttp3/internal/http2/Settings;

    invoke-virtual {v6}, Lccsanokhttp3/internal/http2/Settings;->clear()V

    .line 780
    :cond_0
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Connection;->peerSettings:Lccsanokhttp3/internal/http2/Settings;

    invoke-virtual {v6, p2}, Lccsanokhttp3/internal/http2/Settings;->merge(Lccsanokhttp3/internal/http2/Settings;)V

    .line 781
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Connection;->peerSettings:Lccsanokhttp3/internal/http2/Settings;

    invoke-virtual {v6}, Lccsanokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v6

    .line 782
    .local v6, "peerInitialWindowSize":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-eq v6, v5, :cond_2

    .line 783
    sub-int v7, v6, v5

    int-to-long v0, v7

    .line 784
    iget-object v7, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lccsanokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 785
    iget-object v7, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lccsanokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v8, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lccsanokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lccsanokhttp3/internal/http2/Http2Stream;

    goto :goto_0

    .line 786
    :cond_1
    const/4 v7, 0x0

    :goto_0
    move-object v2, v7

    .line 788
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "peerInitialWindowSize":I
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    :try_start_2
    iget-object v4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lccsanokhttp3/internal/http2/Http2Connection;->writer:Lccsanokhttp3/internal/http2/Http2Writer;

    iget-object v5, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lccsanokhttp3/internal/http2/Http2Connection;->peerSettings:Lccsanokhttp3/internal/http2/Settings;

    invoke-virtual {v4, v5}, Lccsanokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lccsanokhttp3/internal/http2/Settings;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 793
    goto :goto_1

    .line 791
    :catch_0
    move-exception v4

    .line 792
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v5, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v5, v4}, Lccsanokhttp3/internal/http2/Http2Connection;->access$000(Lccsanokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 794
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 795
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 796
    array-length v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 797
    .local v6, "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    monitor-enter v6

    .line 798
    :try_start_4
    invoke-virtual {v6, v0, v1}, Lccsanokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 799
    monitor-exit v6

    .line 796
    .end local v6    # "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 799
    .restart local v6    # "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 802
    .end local v6    # "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_3
    invoke-static {}, Lccsanokhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v6, "OkHttp %s settings"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lccsanokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-direct {v5, p0, v6, v7}, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 807
    return-void

    .line 788
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "delta":J
    .end local v2    # "streamsToNotify":[Lccsanokhttp3/internal/http2/Http2Stream;
    .end local p1    # "clearPrevious":Z
    .end local p2    # "settings":Lccsanokhttp3/internal/http2/Settings;
    :try_start_6
    throw v5

    .line 794
    .restart local v0    # "delta":J
    .restart local v2    # "streamsToNotify":[Lccsanokhttp3/internal/http2/Http2Stream;
    .restart local p1    # "clearPrevious":Z
    .restart local p2    # "settings":Lccsanokhttp3/internal/http2/Settings;
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

.method public data(ZILccsanokio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lccsanokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lccsanokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->pushDataLater(ILccsanokio/BufferedSource;IZ)V

    .line 686
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lccsanokhttp3/internal/http2/Http2Connection;->getStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 689
    .local v0, "dataStream":Lccsanokhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_1

    .line 690
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    sget-object v2, Lccsanokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lccsanokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILccsanokhttp3/internal/http2/ErrorCode;)V

    .line 691
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Lccsanokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 692
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lccsanokio/BufferedSource;->skip(J)V

    .line 693
    return-void

    .line 695
    :cond_1
    invoke-virtual {v0, p3, p4}, Lccsanokhttp3/internal/http2/Http2Stream;->receiveData(Lccsanokio/BufferedSource;I)V

    .line 696
    if-eqz p1, :cond_2

    .line 697
    sget-object v1, Lccsanokhttp3/internal/Util;->EMPTY_HEADERS:Lccsanokhttp3/Headers;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lccsanokhttp3/Headers;Z)V

    .line 699
    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 5

    .line 663
    sget-object v0, Lccsanokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    .line 664
    .local v0, "connectionErrorCode":Lccsanokhttp3/internal/http2/ErrorCode;
    sget-object v1, Lccsanokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    .line 665
    .local v1, "streamErrorCode":Lccsanokhttp3/internal/http2/ErrorCode;
    const/4 v2, 0x0

    .line 667
    .local v2, "errorException":Ljava/io/IOException;
    :try_start_0
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lccsanokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v3, p0}, Lccsanokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lccsanokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 668
    :goto_0
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lccsanokhttp3/internal/http2/Http2Reader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p0}, Lccsanokhttp3/internal/http2/Http2Reader;->nextFrame(ZLccsanokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    sget-object v3, Lccsanokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    move-object v0, v3

    .line 671
    sget-object v3, Lccsanokhttp3/internal/http2/ErrorCode;->CANCEL:Lccsanokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_1

    .line 677
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 672
    :catch_0
    move-exception v3

    .line 673
    .local v3, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 674
    :try_start_1
    sget-object v4, Lccsanokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    move-object v0, v4

    .line 675
    sget-object v4, Lccsanokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 677
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v1, v2}, Lccsanokhttp3/internal/http2/Http2Connection;->close(Lccsanokhttp3/internal/http2/ErrorCode;Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 678
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lccsanokhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 679
    nop

    .line 680
    return-void

    .line 677
    :goto_2
    iget-object v4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v0, v1, v2}, Lccsanokhttp3/internal/http2/Http2Connection;->close(Lccsanokhttp3/internal/http2/ErrorCode;Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 678
    iget-object v4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lccsanokhttp3/internal/http2/Http2Reader;

    invoke-static {v4}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method public goAway(ILccsanokhttp3/internal/http2/ErrorCode;Lccsanokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lccsanokhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lccsanokio/ByteString;

    .line 836
    invoke-virtual {p3}, Lccsanokio/ByteString;->size()I

    .line 841
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 842
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lccsanokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lccsanokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lccsanokhttp3/internal/http2/Http2Stream;

    .line 843
    .local v1, "streamsCopy":[Lccsanokhttp3/internal/http2/Http2Stream;
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lccsanokhttp3/internal/http2/Http2Connection;->access$302(Lccsanokhttp3/internal/http2/Http2Connection;Z)Z

    .line 844
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 848
    .local v3, "http2Stream":Lccsanokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v3}, Lccsanokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lccsanokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    sget-object v4, Lccsanokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4}, Lccsanokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lccsanokhttp3/internal/http2/ErrorCode;)V

    .line 850
    iget-object v4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lccsanokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lccsanokhttp3/internal/http2/Http2Connection;->removeStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    .line 847
    .end local v3    # "http2Stream":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    :cond_1
    return-void

    .line 844
    .end local v1    # "streamsCopy":[Lccsanokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 11
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lccsanokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 703
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lccsanokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p4, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    .line 705
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lccsanokhttp3/internal/http2/Http2Connection;->getStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    move-result-object v1

    .line 711
    .local v1, "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    if-nez v1, :cond_4

    .line 713
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v2}, Lccsanokhttp3/internal/http2/Http2Connection;->access$300(Lccsanokhttp3/internal/http2/Http2Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    .line 716
    :cond_1
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v2, v2, Lccsanokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v2, :cond_2

    monitor-exit v0

    return-void

    .line 719
    :cond_2
    rem-int/lit8 v2, p2, 0x2

    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v3, v3, Lccsanokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    monitor-exit v0

    return-void

    .line 722
    :cond_3
    invoke-static {p4}, Lccsanokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lccsanokhttp3/Headers;

    move-result-object v10

    .line 723
    .local v10, "headers":Lccsanokhttp3/Headers;
    new-instance v2, Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v7, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    const/4 v8, 0x0

    move-object v5, v2

    move v6, p2

    move v9, p1

    invoke-direct/range {v5 .. v10}, Lccsanokhttp3/internal/http2/Http2Stream;-><init>(ILccsanokhttp3/internal/http2/Http2Connection;ZZLccsanokhttp3/Headers;)V

    .line 725
    .local v2, "newStream":Lccsanokhttp3/internal/http2/Http2Stream;
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iput p2, v3, Lccsanokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 726
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lccsanokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-static {}, Lccsanokhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v5, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v6, "OkHttp %s stream %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lccsanokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    .line 728
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-direct {v5, p0, v6, v4, v2}, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lccsanokhttp3/internal/http2/Http2Stream;)V

    .line 727
    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 742
    monitor-exit v0

    return-void

    .line 744
    .end local v2    # "newStream":Lccsanokhttp3/internal/http2/Http2Stream;
    .end local v10    # "headers":Lccsanokhttp3/Headers;
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-static {p4}, Lccsanokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lccsanokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lccsanokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lccsanokhttp3/Headers;Z)V

    .line 748
    return-void

    .line 744
    .end local v1    # "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ping(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 814
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 815
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    .line 816
    if-ne p2, v0, :cond_0

    .line 817
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Connection;->access$108(Lccsanokhttp3/internal/http2/Http2Connection;)J

    goto :goto_0

    .line 824
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 818
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 819
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Connection;->access$608(Lccsanokhttp3/internal/http2/Http2Connection;)J

    goto :goto_0

    .line 820
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 821
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Connection;->access$708(Lccsanokhttp3/internal/http2/Http2Connection;)J

    .line 822
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 824
    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 828
    :cond_3
    :try_start_1
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lccsanokhttp3/internal/http2/Http2Connection;->access$500(Lccsanokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;

    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-direct {v2, v3, v0, p2, p3}, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lccsanokhttp3/internal/http2/Http2Connection;ZII)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 831
    goto :goto_2

    .line 829
    :catch_0
    move-exception v0

    .line 833
    :goto_2
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 874
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lccsanokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 878
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lccsanokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    .line 879
    return-void
.end method

.method public rstStream(ILccsanokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lccsanokhttp3/internal/http2/ErrorCode;

    .line 751
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lccsanokhttp3/internal/http2/Http2Connection;->pushResetLater(ILccsanokhttp3/internal/http2/ErrorCode;)V

    .line 753
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->removeStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 756
    .local v0, "rstStream":Lccsanokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {v0, p2}, Lccsanokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lccsanokhttp3/internal/http2/ErrorCode;)V

    .line 759
    :cond_1
    return-void
.end method

.method public settings(ZLccsanokhttp3/internal/http2/Settings;)V
    .locals 8
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lccsanokhttp3/internal/http2/Settings;

    .line 763
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Connection;->access$500(Lccsanokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v3, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lccsanokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLccsanokhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 771
    :goto_0
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 856
    if-nez p1, :cond_0

    .line 857
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 858
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-wide v2, v1, Lccsanokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lccsanokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 859
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 860
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 862
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->getStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 863
    .local v0, "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_1

    .line 864
    monitor-enter v0

    .line 865
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lccsanokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 866
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 869
    .end local v0    # "stream":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_1
    :goto_0
    return-void
.end method
