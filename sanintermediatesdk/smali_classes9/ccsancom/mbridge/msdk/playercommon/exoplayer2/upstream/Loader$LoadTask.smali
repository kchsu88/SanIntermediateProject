.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;
.super Lccsanandroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;",
        ">",
        "Lccsanandroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final MSG_END_OF_SOURCE:I = 0x2

.field private static final MSG_FATAL_ERROR:I = 0x4

.field private static final MSG_IO_EXCEPTION:I = 0x3

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private volatile executorThread:Ljava/lang/Thread;

.field private final loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Looper;",
            "TT;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    .line 263
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 264
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    .line 265
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    .line 266
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 267
    iput-wide p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    .line 268
    return-void
.end method

.method private execute()V
    .locals 2

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 414
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method private finish()V
    .locals 2

    .line 418
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$002(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    .line 419
    return-void
.end method

.method private getRetryDelayMillis()J
    .locals 2

    .line 422
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 9

    .line 287
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 289
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->removeMessages(I)V

    .line 291
    if-nez p1, :cond_1

    .line 292
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 295
    :cond_0
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 296
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;->cancelLoad()V

    .line 297
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 301
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 302
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 303
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 304
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 309
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    .line 311
    :cond_2
    return-void
.end method

.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 9

    .line 366
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 370
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->execute()V

    .line 371
    return-void

    .line 373
    :cond_1
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 376
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 377
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 378
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v0

    .line 379
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 381
    return-void

    .line 383
    :cond_2
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 397
    :pswitch_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 398
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;->onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I

    move-result p1

    .line 399
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 400
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 401
    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 402
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 403
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    goto :goto_1

    .line 389
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;->onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_1

    .line 390
    :catch_0
    move-exception p1

    .line 392
    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    invoke-static {v0, v1, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    .line 395
    goto :goto_1

    .line 385
    :pswitch_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 386
    nop

    .line 410
    :cond_5
    :goto_1
    return-void

    .line 374
    :cond_6
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final maybeThrowError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    throw v0

    .line 274
    :cond_1
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 316
    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 317
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    if-nez v3, :cond_0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :try_start_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->loadable:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSection()V

    .line 323
    goto :goto_0

    .line 322
    :catchall_0
    move-exception v3

    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSection()V

    .line 323
    throw v3

    .line 325
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v3, :cond_2

    .line 326
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 352
    :catch_0
    move-exception v1

    .line 356
    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_1

    .line 358
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 360
    :cond_1
    throw v1

    .line 344
    :catch_1
    move-exception v1

    .line 348
    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_2

    .line 350
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 338
    :catch_2
    move-exception v1

    .line 340
    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_2

    .line 342
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 332
    :catch_3
    move-exception v0

    .line 334
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 335
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_2

    .line 336
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 328
    :catch_4
    move-exception v0

    .line 329
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_2

    .line 330
    invoke-virtual {p0, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 361
    :cond_2
    :goto_1
    nop

    .line 362
    return-void
.end method

.method public final start(J)V
    .locals 4

    .line 277
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 278
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->access$002(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;

    .line 279
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 280
    invoke-virtual {p0, v1, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 282
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$LoadTask;->execute()V

    .line 284
    :goto_1
    return-void
.end method