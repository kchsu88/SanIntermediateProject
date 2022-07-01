.class final Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x2710

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method public constructor <init>(Lccsanandroid/media/AudioTrack;)V
    .locals 2
    .param p1, "audioTrack"    # Lccsanandroid/media/AudioTrack;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;-><init>(Lccsanandroid/media/AudioTrack;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 102
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 105
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 107
    :goto_0
    return-void
.end method

.method private updateState(I)V
    .locals 6
    .param p1, "state"    # I

    .line 240
    iput p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    .line 241
    const-wide/16 v0, 0x2710

    packed-switch p1, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 257
    :pswitch_0
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 258
    goto :goto_0

    .line 254
    :pswitch_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 255
    goto :goto_0

    .line 250
    :pswitch_2
    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 251
    goto :goto_0

    .line 244
    :pswitch_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 245
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 246
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 247
    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 248
    nop

    .line 262
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptTimestamp()V
    .locals 2

    .line 190
    iget v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 193
    :cond_0
    return-void
.end method

.method public getTimestampPositionFrames()J
    .locals 2

    .line 236
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 2

    .line 227
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public hasAdvancingTimestamp()Z
    .locals 2

    .line 211
    iget v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 3

    .line 201
    iget v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public maybePollTimestamp(J)Z
    .locals 6
    .param p1, "systemTimeUs"    # J

    .line 121
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_6

    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 125
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->maybeUpdateTimestamp()Z

    move-result v0

    .line 126
    .local v0, "updatedTimestamp":Z
    iget v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    packed-switch v1, :pswitch_data_0

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 169
    :pswitch_0
    goto :goto_0

    .line 162
    :pswitch_1
    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 156
    :pswitch_2
    if-nez v0, :cond_5

    .line 158
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 146
    :pswitch_3
    if-eqz v0, :cond_2

    .line 147
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    .line 148
    .local v1, "timestampPositionFrames":J
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 149
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 151
    .end local v1    # "timestampPositionFrames":J
    :cond_1
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 154
    goto :goto_0

    .line 128
    :pswitch_4
    if-eqz v0, :cond_4

    .line 129
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 131
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 132
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_4
    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 142
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 173
    :cond_5
    :goto_0
    return v0

    .line 122
    .end local v0    # "updatedTimestamp":Z
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rejectTimestamp()V
    .locals 1

    .line 182
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 183
    return-void
.end method

.method public reset()V
    .locals 1

    .line 216
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 219
    :cond_0
    return-void
.end method
