.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseTask;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$RetryAction;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final DONT_RETRY:I = 0x2

.field public static final DONT_RETRY_FATAL:I = 0x3

.field public static final RETRY:I = 0x0

.field public static final RETRY_RESET_ERROR_COUNT:I = 0x1


# instance fields
.field private currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask<",
            "+",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    return-object p0
.end method

.method static synthetic access$002(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;
    .locals 0

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final cancelLoading()V
    .locals 2

    .line 190
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 191
    return-void
.end method

.method public final isLoading()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 223
    return-void
.end method

.method public final maybeThrowError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_1

    .line 230
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 231
    iget p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    goto :goto_0

    :cond_0
    nop

    .line 230
    :goto_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->maybeThrowError(I)V

    .line 233
    :cond_1
    return-void

    .line 228
    :cond_2
    throw v0
.end method

.method public final release()V
    .locals 1

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->release(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 199
    return-void
.end method

.method public final release(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->currentTask:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseTask;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 216
    return-void
.end method

.method public final startLoading(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;",
            ">(TT;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback<",
            "TT;>;I)J"
        }
    .end annotation

    .line 171
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 174
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 175
    new-instance v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    .line 176
    return-wide v8
.end method
