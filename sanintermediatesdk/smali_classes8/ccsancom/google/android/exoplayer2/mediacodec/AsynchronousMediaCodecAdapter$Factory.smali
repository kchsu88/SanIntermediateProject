.class public final Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final callbackThreadSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsanandroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final queueingThreadSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsanandroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "trackType"    # I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(IZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "trackType"    # I
    .param p2, "synchronizeCodecInteractionsWithQueueing"    # Z

    .line 70
    new-instance v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0, v1, p2}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Z)V

    .line 76
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Z)V
    .locals 0
    .param p3, "synchronizeCodecInteractionsWithQueueing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsanandroid/os/HandlerThread;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsanandroid/os/HandlerThread;",
            ">;Z)V"
        }
    .end annotation

    .line 82
    .local p1, "callbackThreadSupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsanandroid/os/HandlerThread;>;"
    .local p2, "queueingThreadSupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsanandroid/os/HandlerThread;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lccsancom/google/common/base/Supplier;

    .line 84
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lccsancom/google/common/base/Supplier;

    .line 85
    iput-boolean p3, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->synchronizeCodecInteractionsWithQueueing:Z

    .line 86
    return-void
.end method

.method static synthetic lambda$new$0(I)Lccsanandroid/os/HandlerThread;
    .locals 2
    .param p0, "trackType"    # I

    .line 72
    new-instance v0, Lccsanandroid/os/HandlerThread;

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$300(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(I)Lccsanandroid/os/HandlerThread;
    .locals 2
    .param p0, "trackType"    # I

    .line 74
    new-instance v0, Lccsanandroid/os/HandlerThread;

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$200(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createAdapter(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;
    .locals 18
    .param p1, "configuration"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 92
    .local v3, "codecName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 93
    .local v4, "codecAdapter":Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;
    const/4 v5, 0x0

    .line 95
    .local v5, "codec":Lccsanandroid/media/MediaCodec;
    :try_start_0
    const-string v0, "createCodec:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 96
    invoke-static {v3}, Lccsanandroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Lccsanandroid/media/MediaCodec;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v5    # "codec":Lccsanandroid/media/MediaCodec;
    .local v7, "codec":Lccsanandroid/media/MediaCodec;
    :try_start_1
    new-instance v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v5, v1, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lccsancom/google/common/base/Supplier;

    .line 100
    invoke-interface {v5}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lccsanandroid/os/HandlerThread;

    iget-object v5, v1, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lccsancom/google/common/base/Supplier;

    .line 101
    invoke-interface {v5}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lccsanandroid/os/HandlerThread;

    iget-boolean v10, v1, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/os/HandlerThread;Lccsanandroid/os/HandlerThread;ZLccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$1;)V

    move-object v4, v0

    .line 103
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 104
    iget-object v13, v2, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Lccsanandroid/media/MediaFormat;

    iget-object v14, v2, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Lccsanandroid/view/Surface;

    iget-object v15, v2, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Lccsanandroid/media/MediaCrypto;

    iget v0, v2, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    iget-boolean v5, v2, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createInputSurface:Z

    move-object v12, v4

    move/from16 v16, v0

    move/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;Lccsanandroid/media/MediaFormat;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    return-object v4

    .line 111
    :catch_0
    move-exception v0

    move-object v5, v7

    goto :goto_1

    .end local v7    # "codec":Lccsanandroid/media/MediaCodec;
    .restart local v5    # "codec":Lccsanandroid/media/MediaCodec;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    if-nez v4, :cond_1

    .line 114
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5}, Lccsanandroid/media/MediaCodec;->release()V

    goto :goto_2

    .line 113
    :cond_1
    invoke-virtual {v4}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    .line 117
    :cond_2
    :goto_2
    throw v0
.end method

.method public bridge synthetic createAdapter(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method
