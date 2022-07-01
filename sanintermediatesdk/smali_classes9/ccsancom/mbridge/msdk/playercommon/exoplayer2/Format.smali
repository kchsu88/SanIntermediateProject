.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 830
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 4

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 544
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 545
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 546
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    .line 547
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    .line 548
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    .line 549
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    .line 550
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    .line 551
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    .line 552
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 553
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    .line 554
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    .line 555
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    .line 556
    const-class v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    .line 557
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    .line 558
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    .line 559
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    .line 560
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    .line 561
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    .line 562
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    .line 563
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    .line 564
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    .line 565
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    .line 566
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 568
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 569
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_1
    const-class v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 572
    const-class v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 573
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    .line 509
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    move-object v1, p1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    .line 511
    move-object v1, p2

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 512
    move-object v1, p3

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 513
    move-object v1, p4

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 514
    move v1, p5

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    .line 515
    move v1, p6

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    .line 516
    move v1, p7

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    .line 517
    move v1, p8

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    .line 518
    move v1, p9

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    .line 519
    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p10

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    .line 520
    nop

    .line 521
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p11, v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v3, p11

    :goto_0
    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 522
    move-object/from16 v3, p12

    iput-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    .line 523
    move/from16 v3, p13

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    .line 524
    move-object/from16 v3, p14

    iput-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    .line 525
    move/from16 v3, p15

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    .line 526
    move/from16 v3, p16

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    .line 527
    move/from16 v3, p17

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    .line 528
    move/from16 v3, p18

    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    .line 529
    move/from16 v3, p19

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    .line 530
    move/from16 v1, p20

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    .line 531
    move-object/from16 v1, p21

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    .line 532
    move/from16 v1, p22

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    .line 533
    move-wide/from16 v1, p23

    iput-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    .line 534
    if-nez p25, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 535
    :cond_4
    move-object/from16 v1, p25

    :goto_2
    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 536
    move-object/from16 v1, p26

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 537
    move-object/from16 v1, p27

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 538
    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v25, p7

    move/from16 v20, p8

    move-object/from16 v21, p9

    .line 257
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v27, p14

    .line 313
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    .line 292
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    .line 275
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    .line 459
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v25, p5

    move-object/from16 v21, p6

    move-object/from16 v26, p7

    .line 420
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v23, p2

    .line 467
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v26, p4

    .line 478
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 8

    .line 329
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    move/from16 v22, p7

    .line 342
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 1

    .line 353
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 11

    .line 362
    nop

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 362
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 11

    .line 375
    nop

    .line 376
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 375
    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v26, p7

    move-wide/from16 v23, p8

    move-object/from16 v25, p10

    .line 403
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 11

    .line 388
    nop

    .line 389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 388
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v20, p9

    .line 183
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    .line 217
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    invoke-static/range {v0 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v26, p14

    .line 238
    new-instance v28, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;"
        }
    .end annotation

    .line 200
    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static toLogString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Ljava/lang/String;
    .locals 4

    .line 760
    if-nez p0, :cond_0

    .line 761
    const-string p0, "null"

    return-object p0

    .line 763
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 766
    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    :cond_1
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_2

    .line 769
    const-string v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    :cond_2
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    .line 772
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 774
    :cond_3
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    if-eq v1, v2, :cond_4

    .line 775
    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    :cond_4
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    if-eq v1, v2, :cond_5

    .line 778
    const-string v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    :cond_5
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 781
    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v21, p7

    move-object/from16 v22, p8

    .line 600
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithDrmInitData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v27, p1

    .line 637
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithGaplessInfo(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v19, p1

    move/from16 v20, p2

    .line 629
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithManifestFormatInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 32

    .line 609
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 611
    return-object v0

    .line 613
    :cond_0
    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    .line 614
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    :cond_1
    move-object v5, v3

    .line 615
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    :cond_2
    move v6, v3

    .line 616
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    iget v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    :cond_3
    move v10, v3

    .line 617
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    iget v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    or-int v21, v3, v4

    .line 618
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    :cond_4
    move-object/from16 v22, v3

    .line 619
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 620
    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-result-object v27

    .line 621
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    iget-wide v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v3

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithMaxInputSize(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 576
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    .line 645
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithRotationDegrees(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 653
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final copyWithSubsampleOffsetUs(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v24, p1

    .line 584
    new-instance v29, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    move-object/from16 p1, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    move/from16 v17, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    move/from16 v19, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    move/from16 v20, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    move/from16 v21, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v23, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v28}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public final describeContents()I
    .locals 1

    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 699
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 700
    return v0

    .line 702
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 705
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 706
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    .line 721
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    .line 722
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 724
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 725
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 726
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 727
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 728
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    .line 729
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    .line 730
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationDataEquals(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 706
    :goto_0
    return v0

    .line 703
    :cond_3
    :goto_1
    return v1
.end method

.method public final getPixelCount()I
    .locals 3

    .line 665
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 677
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_7

    .line 678
    nop

    .line 679
    const/16 v0, 0x20f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 680
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 681
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    .line 682
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    .line 683
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    add-int/2addr v0, v1

    .line 684
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    add-int/2addr v0, v1

    .line 685
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    add-int/2addr v0, v1

    .line 686
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v1

    .line 687
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    add-int/2addr v0, v1

    .line 688
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    .line 689
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v0, v1

    .line 690
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    .line 691
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    .line 692
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->hashCode:I

    .line 694
    :cond_7
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->hashCode:I

    return v0
.end method

.method public final initializationDataEquals(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z
    .locals 4

    .line 743
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 744
    return v2

    .line 746
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 747
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 748
    return v2

    .line 746
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4

    .line 795
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 800
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 801
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 802
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 803
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeFloat(F)V

    .line 804
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 805
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeFloat(F)V

    .line 806
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 807
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeByteArray([B)V

    .line 810
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 811
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->colorInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 812
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 813
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 814
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 815
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 816
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 817
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v2, v3}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 821
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 822
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 823
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 824
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Lccsanandroid/os/Parcel;->writeByteArray([B)V

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, p2, v1}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 827
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, p2, v1}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 828
    return-void
.end method
