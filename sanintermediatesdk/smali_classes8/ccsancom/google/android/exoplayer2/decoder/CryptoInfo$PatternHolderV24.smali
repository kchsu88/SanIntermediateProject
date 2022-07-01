.class final Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternHolderV24"
.end annotation


# instance fields
.field private final frameworkCryptoInfo:Lccsanandroid/media/MediaCodec$CryptoInfo;

.field private final pattern:Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Lccsanandroid/media/MediaCodec$CryptoInfo;)V
    .locals 2
    .param p1, "frameworkCryptoInfo"    # Lccsanandroid/media/MediaCodec$CryptoInfo;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Lccsanandroid/media/MediaCodec$CryptoInfo;

    .line 158
    new-instance v0, Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/media/MediaCodec$CryptoInfo;Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/media/MediaCodec$CryptoInfo;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$1;

    .line 151
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;-><init>(Lccsanandroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 151
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->set(II)V

    return-void
.end method

.method private set(II)V
    .locals 2
    .param p1, "encryptedBlocks"    # I
    .param p2, "clearBlocks"    # I

    .line 162
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 163
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Lccsanandroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, v1}, Lccsanandroid/media/MediaCodec$CryptoInfo;->setPattern(Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 164
    return-void
.end method
