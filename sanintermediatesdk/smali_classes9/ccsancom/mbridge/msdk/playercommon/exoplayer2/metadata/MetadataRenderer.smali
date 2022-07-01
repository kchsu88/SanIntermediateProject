.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_METADATA_COUNT:I = 0x5

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

.field private decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;

.field private final decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;

.field private final formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;

.field private final outputHandler:Lccsanandroid/os/Handler;

.field private final pendingMetadata:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

.field private pendingMetadataCount:I

.field private pendingMetadataIndex:I

.field private final pendingMetadataTimestamps:[J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsanandroid/os/Looper;)V
    .locals 1

    .line 69
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;)V
    .locals 1

    .line 83
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;-><init>(I)V

    .line 84
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;

    .line 85
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1, p2, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->outputHandler:Lccsanandroid/os/Handler;

    .line 86
    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;

    .line 87
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    .line 88
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    .line 89
    const/4 p1, 0x5

    new-array p2, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 90
    new-array p1, p1, [J

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    .line 91
    return-void
.end method

.method private flushPendingMetadata()V
    .locals 2

    .line 173
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 175
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 176
    return-void
.end method

.method private invokeRenderer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->outputHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    .line 170
    :goto_0
    return-void
.end method

.method private invokeRendererInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;->onMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    .line 193
    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)Z
    .locals 1

    .line 181
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 183
    :pswitch_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    .line 184
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEnded()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected final onDisabled()V
    .locals 1

    .line 150
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;

    .line 152
    return-void
.end method

.method protected final onPositionReset(JZ)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 110
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 111
    return-void
.end method

.method protected final onStreamChanged([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 104
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;

    .line 105
    return-void
.end method

.method public final render(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 115
    iget-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-ge p3, p4, :cond_2

    .line 116
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 117
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->readSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    .line 118
    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    .line 119
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 120
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-wide v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v1, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 127
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 129
    :try_start_0
    iget p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    .line 130
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;->decode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-result-object v2

    aput-object v2, v1, p3

    .line 131
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    aput-wide v2, v1, p3

    .line 132
    iget p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr p3, v0

    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 140
    :cond_2
    :goto_0
    iget p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-lez p3, :cond_3

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-wide v2, p3, v1

    cmp-long p3, v2, p1

    if-gtz p3, :cond_3

    .line 141
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    .line 142
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    .line 143
    add-int/2addr p2, v0

    rem-int/2addr p2, p4

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 144
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 146
    :cond_3
    return-void
.end method

.method public final supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x0

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;->supportsFormatDrm(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 98
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
