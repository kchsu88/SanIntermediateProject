.class Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader$1;
.super Lccsancom/google/android/exoplayer2/util/RunnableFutureTask;
.source "ProgressiveDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;->download(Lccsancom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;


# direct methods
.method constructor <init>(Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;

    .line 92
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->this$0:Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;

    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 1

    .line 101
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->this$0:Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;->access$000(Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;)Lccsancom/google/android/exoplayer2/upstream/cache/CacheWriter;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheWriter;->cancel()V

    .line 102
    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->doWork()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->this$0:Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;->access$000(Lccsancom/google/android/exoplayer2/offline/ProgressiveDownloader;)Lccsancom/google/android/exoplayer2/upstream/cache/CacheWriter;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache()V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method
