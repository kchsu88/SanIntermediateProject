.class public final Lccsanokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache;Lccsanokhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lccsanokhttp3/internal/cache/DiskLruCache;
    .param p2, "entry"    # Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    .line 831
    iput-object p1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    .line 833
    iget-boolean v0, p2, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Z

    :goto_0
    iput-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 834
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 930
    :try_start_0
    iget-boolean v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1

    .line 933
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_0

    .line 934
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lccsanokhttp3/internal/cache/DiskLruCache;->completeEdit(Lccsanokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 936
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 937
    monitor-exit v0

    .line 938
    return-void

    .line 931
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .line 941
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 942
    :try_start_0
    iget-boolean v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    .line 944
    :try_start_1
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lccsanokhttp3/internal/cache/DiskLruCache;->completeEdit(Lccsanokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    goto :goto_0

    .line 945
    :catch_0
    move-exception v1

    .line 948
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 949
    return-void

    .line 948
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-boolean v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1

    .line 917
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 918
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0, v2}, Lccsanokhttp3/internal/cache/DiskLruCache;->completeEdit(Lccsanokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 920
    :cond_0
    iput-boolean v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 921
    monitor-exit v0

    .line 922
    return-void

    .line 915
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method detach()V
    .locals 3

    .line 843
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1

    .line 844
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_0

    .line 846
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache;->fileSystem:Lccsanokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lccsanokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    goto :goto_1

    .line 847
    :catch_0
    move-exception v1

    .line 844
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    .line 853
    :cond_1
    return-void
.end method

.method public newSink(I)Lccsanokio/Sink;
    .locals 4
    .param p1, "index"    # I

    .line 881
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-boolean v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2

    .line 885
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v1, p0, :cond_0

    .line 886
    invoke-static {}, Lccsanokio/Okio;->blackhole()Lccsanokio/Sink;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 888
    :cond_0
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v1, :cond_1

    .line 889
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 891
    :cond_1
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    .local v1, "dirtyFile":Ljava/io/File;
    :try_start_1
    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lccsanokhttp3/internal/cache/DiskLruCache;->fileSystem:Lccsanokhttp3/internal/io/FileSystem;

    invoke-interface {v2, v1}, Lccsanokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lccsanokio/Sink;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    .local v2, "sink":Lccsanokio/Sink;
    nop

    .line 898
    :try_start_2
    new-instance v3, Lccsanokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lccsanokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lccsanokhttp3/internal/cache/DiskLruCache$Editor;Lccsanokio/Sink;)V

    monitor-exit v0

    return-object v3

    .line 895
    .end local v2    # "sink":Lccsanokio/Sink;
    :catch_0
    move-exception v2

    .line 896
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lccsanokio/Okio;->blackhole()Lccsanokio/Sink;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 883
    .end local v1    # "dirtyFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 905
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public newSource(I)Lccsanokio/Source;
    .locals 4
    .param p1, "index"    # I

    .line 860
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-boolean v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2

    .line 864
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    :try_start_1
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache;->fileSystem:Lccsanokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lccsanokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, p1

    invoke-interface {v1, v3}, Lccsanokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lccsanokio/Source;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v2

    .line 865
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 862
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 872
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
