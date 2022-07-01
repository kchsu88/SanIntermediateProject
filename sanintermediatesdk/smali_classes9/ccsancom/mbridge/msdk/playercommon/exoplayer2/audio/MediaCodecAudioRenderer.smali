.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;
    }
.end annotation


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

.field private channelCount:I

.field private codecMaxInputSize:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private final context:Lccsanandroid/content/Context;

.field private currentPositionUs:J

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Lccsanandroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 7

    .line 132
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .line 111
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            ")V"
        }
    .end annotation

    .line 162
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    const/4 v0, 0x0

    new-array v8, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;)V

    .line 170
    return-void
.end method

.method public varargs constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;",
            "[",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 199
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;

    move-object v0, p7

    move-object/from16 v1, p8

    invoke-direct {v7, p7, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;",
            ")V"
        }
    .end annotation

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Z)V

    .line 233
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->context:Lccsanandroid/content/Context;

    .line 234
    iput-object p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    .line 235
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p1, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 236
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$1;)V

    invoke-interface {p7, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->setListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$Listener;)V

    .line 237
    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 64
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$202(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private static areAdaptationCompatible(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z
    .locals 2

    .line 666
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    if-nez v0, :cond_0

    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    if-nez v0, :cond_0

    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationDataEquals(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 666
    :goto_0
    return p0
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 684
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 685
    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 686
    const-string v0, "zeroflte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 687
    const-string v0, "heroqlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 684
    :goto_0
    return p0
.end method

.method private getCodecMaxInputSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 2

    .line 599
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 604
    const/4 p1, 0x1

    .line 605
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_0

    .line 608
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const/4 p1, 0x0

    .line 613
    :cond_0
    if-eqz p1, :cond_1

    .line 614
    const/4 p1, -0x1

    return p1

    .line 617
    :cond_1
    iget p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    return p1
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 647
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 648
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 649
    nop

    .line 650
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    .line 651
    goto :goto_0

    .line 652
    :cond_0
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 655
    :cond_1
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1

    .line 305
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;)I

    move-result p1

    .line 306
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->isEncodingSupported(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected canKeepCodec(Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 0

    .line 330
    const/4 p1, 0x0

    return p1
.end method

.method protected configureCodec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsanandroid/media/MediaCrypto;)V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getStreamFormats()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 313
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 314
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->passthrough:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 315
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "audio/raw"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 316
    :goto_0
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    invoke-virtual {p0, p3, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getMediaFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;I)Lccsanandroid/media/MediaFormat;

    move-result-object p1

    .line 317
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, p4, v0}, Lccsanandroid/media/MediaCodec;->configure(Lccsanandroid/media/MediaFormat;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;I)V

    .line 318
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz p2, :cond_1

    .line 320
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Lccsanandroid/media/MediaFormat;

    .line 321
    iget-object p2, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string p3, "mime"

    invoke-virtual {p1, p3, p2}, Lccsanandroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_1
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Lccsanandroid/media/MediaFormat;

    .line 325
    :goto_1
    return-void
.end method

.method protected getCodecMaxInputSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 0

    .line 576
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I

    move-result p1

    .line 587
    return p1
.end method

.method protected getDecoderInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 287
    iget-object v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    return-object v0

    .line 293
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;
    .locals 0

    .line 341
    return-object p0
.end method

.method protected getMediaFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;I)Lccsanandroid/media/MediaFormat;
    .locals 2

    .line 631
    new-instance v0, Lccsanandroid/media/MediaFormat;

    invoke-direct {v0}, Lccsanandroid/media/MediaFormat;-><init>()V

    .line 633
    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 635
    iget p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 636
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;->setCsdBuffers(Lccsanandroid/media/MediaFormat;Ljava/util/List;)V

    .line 638
    const-string p1, "max-input-size"

    invoke-static {v0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Lccsanandroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 640
    sget p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 641
    const/4 p1, 0x0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p1}, Lccsanandroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 643
    :cond_0
    return-object v0
.end method

.method public getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 495
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 482
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 483
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 485
    :cond_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 551
    packed-switch p1, :pswitch_data_0

    .line 560
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 556
    :pswitch_0
    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    .line 557
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->setAudioAttributes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;)V

    .line 558
    goto :goto_0

    .line 553
    :pswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->setVolume(F)V

    .line 554
    nop

    .line 563
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 472
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAudioSessionId(I)V
    .locals 0

    .line 405
    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .locals 0

    .line 412
    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .locals 0

    .line 420
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 347
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 348
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 459
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 462
    :try_start_1
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 465
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 466
    nop

    .line 467
    nop

    .line 468
    return-void

    .line 464
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 465
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 466
    throw v0

    .line 461
    :catchall_1
    move-exception v0

    .line 462
    :try_start_2
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 464
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 465
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 466
    nop

    .line 467
    throw v0

    .line 464
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 465
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 466
    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 424
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 425
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 426
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getConfiguration()Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 427
    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->enableTunnelingV21(I)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->disableTunneling()V

    .line 432
    :goto_0
    return-void
