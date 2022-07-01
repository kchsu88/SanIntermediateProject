.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 79
    const/16 p1, 0x20

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "application/cea-608"

    invoke-static {p2, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 83
    :cond_0
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 84
    return-void
.end method

.method private buildSeiReader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;
    .locals 14

    .line 140
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object p1

    .line 143
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 144
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 145
    :goto_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 146
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 147
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 148
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 149
    const/16 v2, 0x86

    if-ne v1, v2, :cond_3

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    .line 153
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 154
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 156
    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 159
    :goto_2
    if-eqz v6, :cond_2

    .line 160
    nop

    .line 161
    and-int/lit8 v5, v5, 0x3f

    const-string v6, "application/cea-708"

    move v12, v5

    move-object v7, v6

    goto :goto_3

    .line 163
    :cond_2
    nop

    .line 164
    const-string v5, "application/cea-608"

    move-object v7, v5

    const/4 v12, 0x1

    .line 166
    :goto_3
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private isSet(I)Z
    .locals 1

    .line 180
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final createInitialPayloadReaders()Lccsanandroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final createPayloadReader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 3

    .line 93
    const/4 v0, 0x2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 126
    return-object v1

    .line 118
    :sswitch_0
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionReader;

    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionPayloadReader;)V

    .line 118
    :goto_0
    return-object v1

    .line 108
    :sswitch_1
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 105
    :sswitch_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 123
    :sswitch_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 116
    :sswitch_4
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 112
    :sswitch_5
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v2

    invoke-direct {p1, p2, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 112
    :goto_1
    return-object v1

    .line 121
    :sswitch_6
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 101
    :sswitch_7
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    goto :goto_2

    :cond_2
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/LatmReader;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 101
    :goto_2
    return-object v1

    .line 98
    :sswitch_8
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    goto :goto_3

    :cond_3
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 98
    :goto_3
    return-object v1

    .line 96
    :sswitch_9
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 110
    :sswitch_a
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;

    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H262Reader;-><init>()V

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0xf -> :sswitch_8
        0x11 -> :sswitch_7
        0x15 -> :sswitch_6
        0x1b -> :sswitch_5
        0x24 -> :sswitch_4
        0x59 -> :sswitch_3
        0x81 -> :sswitch_2
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x87 -> :sswitch_2
        0x8a -> :sswitch_1
    .end sparse-switch
.end method
