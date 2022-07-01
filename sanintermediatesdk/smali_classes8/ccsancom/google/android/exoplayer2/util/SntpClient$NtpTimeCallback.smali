.class final Lccsancom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V
    .locals 0
    .param p1, "callback"    # Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    .line 313
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0
    .param p1, "loadable"    # Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 332
    return-void
.end method

.method public onLoadCompleted(Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 3
    .param p1, "loadable"    # Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 317
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/SntpClient;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitialized()V

    .line 326
    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadError(Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lccsancom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 1
    .param p1, "loadable"    # Lccsancom/google/android/exoplayer2/upstream/Loader$Loadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 341
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;->callback:Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p6}, Lccsancom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitializationFailed(Ljava/io/IOException;)V

    .line 344
    :cond_0
    sget-object v0, Lccsancom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lccsancom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v0
.end method