.end method

.method protected onInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 352
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 356
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    .line 357
    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 358
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    .line 359
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->encoderDelay:I

    .line 360
    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->encoderPadding:I

    .line 361
    return-void
.end method

.method protected onOutputFormatChanged(Lccsanandroid/media/MediaCodec;Lccsanandroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 368
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Lccsanandroid/media/MediaFormat;

    if-eqz p1, :cond_0

    .line 369
    const-string p2, "mime"

    invoke-virtual {p1, p2}, Lccsanandroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;)I

    move-result p1

    .line 370
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Lccsanandroid/media/MediaFormat;

    move v1, p1

    goto :goto_0

    .line 372
    :cond_0
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 373
    move v1, p1

    .line 375
    :goto_0
    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Lccsanandroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 376
    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Lccsanandroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 378
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    if-ne v2, p1, :cond_2

    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge p2, p1, :cond_2

    .line 379
    new-array p1, p2, [I

    .line 380
    const/4 p2, 0x0

    :goto_1
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge p2, v0, :cond_1

    .line 381
    aput p2, p1, p2

    .line 380
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    move-object v5, p1

    goto :goto_2

    .line 384
    :cond_2
    const/4 p1, 0x0

    move-object v5, p1

    .line 388
    :goto_2
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    const/4 v4, 0x0

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->encoderDelay:I

    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->encoderPadding:I

    invoke-interface/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->configure(IIII[III)V
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 436
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 437
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->reset()V

    .line 438
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 439
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 440
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 441
    return-void
.end method

.method protected onQueueInputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 500
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 505
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 507
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 509
    :cond_1
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 445
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 446
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->play()V

    .line 447
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 451
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 452
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->pause()V

    .line 453
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 454
    return-void
.end method

.method protected processOutputBuffer(JJLccsanandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 515
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p5, p7, p2}, Lccsanandroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 518
    return p3

    .line 521
    :cond_0
    if-eqz p11, :cond_1

    .line 522
    invoke-virtual {p5, p7, p2}, Lccsanandroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 523
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 524
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 525
    return p3

    .line 529
    :cond_1
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p9, p10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 530
    invoke-virtual {p5, p7, p2}, Lccsanandroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 531
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    return p3

    .line 536
    :cond_2
    nop

    .line 537
    return p2

    .line 534
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 535
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected renderToEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 543
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    nop

    .line 547
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 490
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object p1

    return-object p1
.end method

.method protected supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 243
    iget-object v0, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 244
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 245
    return v2

    .line 247
    :cond_0
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 248
    :goto_0
    iget-object v4, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-static {p2, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->supportsFormatDrm(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Z

    move-result p2

    .line 249
    const/4 v4, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 251
    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v4

    return p1

    .line 253
    :cond_2
    const-string v5, "audio/raw"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    iget v7, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    invoke-interface {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->isEncodingSupported(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;

    .line 254
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;->isEncodingSupported(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 256
    :cond_4
    return v6

    .line 258
    :cond_5
    nop

    .line 259
    iget-object v5, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 260
    if-eqz v5, :cond_6

    .line 261
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    iget v10, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v8, v10, :cond_7

    .line 262
    invoke-virtual {v5, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v10

    iget-boolean v10, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;->requiresSecureDecryption:Z

    or-int/2addr v9, v10

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 260
    :cond_6
    const/4 v9, 0x0

    .line 265
    :cond_7
    invoke-interface {p1, v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v5

    .line 267
    if-nez v5, :cond_9

    .line 268
    if-eqz v9, :cond_8

    invoke-interface {p1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 269
    const/4 v6, 0x2

    goto :goto_2

    :cond_8
    nop

    .line 268
    :goto_2
    return v6

    .line 271
    :cond_9
    if-nez p2, :cond_a

    .line 272
    return v7

    .line 275
    :cond_a
    sget p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-lt p1, v3, :cond_d

    iget p1, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b

    iget p1, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    .line 277
    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget p1, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    if-eq p1, p2, :cond_d

    iget p1, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    .line 279
    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    goto :goto_4

    :cond_d
    :goto_3
    const/4 v2, 0x1

    .line 280
    :goto_4
    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    const/4 v4, 0x3

    .line 281
    :goto_5
    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v4

    return p1
.end method