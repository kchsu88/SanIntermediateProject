.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x1388

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method public constructor <init>(Lccsanandroid/media/AudioTrack;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 98
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;-><init>(Lccsanandroid/media/AudioTrack;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 99
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 101
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 102
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 104
    :goto_0
    return-void
.end method

.method private updateState(I)V
    .locals 6

    .line 234
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->state:I

    .line 235
    const-wide/16 v0, 0x1388

    packed-switch p1, :pswitch_data_0

    .line 254
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 251
    :pswitch_0
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 252
    goto :goto_0

    .line 248
    :pswitch_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 249
    goto :goto_0

    .line 244
    :pswitch_2
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 245
    goto :goto_0

    .line 238
    :pswitch_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 239
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 240
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 241
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 242
    nop

    .line 256
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
.method public final acceptTimestamp()V
    .locals 2

    .line 186
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 189
    :cond_0
    return-void
.end method

.method public final getTimestampPositionFrames()J
    .locals 2

    .line 230
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getTimestampSystemTimeUs()J
    .locals 2

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public final hasTimestamp()Z
    .locals 3

    .line 197
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->state:I

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

.method public final isTimestampAdvancing()Z
    .locals 2

    .line 207
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final maybePollTimestamp(J)Z
    .locals 7

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 121
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->maybeUpdateTimestamp()Z

    move-result v0

    .line 122
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->state:I

    packed-switch v2, :pswitch_data_0

    .line 167
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 165
    :pswitch_0
    goto :goto_0

    .line 158
    :pswitch_1
    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 152
    :pswitch_2
    if-nez v0, :cond_5

    .line 154
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    .line 142
    :pswitch_3
    if-eqz v0, :cond_2

    .line 143
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide p1

    .line 144
    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 145
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 147
    :cond_1
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 150
    goto :goto_0

    .line 124
    :pswitch_4
    if-eqz v0, :cond_4

    .line 125
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide p1

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    .line 127
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 128
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 131
    :cond_3
    goto :goto_1

    .line 133
    :cond_4
    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x7a120

    cmp-long v3, p1, v1

    if-lez v3, :cond_5

    .line 138
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 169
    :cond_5
    :goto_0
    move v1, v0

    :goto_1
    return v1

    .line 118
    :cond_6
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final rejectTimestamp()V
    .locals 1

    .line 178
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 179
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 215
    :cond_0
    return-void
.end method
