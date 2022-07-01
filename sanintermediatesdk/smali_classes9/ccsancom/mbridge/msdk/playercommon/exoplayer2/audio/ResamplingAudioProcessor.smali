.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;
.super Ljava/lang/Object;
.source "ResamplingAudioProcessor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private encoding:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private sampleRateHz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    .line 39
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    .line 41
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 42
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method


# virtual methods
.method public final configure(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    .line 52
    :cond_1
    :goto_0
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-ne v0, p3, :cond_2

    .line 54
    const/4 p1, 0x0

    return p1

    .line 56
    :cond_2
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    .line 57
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    .line 58
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    .line 59
    const/4 p1, 0x1

    return p1
.end method

.method public final flush()V
    .locals 1

    .line 168
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    .line 170
    return-void
.end method

.method public final getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 155
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 156
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 157
    return-object v0
.end method

.method public final getOutputChannelCount()I
    .locals 1

    .line 69
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    return v0
.end method

.method public final getOutputEncoding()I
    .locals 1

    .line 74
    const/4 v0, 0x2

    return v0
.end method

.method public final getOutputSampleRateHz()I
    .locals 1

    .line 79
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public final isActive()Z
    .locals 2

    .line 64
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnded()Z
    .locals 2

    .line 163
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final queueEndOfStream()V
    .locals 1

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    .line 151
    return-void
.end method

.method public final queueInput(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 87
    sub-int v2, v1, v0

    .line 89
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    sparse-switch v3, :sswitch_data_0

    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 97
    :sswitch_0
    div-int/lit8 v2, v2, 0x2

    .line 98
    goto :goto_0

    .line 91
    :sswitch_1
    mul-int/lit8 v2, v2, 0x2

    .line 92
    goto :goto_0

    .line 94
    :sswitch_2
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    .line 95
    nop

    .line 106
    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 107
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 109
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    :goto_1
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    sparse-switch v2, :sswitch_data_1

    .line 141
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 130
    :sswitch_3
    nop

    :goto_2
    if-ge v0, v1, :cond_1

    .line 131
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 132
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 134
    :cond_1
    goto :goto_5

    .line 116
    :sswitch_4
    nop

    :goto_3
    if-ge v0, v1, :cond_2

    .line 117
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 120
    :cond_2
    goto :goto_5

    .line 123
    :sswitch_5
    nop

    :goto_4
    if-ge v0, v1, :cond_3

    .line 124
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    .line 127
    :cond_3
    nop

    .line 143
    :goto_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 146
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x3 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x3 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public final reset()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->flush()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    .line 176
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    .line 178
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 179
    return-void
.end method
