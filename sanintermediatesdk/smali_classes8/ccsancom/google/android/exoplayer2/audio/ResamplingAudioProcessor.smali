.class final Lccsancom/google/android/exoplayer2/audio/ResamplingAudioProcessor;
.super Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ResamplingAudioProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 5
    .param p1, "inputAudioFormat"    # Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 41
    iget v0, p1, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 42
    .local v0, "encoding":I
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/high16 v2, 0x10000000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x20000000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x30000000

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v1, p1}, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v1

    .line 50
    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    .line 51
    new-instance v2, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, p1, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v4, p1, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v3, v4, v1}, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_1

    .line 53
    :cond_2
    sget-object v2, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 50
    :goto_1
    return-object v2
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 60
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 61
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 63
    .local v2, "size":I
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v3, :sswitch_data_0

    .line 81
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 71
    :sswitch_0
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 72
    .local v3, "resampledSize":I
    goto :goto_0

    .line 68
    .end local v3    # "resampledSize":I
    :sswitch_1
    move v3, v2

    .line 69
    .restart local v3    # "resampledSize":I
    goto :goto_0

    .line 75
    .end local v3    # "resampledSize":I
    :sswitch_2
    div-int/lit8 v3, v2, 0x2

    .line 76
    .restart local v3    # "resampledSize":I
    goto :goto_0

    .line 65
    .end local v3    # "resampledSize":I
    :sswitch_3
    mul-int/lit8 v3, v2, 0x2

    .line 66
    .restart local v3    # "resampledSize":I
    nop

    .line 85
    :goto_0
    invoke-virtual {p0, v3}, Lccsancom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 86
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v5, v5, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v5, :sswitch_data_1

    .line 133
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 110
    :sswitch_4
    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 111
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 112
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 114
    .end local v5    # "i":I
    :cond_0
    goto/16 :goto_6

    .line 103
    :sswitch_5
    move v5, v0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v1, :cond_1

    .line 104
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 105
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    add-int/lit8 v5, v5, 0x3

    goto :goto_2

    .line 107
    .end local v5    # "i":I
    :cond_1
    goto :goto_6

    .line 96
    :sswitch_6
    move v5, v0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_2

    .line 97
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 100
    .end local v5    # "i":I
    :cond_2
    goto :goto_6

    .line 118
    :sswitch_7
    move v5, v0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v1, :cond_3

    .line 121
    nop

    .line 122
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Lccsancom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v6

    .line 123
    .local v6, "floatValue":F
    const v7, 0x46fffe00    # 32767.0f

    mul-float v7, v7, v6

    float-to-int v7, v7

    int-to-short v7, v7

    .line 124
    .local v7, "shortValue":S
    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    .end local v6    # "floatValue":F
    .end local v7    # "shortValue":S
    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 127
    .end local v5    # "i":I
    :cond_3
    goto :goto_6

    .line 89
    :sswitch_8
    move v5, v0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v1, :cond_4

    .line 90
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 93
    .end local v5    # "i":I
    :cond_4
    nop

    .line 135
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 137
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
        0x30000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x10000000 -> :sswitch_6
        0x20000000 -> :sswitch_5
        0x30000000 -> :sswitch_4
    .end sparse-switch
.end method
