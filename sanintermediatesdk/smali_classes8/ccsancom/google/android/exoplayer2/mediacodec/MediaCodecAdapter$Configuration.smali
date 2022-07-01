.class public final Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final codecInfo:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field public final createInputSurface:Z

.field public final crypto:Lccsanandroid/media/MediaCrypto;

.field public final flags:I

.field public final format:Lccsancom/google/android/exoplayer2/Format;

.field public final mediaFormat:Lccsanandroid/media/MediaFormat;

.field public final surface:Lccsanandroid/view/Surface;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;IZ)V
    .locals 0
    .param p1, "codecInfo"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "mediaFormat"    # Lccsanandroid/media/MediaFormat;
    .param p3, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p4, "surface"    # Lccsanandroid/view/Surface;
    .param p5, "crypto"    # Lccsanandroid/media/MediaCrypto;
    .param p6, "flags"    # I
    .param p7, "createInputSurface"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 168
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Lccsanandroid/media/MediaFormat;

    .line 169
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 170
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Lccsanandroid/view/Surface;

    .line 171
    iput-object p5, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Lccsanandroid/media/MediaCrypto;

    .line 172
    iput p6, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    .line 173
    iput-boolean p7, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createInputSurface:Z

    .line 174
    return-void
.end method

.method public static createForAudioDecoding(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/media/MediaCrypto;)Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9
    .param p0, "codecInfo"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "mediaFormat"    # Lccsanandroid/media/MediaFormat;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p3, "crypto"    # Lccsanandroid/media/MediaCrypto;

    .line 56
    new-instance v8, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;IZ)V

    return-object v8
.end method

.method public static createForAudioEncoding(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9
    .param p0, "codecInfo"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "mediaFormat"    # Lccsanandroid/media/MediaFormat;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 102
    new-instance v8, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;IZ)V

    return-object v8
.end method

.method public static createForVideoDecoding(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;)Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9
    .param p0, "codecInfo"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "mediaFormat"    # Lccsanandroid/media/MediaFormat;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p3, "surface"    # Lccsanandroid/view/Surface;
    .param p4, "crypto"    # Lccsanandroid/media/MediaCrypto;

    .line 82
    new-instance v8, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;IZ)V

    return-object v8
.end method

.method public static createForVideoEncoding(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9
    .param p0, "codecInfo"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "mediaFormat"    # Lccsanandroid/media/MediaFormat;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 123
    new-instance v8, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaFormat;Lccsancom/google/android/exoplayer2/Format;Lccsanandroid/view/Surface;Lccsanandroid/media/MediaCrypto;IZ)V

    return-object v8
.end method
