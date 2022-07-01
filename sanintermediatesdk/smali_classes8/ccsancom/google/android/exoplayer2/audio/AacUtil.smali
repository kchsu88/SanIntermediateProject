.class public final Lccsancom/google/android/exoplayer2/audio/AacUtil;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/audio/AacUtil$AacAudioObjectType;,
        Lccsancom/google/android/exoplayer2/audio/AacUtil$Config;
    }
.end annotation


# static fields
.field public static final AAC_ELD_MAX_RATE_BYTES_PER_SECOND:I = 0x1f40

.field public static final AAC_HE_AUDIO_SAMPLE_COUNT:I = 0x800

.field public static final AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:I = 0x3e80

.field public static final AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND:I = 0x1b58

.field public static final AAC_LC_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_LC_MAX_RATE_BYTES_PER_SECOND:I = 0x186a0

.field public static final AAC_LD_AUDIO_SAMPLE_COUNT:I = 0x200

.field public static final AAC_XHE_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_XHE_MAX_RATE_BYTES_PER_SECOND:I = 0x3e800

.field public static final AUDIO_OBJECT_TYPE_AAC_ELD:I = 0x17

.field public static final AUDIO_OBJECT_TYPE_AAC_ER_BSAC:I = 0x16

.field public static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field public static final AUDIO_OBJECT_TYPE_AAC_PS:I = 0x1d

.field public static final AUDIO_OBJECT_TYPE_AAC_SBR:I = 0x5

.field public static final AUDIO_OBJECT_TYPE_AAC_XHE:I = 0x2a

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final CODECS_STRING_PREFIX:Ljava/lang/String; = "mp4a.40."

.field private static final TAG:Ljava/lang/String; = "AacUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 111
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lccsancom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 5
    .param p0, "sampleRate"    # I
    .param p1, "channelCount"    # I

    .line 268
    const/4 v0, -0x1

    .line 269
    .local v0, "sampleRateIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lccsancom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 270
    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    .line 271
    move v0, v1

    .line 269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    .line 275
    .local v1, "channelConfig":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lccsancom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 276
    aget v3, v3, v2

    if-ne p1, v3, :cond_2

    .line 277
    move v1, v2

    .line 275
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    if-eq p0, v2, :cond_4

    if-eq v1, v2, :cond_4

    .line 284
    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v2

    return-object v2

    .line 281
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid sample rate or number of channels: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public static buildAudioSpecificConfig(III)[B
    .locals 3
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .line 297
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 298
    .local v0, "specificConfig":[B
    shl-int/lit8 v1, p0, 0x3

    and-int/lit16 v1, v1, 0xf8

    shr-int/lit8 v2, p1, 0x1

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 299
    shl-int/lit8 v1, p1, 0x7

    and-int/lit16 v1, v1, 0x80

    shl-int/lit8 v2, p2, 0x3

    and-int/lit8 v2, v2, 0x78

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 300
    return-object v0
.end method

.method private static getAudioObjectType(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 2
    .param p0, "bitArray"    # Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    .line 310
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 311
    .local v0, "audioObjectType":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 312
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    .line 314
    :cond_0
    return v0
.end method

.method private static getSamplingFrequency(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 2
    .param p0, "bitArray"    # Lccsancom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 328
    .local v0, "frequencyIndex":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 329
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .local v1, "samplingFrequency":I
    goto :goto_0

    .line 330
    .end local v1    # "samplingFrequency":I
    :cond_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 331
    sget-object v1, Lccsancom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v1, v1, v0

    .line 335
    .restart local v1    # "samplingFrequency":I
    :goto_0
    return v1

    .line 333
    .end local v1    # "samplingFrequency":I
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method public static parseAudioSpecificConfig(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;Z)Lccsancom/google/android/exoplayer2/audio/AacUtil$Config;
    .locals 7
    .param p0, "bitArray"    # Lccsancom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "forceReadToEnd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 196
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 197
    .local v0, "audioObjectType":I
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 198
    .local v1, "sampleRateHz":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 199
    .local v3, "channelConfiguration":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "mp4a.40."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "codecs":Ljava/lang/String;
    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    .line 207
    :cond_0
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 208
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 209
    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 215
    :cond_1
    if-eqz p1, :cond_3

    .line 216
    packed-switch v0, :pswitch_data_0

    .line 232
    :pswitch_0
    const/16 v2, 0x2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported audio object type: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 229
    :pswitch_1
    invoke-static {p0, v0, v3}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->parseGaSpecificConfig(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;II)V

    .line 230
    nop

    .line 235
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 242
    :pswitch_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 243
    .local v5, "epConfig":I
    if-eq v5, v2, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    const/16 v2, 0x21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported epConfig: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 253
    .end local v5    # "epConfig":I
    :cond_3
    :goto_0
    sget-object v2, Lccsancom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v2, v2, v3

    .line 254
    .local v2, "channelCount":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_4

    .line 257
    new-instance v5, Lccsancom/google/android/exoplayer2/audio/AacUtil$Config;

    invoke-direct {v5, v1, v2, v4, v6}, Lccsancom/google/android/exoplayer2/audio/AacUtil$Config;-><init>(IILjava/lang/String;Lccsancom/google/android/exoplayer2/audio/AacUtil$1;)V

    return-object v5

    .line 255
    :cond_4
    invoke-static {v6, v6}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v5

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Lccsancom/google/android/exoplayer2/audio/AacUtil$Config;
    .locals 2
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 179
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;Z)Lccsancom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v0

    return-object v0
.end method

.method private static parseGaSpecificConfig(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .locals 6
    .param p0, "bitArray"    # Lccsancom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "audioObjectType"    # I
    .param p2, "channelConfiguration"    # I

    .line 340
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 341
    .local v0, "frameLengthFlag":Z
    if-eqz v0, :cond_0

    .line 342
    const-string v1, "AacUtil"

    const-string v2, "Unexpected frameLengthFlag = 1"

    invoke-static {v1, v2}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 345
    .local v1, "dependsOnCoreDecoder":Z
    if-eqz v1, :cond_1

    .line 346
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 348
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 349
    .local v2, "extensionFlag":Z
    if-eqz p2, :cond_8

    .line 352
    const/4 v3, 0x6

    const/16 v4, 0x14

    const/4 v5, 0x3

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    .line 353
    :cond_2
    invoke-virtual {p0, v5}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 355
    :cond_3
    if-eqz v2, :cond_7

    .line 356
    const/16 v3, 0x16

    if-ne p1, v3, :cond_4

    .line 357
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 359
    :cond_4
    const/16 v3, 0x11

    if-eq p1, v3, :cond_5

    const/16 v3, 0x13

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_5

    const/16 v3, 0x17

    if-ne p1, v3, :cond_6

    .line 365
    :cond_5
    invoke-virtual {p0, v5}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 367
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 369
    :cond_7
    return-void

    .line 350
    :cond_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method
