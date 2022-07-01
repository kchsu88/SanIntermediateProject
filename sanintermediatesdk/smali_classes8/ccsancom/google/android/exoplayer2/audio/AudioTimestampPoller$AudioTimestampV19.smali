.class final Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTimestampV19"
.end annotation


# instance fields
.field private final audioTimestamp:Lccsanandroid/media/AudioTimestamp;

.field private final audioTrack:Lccsanandroid/media/AudioTrack;

.field private lastTimestampPositionFrames:J

.field private lastTimestampRawPositionFrames:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>(Lccsanandroid/media/AudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Lccsanandroid/media/AudioTrack;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTrack:Lccsanandroid/media/AudioTrack;

    .line 281
    new-instance v0, Lccsanandroid/media/AudioTimestamp;

    invoke-direct {v0}, Lccsanandroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Lccsanandroid/media/AudioTimestamp;

    .line 282
    return-void
.end method


# virtual methods
.method public getTimestampPositionFrames()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 4

    .line 306
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Lccsanandroid/media/AudioTimestamp;

    iget-wide v0, v0, Lccsanandroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public maybeUpdateTimestamp()Z
    .locals 7

    .line 291
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTrack:Lccsanandroid/media/AudioTrack;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Lccsanandroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Lccsanandroid/media/AudioTrack;->getTimestamp(Lccsanandroid/media/AudioTimestamp;)Z

    move-result v0

    .line 292
    .local v0, "updated":Z
    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Lccsanandroid/media/AudioTimestamp;

    iget-wide v1, v1, Lccsanandroid/media/AudioTimestamp;->framePosition:J

    .line 294
    .local v1, "rawPositionFrames":J
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampRawPositionFrames:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 296
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    .line 298
    :cond_0
    iput-wide v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampRawPositionFrames:J

    .line 299
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v3, v1

    iput-wide v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    .line 302
    .end local v1    # "rawPositionFrames":J
    :cond_1
    return v0
.end method
