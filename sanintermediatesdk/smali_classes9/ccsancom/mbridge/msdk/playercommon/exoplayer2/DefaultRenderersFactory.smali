.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Lccsanandroid/content/Context;

.field private final drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 6

    .line 114
    const/4 v2, 0x0

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;IJ)V
    .locals 6

    .line 141
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)V"
        }
    .end annotation

    .line 126
    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Lccsanandroid/content/Context;

    .line 155
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 156
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 157
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    .line 158
    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 401
    const/4 v0, 0x0

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method protected buildAudioRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;[",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 269
    move/from16 v0, p6

    move-object/from16 v10, p7

    const-string v11, "DefaultRenderersFactory"

    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    .line 277
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;->getCapabilities(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    move-result-object v8

    const/4 v5, 0x0

    move-object v1, v12

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;)V

    .line 269
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    if-nez v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 285
    add-int/lit8 v1, v1, -0x1

    .line 291
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_0
    const-string v0, "com.mbridge.msdk.playercommon.exoplayer2.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 292
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/os/Handler;

    aput-object v7, v6, v3

    const-class v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    aput-object v7, v6, v5

    const-class v7, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    aput-object v7, v6, v2

    .line 293
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 298
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p4, v6, v3

    aput-object p5, v6, v5

    aput-object p3, v6, v2

    .line 299
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    add-int/lit8 v6, v1, 0x1

    :try_start_1
    invoke-virtual {v10, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 301
    const-string v0, "Loaded LibopusAudioRenderer."

    invoke-static {v11, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    move v1, v6

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 306
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 302
    :catch_2
    move-exception v0

    .line 307
    :goto_0
    move v6, v1

    .line 312
    :goto_1
    :try_start_2
    const-string v0, "com.mbridge.msdk.playercommon.exoplayer2.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 313
    new-array v1, v4, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/os/Handler;

    aput-object v7, v1, v3

    const-class v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    aput-object v7, v1, v5

    const-class v7, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    aput-object v7, v1, v2

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 319
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p4, v1, v3

    aput-object p5, v1, v5

    aput-object p3, v1, v2

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 321
    add-int/lit8 v1, v6, 0x1

    :try_start_3
    invoke-virtual {v10, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 322
    const-string v0, "Loaded LibflacAudioRenderer."

    invoke-static {v11, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 328
    goto :goto_3

    .line 323
    :catch_3
    move-exception v0

    move v6, v1

    goto :goto_2

    .line 325
    :catch_4
    move-exception v0

    .line 327
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :catch_5
    move-exception v0

    .line 328
    :goto_2
    move v1, v6

    .line 333
    :goto_3
    :try_start_4
    const-string v0, "com.mbridge.msdk.playercommon.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 334
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 335
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/os/Handler;

    aput-object v7, v6, v3

    const-class v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    aput-object v7, v6, v5

    const-class v7, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    aput-object v7, v6, v2

    .line 336
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 341
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v3

    aput-object p5, v4, v5

    aput-object p3, v4, v2

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 343
    invoke-virtual {v10, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    const-string v0, "Loaded FfmpegAudioRenderer."

    invoke-static {v11, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    .line 347
    :catch_6
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 345
    :catch_7
    move-exception v0

    .line 350
    :goto_4
    nop

    .line 351
    return-void
.end method

.method protected buildMetadataRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsanandroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;",
            "Lccsanandroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 381
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsanandroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method protected buildMiscellaneousRenderers(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 395
    return-void
.end method

.method protected buildTextRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsanandroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;",
            "Lccsanandroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 366
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;

    invoke-direct {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsanandroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method protected buildVideoRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;JLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;J",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 202
    move/from16 v0, p7

    move-object/from16 v1, p8

    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object v3, p1

    move-wide/from16 v5, p3

    move-object v7, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;JLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 217
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 218
    add-int/lit8 v2, v2, -0x1

    .line 224
    :cond_1
    :try_start_0
    const-string v0, "com.mbridge.msdk.playercommon.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 225
    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lccsanandroid/os/Handler;

    aput-object v6, v5, v3

    const-class v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 226
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 233
    new-array v4, v4, [Ljava/lang/Object;

    .line 236
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    .line 237
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p5, v4, v3

    aput-object p6, v4, v9

    const/16 v3, 0x32

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    .line 235
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 241
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    const-string v0, "DefaultRenderersFactory"

    const-string v1, "Loaded LibvpxVideoRenderer."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :catch_1
    move-exception v0

    .line 248
    :goto_0
    nop

    .line 249
    return-void
.end method

.method public createRenderers(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;"
        }
    .end annotation

    .line 168
    move-object v9, p0

    if-nez p6, :cond_0

    .line 169
    iget-object v0, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    move-object v10, v0

    goto :goto_0

    .line 168
    :cond_0
    move-object/from16 v10, p6

    .line 171
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Lccsanandroid/content/Context;

    iget-wide v3, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    iget v7, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v0, p0

    move-object v2, v10

    move-object v5, p1

    move-object v6, p2

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;JLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V

    .line 174
    iget-object v1, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildAudioProcessors()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    move-result-object v3

    iget v6, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v4, p1

    move-object v5, p3

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V

    .line 176
    iget-object v1, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    iget v4, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsanandroid/os/Looper;ILjava/util/ArrayList;)V

    .line 178
    iget-object v1, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    iget v4, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsanandroid/os/Looper;ILjava/util/ArrayList;)V

    .line 180
    iget-object v0, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Lccsanandroid/content/Context;

    iget v1, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;ILjava/util/ArrayList;)V

    .line 181
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    return-object v0
.end method
