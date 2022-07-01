.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$UnhandledEditListException;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "vide"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 52
    const-string v0, "soun"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 53
    const-string v0, "text"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 54
    const-string v0, "sbtl"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 55
    const-string v0, "subt"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 56
    const-string v0, "clcp"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 57
    const-string v0, "meta"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7

    .line 1198
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1199
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1200
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1201
    invoke-static {v5, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 1202
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static findEsdsPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)I
    .locals 4

    .line 1006
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1007
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1008
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1009
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1010
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1011
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1012
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 1013
    return v0

    .line 1015
    :cond_1
    add-int/2addr v0, v1

    .line 1016
    goto :goto_0

    .line 1017
    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static parseAudioSampleEntry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 871
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 873
    nop

    .line 874
    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_0

    .line 875
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 876
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    .line 884
    :goto_0
    const/4 v12, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v11, :cond_1

    goto :goto_1

    .line 892
    :cond_1
    if-ne v5, v12, :cond_2

    .line 893
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 896
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 900
    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    .line 903
    :cond_2
    return-void

    .line 885
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 886
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    .line 889
    if-ne v5, v11, :cond_4

    .line 890
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 906
    :cond_4
    move v5, v4

    move v4, v7

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 907
    sget v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 908
    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lccsanandroid/util/Pair;

    move-result-object v7

    .line 910
    if-eqz v7, :cond_6

    .line 911
    iget-object v8, v7, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 912
    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    .line 913
    :cond_5
    iget-object v9, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 914
    :goto_3
    iget-object v9, v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v7, v9, p9

    .line 916
    :cond_6
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object v10, v3

    goto :goto_4

    .line 907
    :cond_7
    move-object v10, v3

    .line 924
    :goto_4
    nop

    .line 925
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    const-string v9, "audio/raw"

    if-ne v8, v3, :cond_8

    .line 926
    const-string v3, "audio/ac3"

    goto :goto_7

    .line 927
    :cond_8
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-ne v8, v3, :cond_9

    .line 928
    const-string v3, "audio/eac3"

    goto :goto_7

    .line 929
    :cond_9
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-ne v8, v3, :cond_a

    .line 930
    const-string v3, "audio/vnd.dts"

    goto :goto_7

    .line 931
    :cond_a
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v8, v3, :cond_13

    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-ne v8, v3, :cond_b

    goto :goto_6

    .line 933
    :cond_b
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-ne v8, v3, :cond_c

    .line 934
    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_7

    .line 935
    :cond_c
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-ne v8, v3, :cond_d

    .line 936
    const-string v3, "audio/3gpp"

    goto :goto_7

    .line 937
    :cond_d
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-ne v8, v3, :cond_e

    .line 938
    const-string v3, "audio/amr-wb"

    goto :goto_7

    .line 939
    :cond_e
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v8, v3, :cond_12

    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v8, v3, :cond_f

    goto :goto_5

    .line 941
    :cond_f
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-ne v8, v3, :cond_10

    .line 942
    const-string v3, "audio/mpeg"

    goto :goto_7

    .line 943
    :cond_10
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v8, v3, :cond_11

    .line 944
    const-string v3, "audio/alac"

    goto :goto_7

    .line 943
    :cond_11
    move-object/from16 v3, v16

    goto :goto_7

    .line 940
    :cond_12
    :goto_5
    move-object v3, v9

    goto :goto_7

    .line 932
    :cond_13
    :goto_6
    const-string v3, "audio/vnd.dts.hd"

    .line 947
    :goto_7
    move-object v8, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v7, v6

    move-object/from16 v19, v16

    .line 948
    :goto_8
    sub-int v3, v7, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_1e

    .line 949
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 951
    if-lez v6, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    const-string v5, "childAtomSize should be positive"

    invoke-static {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 953
    sget v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v3, v5, :cond_1a

    if-eqz p6, :cond_15

    sget v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v3, v5, :cond_15

    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_b

    .line 970
    :cond_15
    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v3, v4, :cond_16

    .line 971
    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 972
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_a

    .line 974
    :cond_16
    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v3, v4, :cond_17

    .line 975
    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 976
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_a

    .line 978
    :cond_17
    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v3, v4, :cond_18

    .line 979
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v8

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, v21

    move-object/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    const/16 v21, 0x1

    move-object/from16 v11, v20

    const/16 v22, 0x2

    move/from16 v12, v23

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move/from16 v5, v24

    move/from16 v6, v25

    goto :goto_a

    .line 982
    :cond_18
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v3, v4, :cond_19

    .line 983
    move/from16 v5, v24

    new-array v3, v5, [B

    .line 984
    move/from16 v6, v25

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 985
    invoke-virtual {v0, v3, v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v3

    move-object/from16 v8, v26

    goto :goto_e

    .line 982
    :cond_19
    move/from16 v5, v24

    move/from16 v6, v25

    .line 987
    :goto_a
    move-object/from16 v8, v26

    goto :goto_e

    .line 953
    :cond_1a
    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    .line 954
    :goto_b
    sget v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v3, v7, :cond_1b

    move v7, v6

    goto :goto_c

    .line 955
    :cond_1b
    invoke-static {v0, v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)I

    move-result v7

    .line 956
    :goto_c
    if-eq v7, v4, :cond_1c

    .line 957
    nop

    .line 958
    invoke-static {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsanandroid/util/Pair;

    move-result-object v3

    .line 959
    iget-object v4, v3, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 960
    iget-object v3, v3, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    .line 961
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 964
    nop

    .line 965
    invoke-static/range {v19 .. v19}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Lccsanandroid/util/Pair;

    move-result-object v3

    .line 966
    iget-object v4, v3, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 967
    iget-object v3, v3, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_d

    .line 956
    :cond_1c
    move-object/from16 v8, v26

    .line 970
    :cond_1d
    :goto_d
    nop

    .line 987
    :goto_e
    add-int v7, v6, v5

    .line 988
    move/from16 v1, p2

    move-object/from16 v10, v20

    move-object/from16 v9, v27

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_8

    .line 990
    :cond_1e
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/16 v22, 0x2

    iget-object v0, v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-nez v0, :cond_21

    move-object/from16 v8, v26

    if-eqz v8, :cond_21

    .line 993
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v7, 0x2

    goto :goto_f

    :cond_1f
    const/4 v7, -0x1

    .line 994
    :goto_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 996
    if-nez v19, :cond_20

    goto :goto_10

    :cond_20
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_10
    const/4 v10, 0x0

    .line 994
    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v20

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 999
    :cond_21
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lccsanandroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1091
    add-int/lit8 v0, p1, 0x8

    .line 1092
    nop

    .line 1093
    nop

    .line 1094
    nop

    .line 1095
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 1096
    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1097
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1098
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1099
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 1100
    sget v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v9, v10, :cond_0

    .line 1101
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 1102
    :cond_0
    sget v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v9, v10, :cond_1

    .line 1103
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1105
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1106
    :cond_1
    sget v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v9, v10, :cond_2

    .line 1107
    nop

    .line 1108
    move v5, v0

    move v7, v8

    .line 1110
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 1111
    goto :goto_0

    .line 1113
    :cond_3
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1114
    const-string p1, "cens"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1123
    :cond_4
    return-object v2

    .line 1115
    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1116
    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1118
    invoke-static {p0, v5, v7, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    .line 1120
    if-eqz p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    invoke-static {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1121
    invoke-static {v6, p0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lccsanandroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Lccsanandroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 837
    if-eqz p0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 840
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 841
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 842
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 843
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 844
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 845
    new-array v2, v1, [J

    .line 846
    new-array v3, v1, [J

    .line 847
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 848
    nop

    .line 849
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    .line 850
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 851
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    .line 852
    if-ne v6, v5, :cond_3

    .line 856
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 847
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 854
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 858
    :cond_4
    invoke-static {v2, v3}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 838
    :cond_5
    :goto_3
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsanandroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1024
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1026
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1027
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 1028
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1030
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1031
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1032
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1034
    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1035
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1037
    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1038
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1042
    :cond_2
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1043
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 1046
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1047
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    .line 1048
    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1049
    const-string v1, "audio/vnd.dts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1050
    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1054
    :cond_3
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1057
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1058
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 1059
    new-array v1, p1, [B

    .line 1060
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1061
    invoke-static {v0, v1}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1051
    :cond_4
    :goto_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseExpandableClassSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1186
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1187
    and-int/lit8 v1, v0, 0x7f

    .line 1188
    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1189
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1190
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    .line 1192
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    .line 591
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 592
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 593
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne p0, v0, :cond_0

    .line 594
    const/4 p0, 0x1

    return p0

    .line 595
    :cond_0
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne p0, v0, :cond_1

    .line 596
    const/4 p0, 0x2

    return p0

    .line 597
    :cond_1
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq p0, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq p0, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq p0, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 600
    :cond_2
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne p0, v0, :cond_3

    .line 601
    const/4 p0, 0x4

    return p0

    .line 603
    :cond_3
    const/4 p0, -0x1

    return p0

    .line 599
    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static parseIlst(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 2

    .line 500
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 503
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static parseMdhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsanandroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 615
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 616
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 617
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 618
    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 619
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 620
    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 621
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 625
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseMetaAtom(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 4

    .line 485
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 486
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 487
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 488
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 489
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 490
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    .line 491
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 492
    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 494
    :cond_0
    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 495
    goto :goto_0

    .line 496
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseMvhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    .line 518
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 519
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 520
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 521
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 522
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)F
    .locals 0

    .line 862
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 863
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 864
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    .line 865
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    .line 1169
    add-int/lit8 v0, p1, 0x8

    .line 1170
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1171
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1172
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1173
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1174
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    .line 1175
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 1177
    :cond_0
    add-int/2addr v0, v1

    .line 1178
    goto :goto_0

    .line 1179
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lccsanandroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1071
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1072
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1073
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1074
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1075
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1076
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1077
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v2, v3, :cond_1

    .line 1078
    invoke-static {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lccsanandroid/util/Pair;

    move-result-object v2

    .line 1080
    if-eqz v2, :cond_1

    .line 1081
    return-object v2

    .line 1084
    :cond_1
    add-int/2addr v0, v1

    .line 1085
    goto :goto_0

    .line 1086
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 11

    .line 1129
    add-int/lit8 v0, p1, 0x8

    .line 1130
    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1131
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1132
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1133
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1134
    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v3, v4, :cond_3

    .line 1135
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1136
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    .line 1137
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1138
    nop

    .line 1139
    nop

    .line 1140
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1141
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1144
    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    .line 1145
    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1147
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1148
    :goto_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 1149
    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1150
    invoke-virtual {p0, v7, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1151
    nop

    .line 1152
    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1153
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1154
    new-array v2, p1, [B

    .line 1155
    invoke-virtual {p0, v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object v10, v2

    goto :goto_3

    .line 1157
    :cond_2
    move-object v10, v2

    :goto_3
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    .line 1160
    :cond_3
    add-int/2addr v0, v1

    .line 1161
    goto :goto_0

    .line 1162
    :cond_4
    return-object v2
.end method

.method public static parseStbl(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_0

    .line 132
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 134
    :cond_0
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 135
    if-eqz v3, :cond_31

    .line 138
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 141
    :goto_0
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    .line 142
    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 143
    new-instance v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 154
    :cond_1
    nop

    .line 155
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 156
    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 157
    nop

    .line 158
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    .line 156
    :cond_2
    const/4 v8, 0x0

    .line 160
    :goto_1
    iget-object v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 162
    sget v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 164
    sget v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 166
    sget v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    invoke-virtual {v0, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 167
    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget-object v11, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v11, v12

    .line 169
    :goto_2
    sget v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    invoke-virtual {v0, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_4

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    goto :goto_3

    :cond_4
    move-object v0, v12

    .line 173
    :goto_3
    new-instance v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)V

    .line 176
    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 177
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    sub-int/2addr v8, v7

    .line 178
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 179
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 187
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_4

    .line 185
    :cond_5
    const/4 v15, 0x0

    .line 190
    :goto_4
    nop

    .line 191
    nop

    .line 192
    const/16 v16, -0x1

    if-eqz v11, :cond_7

    .line 193
    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 194
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 195
    if-lez v6, :cond_6

    .line 196
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_5

    .line 199
    :cond_6
    goto :goto_5

    .line 192
    :cond_7
    move-object v12, v11

    const/4 v6, 0x0

    .line 204
    :goto_5
    nop

    .line 205
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v11, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 206
    const-string v5, "audio/raw"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 213
    :goto_6
    nop

    .line 216
    nop

    .line 219
    const-string v11, "AtomParsers"

    const-wide/16 v18, 0x0

    if-nez v5, :cond_17

    .line 220
    new-array v5, v3, [J

    .line 221
    new-array v7, v3, [I

    .line 222
    move/from16 p1, v6

    new-array v6, v3, [J

    .line 223
    move/from16 v21, v8

    new-array v8, v3, [I

    .line 224
    nop

    .line 225
    nop

    .line 227
    move-object/from16 v24, v10

    move v2, v14

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    move/from16 v14, v21

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v40, v9

    move/from16 v9, p1

    move-object/from16 p1, v11

    move/from16 v11, v16

    move/from16 v16, v15

    move/from16 v15, v40

    :goto_7
    if-ge v1, v3, :cond_10

    .line 229
    :goto_8
    if-nez v23, :cond_9

    .line 230
    invoke-virtual {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 231
    move/from16 v29, v14

    move/from16 v30, v15

    iget-wide v14, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 232
    move-wide/from16 v27, v14

    iget v14, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v23, v14

    move/from16 v14, v29

    move/from16 v15, v30

    goto :goto_8

    .line 236
    :cond_9
    move/from16 v29, v14

    move/from16 v30, v15

    if-eqz v0, :cond_b

    .line 237
    :goto_9
    if-nez v21, :cond_a

    if-lez v16, :cond_a

    .line 238
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    .line 244
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v22

    .line 245
    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    .line 247
    :cond_a
    add-int/lit8 v21, v21, -0x1

    move/from16 v14, v22

    goto :goto_a

    .line 236
    :cond_b
    move/from16 v14, v22

    .line 250
    :goto_a
    aput-wide v27, v5, v1

    .line 251
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v15

    aput v15, v7, v1

    .line 252
    aget v15, v7, v1

    if-le v15, v10, :cond_c

    .line 253
    aget v10, v7, v1

    .line 255
    :cond_c
    move-object v15, v4

    move-object/from16 v31, v5

    int-to-long v4, v14

    add-long v4, v25, v4

    aput-wide v4, v6, v1

    .line 258
    if-nez v12, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    aput v4, v8, v1

    .line 259
    if-ne v1, v11, :cond_e

    .line 260
    const/4 v4, 0x1

    aput v4, v8, v1

    .line 261
    add-int/lit8 v9, v9, -0x1

    .line 262
    if-lez v9, :cond_e

    .line 263
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    sub-int/2addr v5, v4

    move v11, v5

    .line 268
    :cond_e
    int-to-long v4, v2

    add-long v25, v25, v4

    .line 269
    add-int/lit8 v4, v30, -0x1

    .line 270
    if-nez v4, :cond_f

    if-lez v29, :cond_f

    .line 271
    invoke-virtual/range {v24 .. v24}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 278
    invoke-virtual/range {v24 .. v24}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 279
    add-int/lit8 v5, v29, -0x1

    move/from16 v29, v5

    move/from16 v40, v4

    move v4, v2

    move/from16 v2, v40

    .line 282
    :cond_f
    aget v5, v7, v1

    move/from16 v22, v4

    int-to-long v4, v5

    add-long v27, v27, v4

    .line 283
    add-int/lit8 v23, v23, -0x1

    .line 227
    add-int/lit8 v1, v1, 0x1

    move-object v4, v15

    move/from16 v15, v22

    move-object/from16 v5, v31

    move/from16 v22, v14

    move/from16 v14, v29

    goto/16 :goto_7

    .line 285
    :cond_10
    move-object/from16 v31, v5

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v14, v22

    int-to-long v1, v14

    add-long v25, v25, v1

    .line 287
    if-nez v21, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 289
    :goto_d
    if-lez v16, :cond_13

    .line 290
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_e

    :cond_12
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 291
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 292
    add-int/lit8 v16, v16, -0x1

    goto :goto_d

    .line 297
    :cond_13
    if-nez v9, :cond_15

    if-nez v30, :cond_15

    move/from16 v0, v23

    if-nez v0, :cond_16

    if-eqz v29, :cond_14

    goto :goto_f

    :cond_14
    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_10

    :cond_15
    move/from16 v0, v23

    .line 299
    :cond_16
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_10
    move-object v14, v6

    move-object v5, v7

    move-object v15, v8

    move v6, v10

    move-object/from16 v4, v31

    goto :goto_12

    .line 306
    :cond_17
    move-object v2, v1

    move-object v1, v11

    iget v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 307
    iget v4, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    .line 308
    :goto_11
    invoke-virtual {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 309
    iget v5, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v6, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v0, v5

    .line 310
    iget v5, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v6, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v4, v5

    goto :goto_11

    .line 312
    :cond_18
    iget-object v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    iget-object v6, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    .line 313
    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v5

    .line 314
    int-to-long v6, v14

    invoke-static {v5, v0, v4, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 316
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 317
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 318
    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 319
    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 320
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 321
    iget-wide v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v14, v7

    move-object v15, v8

    move-wide/from16 v25, v9

    .line 323
    :goto_12
    const-wide/32 v9, 0xf4240

    iget-wide v11, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v7, v25

    invoke-static/range {v7 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v21

    .line 325
    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v12, 0xf4240

    if-eqz v0, :cond_30

    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-eqz v0, :cond_19

    move-object/from16 v27, v4

    move-object v10, v5

    move/from16 v16, v6

    goto/16 :goto_22

    .line 340
    :cond_19
    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1c

    iget v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v0, v7, :cond_1c

    array-length v0, v14

    const/4 v7, 0x2

    if-lt v0, v7, :cond_1c

    .line 343
    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v7, 0x0

    aget-wide v23, v0, v7

    .line 344
    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v27, v0, v7

    iget-wide v7, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    invoke-static/range {v27 .. v32}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v27, v23, v7

    .line 346
    move-object v7, v14

    move-wide/from16 v8, v25

    move-wide/from16 v10, v23

    move-object/from16 p1, v1

    move-wide v0, v12

    move-wide/from16 v12, v27

    invoke-static/range {v7 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 347
    sub-long v8, v25, v27

    .line 348
    const/4 v7, 0x0

    aget-wide v10, v14, v7

    sub-long v27, v23, v10

    iget-object v7, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    int-to-long v10, v7

    iget-wide v12, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    invoke-static/range {v27 .. v32}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 350
    iget-object v7, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    int-to-long v10, v7

    iget-wide v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v16, v6

    move-wide v6, v12

    move-wide v12, v0

    invoke-static/range {v8 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 352
    cmp-long v8, v6, v18

    if-nez v8, :cond_1a

    cmp-long v8, v0, v18

    if-eqz v8, :cond_1d

    :cond_1a
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1d

    cmp-long v10, v0, v8

    if-gtz v10, :cond_1d

    .line 354
    long-to-int v3, v6

    move-object/from16 v6, p2

    iput v3, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 355
    long-to-int v1, v0

    iput v1, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 356
    iget-wide v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    invoke-static {v14, v6, v7, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 357
    new-instance v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 346
    :cond_1b
    move/from16 v16, v6

    goto :goto_13

    .line 340
    :cond_1c
    move-object/from16 p1, v1

    move/from16 v16, v6

    .line 363
    :cond_1d
    :goto_13
    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v6, v0, v1

    cmp-long v0, v6, v18

    if-nez v0, :cond_1f

    .line 367
    iget-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v6, v0, v1

    .line 368
    const/4 v0, 0x0

    :goto_14
    array-length v1, v14

    if-ge v0, v1, :cond_1e

    .line 369
    aget-wide v8, v14, v0

    sub-long v17, v8, v6

    const-wide/32 v19, 0xf4240

    iget-wide v8, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 370
    move-wide/from16 v21, v8

    invoke-static/range {v17 .. v22}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    aput-wide v8, v14, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 373
    :cond_1e
    sub-long v8, v25, v6

    const-wide/32 v10, 0xf4240

    iget-wide v12, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 374
    invoke-static/range {v8 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 375
    new-instance v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 380
    :cond_1f
    iget v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    .line 383
    :goto_15
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_16
    iget-object v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    const-wide/16 v10, -0x1

    if-ge v7, v9, :cond_23

    .line 387
    iget-object v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v12, v9, v7

    .line 388
    cmp-long v9, v12, v10

    if-eqz v9, :cond_22

    .line 389
    iget-object v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v21, v9, v7

    iget-wide v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    iget-wide v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 390
    move-wide/from16 v23, v9

    move-wide/from16 v25, v4

    invoke-static/range {v21 .. v26}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 392
    const/4 v9, 0x1

    invoke-static {v14, v12, v13, v9, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    .line 393
    add-long/2addr v12, v4

    .line 394
    const/4 v4, 0x0

    invoke-static {v14, v12, v13, v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v5

    .line 396
    sub-int v4, v5, v10

    add-int/2addr v6, v4

    .line 397
    if-eq v8, v10, :cond_21

    const/4 v4, 0x1

    goto :goto_17

    :cond_21
    const/4 v4, 0x0

    :goto_17
    or-int/2addr v1, v4

    .line 398
    move v8, v5

    goto :goto_18

    .line 388
    :cond_22
    move-object/from16 v27, v4

    move-object/from16 v28, v5

    .line 386
    :goto_18
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    goto :goto_16

    .line 401
    :cond_23
    move-object/from16 v27, v4

    move-object/from16 v28, v5

    if-eq v6, v3, :cond_24

    const/4 v3, 0x1

    goto :goto_19

    :cond_24
    const/4 v3, 0x0

    :goto_19
    or-int/2addr v1, v3

    .line 404
    if-eqz v1, :cond_25

    new-array v3, v6, [J

    goto :goto_1a

    :cond_25
    move-object/from16 v3, v27

    .line 405
    :goto_1a
    if-eqz v1, :cond_26

    new-array v4, v6, [I

    goto :goto_1b

    :cond_26
    move-object/from16 v4, v28

    .line 406
    :goto_1b
    if-eqz v1, :cond_27

    const/16 v16, 0x0

    .line 407
    :cond_27
    if-eqz v1, :cond_28

    new-array v5, v6, [I

    move-object v7, v5

    goto :goto_1c

    :cond_28
    move-object v7, v15

    .line 408
    :goto_1c
    new-array v5, v6, [J

    .line 409
    nop

    .line 410
    nop

    .line 411
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1d
    iget-object v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    if-ge v6, v9, :cond_2f

    .line 412
    iget-object v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v12, v9, v6

    .line 413
    iget-object v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v29, v9, v6

    .line 414
    cmp-long v9, v12, v10

    if-eqz v9, :cond_2e

    .line 415
    iget-wide v10, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object v9, v5

    move/from16 p2, v6

    iget-wide v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 417
    move-wide/from16 v21, v29

    move-wide/from16 v23, v10

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long/2addr v5, v12

    .line 418
    const/4 v10, 0x1

    invoke-static {v14, v12, v13, v10, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v11

    .line 419
    const/4 v10, 0x0

    invoke-static {v14, v5, v6, v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v5

    .line 420
    if-eqz v1, :cond_29

    .line 421
    sub-int v6, v5, v11

    .line 422
    move-object/from16 v10, v27

    invoke-static {v10, v11, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    move-object/from16 v10, v28

    invoke-static {v10, v11, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    invoke-static {v15, v11, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e

    .line 420
    :cond_29
    move-object/from16 v10, v28

    .line 426
    :goto_1e
    if-ge v11, v5, :cond_2b

    aget v6, v7, v8

    const/16 v20, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2a

    move-object/from16 v6, p1

    goto :goto_1f

    .line 428
    :cond_2a
    const-string v0, "Ignoring edit list: edit does not start with a sync sample."

    move-object/from16 v6, p1

    invoke-static {v6, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$UnhandledEditListException;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$UnhandledEditListException;-><init>()V

    throw v0

    .line 426
    :cond_2b
    move-object/from16 v6, p1

    const/16 v20, 0x1

    .line 431
    :goto_1f
    move/from16 v28, v0

    move/from16 v0, v16

    :goto_20
    if-ge v11, v5, :cond_2d

    .line 432
    const-wide/32 v23, 0xf4240

    move/from16 p1, v5

    move-object/from16 v33, v6

    iget-wide v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 433
    aget-wide v21, v14, v11

    sub-long v34, v21, v12

    const-wide/32 v36, 0xf4240

    move-wide/from16 v21, v12

    iget-wide v12, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 434
    move-wide/from16 v38, v12

    invoke-static/range {v34 .. v39}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 436
    add-long/2addr v5, v12

    aput-wide v5, v9, v8

    .line 437
    if-eqz v1, :cond_2c

    aget v5, v4, v8

    if-le v5, v0, :cond_2c

    .line 438
    aget v0, v10, v11

    .line 440
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    .line 431
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, p1

    move-wide/from16 v12, v21

    move-object/from16 v6, v33

    goto :goto_20

    :cond_2d
    move-object/from16 v33, v6

    move/from16 v16, v0

    goto :goto_21

    .line 414
    :cond_2e
    move-object/from16 v33, p1

    move-object v9, v5

    move/from16 p2, v6

    move-object/from16 v10, v28

    const/16 v20, 0x1

    move/from16 v28, v0

    .line 443
    :goto_21
    add-long v18, v18, v29

    .line 411
    add-int/lit8 v6, p2, 0x1

    move-object v5, v9

    move/from16 v0, v28

    move-object/from16 p1, v33

    move-object/from16 v28, v10

    const-wide/16 v10, -0x1

    goto/16 :goto_1d

    .line 445
    :cond_2f
    move-object v9, v5

    const-wide/32 v23, 0xf4240

    iget-wide v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 446
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, v16

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v12

    .line 325
    :cond_30
    move-object/from16 v27, v4

    move-object v10, v5

    move/from16 v16, v6

    .line 328
    :goto_22
    iget-wide v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v3, 0xf4240

    invoke-static {v14, v3, v4, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 329
    new-instance v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object v3, v10

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 136
    :cond_31
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method

.method private static parseStsd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 641
    move-object/from16 v10, p0

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 643
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v12, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 644
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    .line 645
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 646
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 647
    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 649
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v1, v0, :cond_6

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    .line 656
    :cond_1
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v1, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v1, v0, :cond_2

    goto :goto_3

    .line 665
    :cond_2
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v1, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v1, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v1, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v1, v0, :cond_4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 670
    :cond_3
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v1, v0, :cond_7

    .line 671
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "application/x-camera-motion"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    goto :goto_5

    .line 668
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_5

    .line 663
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    invoke-static/range {v0 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_5

    .line 654
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIIILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 674
    :cond_7
    :goto_5
    add-int v15, v15, v16

    invoke-virtual {v10, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 644
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 676
    :cond_8
    return-object v12
.end method

.method private static parseTextSampleEntry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 681
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 684
    nop

    .line 685
    nop

    .line 688
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    .line 689
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_0

    .line 690
    :cond_0
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v1, v3, :cond_1

    .line 691
    nop

    .line 692
    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 693
    new-array v3, v1, [B

    .line 694
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 695
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 696
    const-string v4, "application/x-quicktime-tx3g"

    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_0

    :cond_1
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v1, v0, :cond_2

    .line 697
    const-string v4, "application/x-mp4-vtt"

    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_0

    .line 698
    :cond_2
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v1, v0, :cond_3

    .line 699
    nop

    .line 700
    const-wide/16 v6, 0x0

    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_0

    .line 701
    :cond_3
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v0, :cond_4

    .line 703
    nop

    .line 704
    const/4 v0, 0x1

    iput v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v4, "application/x-mp4-cea-608"

    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    .line 710
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v18}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 712
    return-void

    .line 707
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static parseTkhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 11

    .line 531
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 532
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 533
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 535
    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 536
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 538
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 539
    nop

    .line 540
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 541
    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 542
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 543
    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 544
    nop

    .line 545
    const/4 v5, 0x0

    goto :goto_2

    .line 542
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    .line 549
    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 550
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 551
    goto :goto_4

    .line 553
    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    .line 554
    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    .line 557
    goto :goto_4

    .line 554
    :cond_6
    move-wide v7, v0

    .line 561
    :goto_4
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 562
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 563
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 564
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 565
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 566
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 569
    const/high16 v4, 0x10000

    .line 570
    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    .line 571
    const/16 v6, 0x5a

    goto :goto_5

    .line 572
    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    .line 573
    const/16 v6, 0x10e

    goto :goto_5

    .line 574
    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    .line 575
    const/16 v6, 0xb4

    goto :goto_5

    .line 578
    :cond_9
    nop

    .line 581
    :goto_5
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method public static parseTrak(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;JLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 80
    move-object/from16 v0, p0

    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 81
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    move-result v5

    .line 82
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    .line 83
    return-object v2

    .line 86
    :cond_0
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    .line 87
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 88
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-wide v10, v8

    goto :goto_0

    .line 87
    :cond_1
    move-wide/from16 v10, p2

    .line 90
    :goto_0
    move-object/from16 v4, p1

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    .line 92
    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    .line 93
    move-wide v10, v6

    goto :goto_1

    .line 95
    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    invoke-static/range {v10 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    move-wide v10, v6

    .line 97
    :goto_1
    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 98
    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 100
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 101
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v12, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v13

    .line 102
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v4, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 101
    move-object/from16 v16, p4

    move/from16 v17, p6

    invoke-static/range {v12 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    .line 103
    nop

    .line 104
    nop

    .line 105
    if-nez p5, :cond_3

    .line 106
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 107
    iget-object v6, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 108
    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_2

    .line 105
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 110
    :goto_2
    iget-object v0, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-nez v0, :cond_4

    goto :goto_3

    .line 111
    :cond_4
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v0

    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v13, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v14, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v2

    move v4, v0

    invoke-direct/range {v3 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLccsancom/mbridge/msdk/playercommon/exoplayer2/Format;I[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 110
    :goto_3
    return-object v2
.end method

.method public static parseUdta(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 5

    .line 464
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 467
    return-object v0

    .line 469
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 470
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 471
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 472
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 473
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 474
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 475
    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v3, v4, :cond_1

    .line 476
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 477
    add-int/2addr v1, v2

    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 479
    :cond_1
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 480
    goto :goto_0

    .line 481
    :cond_2
    return-object v0
.end method

.method private static parseVideoSampleEntry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIIILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 717
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 719
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 721
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 722
    nop

    .line 723
    nop

    .line 724
    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 727
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    const/4 v7, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_2

    .line 728
    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lccsanandroid/util/Pair;

    move-result-object v6

    .line 730
    if-eqz v6, :cond_1

    .line 731
    iget-object v8, v6, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 732
    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    .line 733
    :cond_0
    iget-object v9, v6, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 734
    :goto_0
    iget-object v9, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v6, v6, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v6, v9, p8

    .line 736
    :cond_1
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v20, v3

    goto :goto_1

    .line 727
    :cond_2
    move-object/from16 v20, v3

    .line 743
    :goto_1
    nop

    .line 744
    nop

    .line 745
    nop

    .line 747
    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v14, v7

    move-object/from16 v17, v14

    const/4 v3, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    .line 748
    :goto_2
    sub-int v9, v5, v1

    if-ge v9, v2, :cond_14

    .line 749
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 751
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 752
    if-nez v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v13

    sub-int/2addr v13, v1

    if-ne v13, v2, :cond_3

    .line 754
    goto/16 :goto_b

    .line 756
    :cond_3
    if-lez v10, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    const-string v6, "childAtomSize should be positive"

    invoke-static {v15, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 758
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    const/4 v13, 0x3

    if-ne v6, v15, :cond_7

    .line 759
    if-nez v7, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 760
    nop

    .line 761
    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 762
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->parse(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;

    move-result-object v6

    .line 763
    iget-object v14, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 764
    iget v7, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v7, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 765
    if-nez v3, :cond_6

    .line 766
    iget v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v16, v6

    .line 768
    :cond_6
    const-string v7, "video/avc"

    goto/16 :goto_a

    :cond_7
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v6, v15, :cond_9

    .line 769
    if-nez v7, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 770
    nop

    .line 771
    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 772
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->parse(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;

    move-result-object v6

    .line 773
    iget-object v14, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 774
    iget v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v6, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 775
    const-string v7, "video/hevc"

    goto/16 :goto_a

    :cond_9
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v6, v15, :cond_c

    .line 776
    if-nez v7, :cond_a

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    :goto_6
    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 777
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-ne v8, v6, :cond_b

    const-string v6, "video/x-vnd.on2.vp8"

    goto :goto_7

    :cond_b
    const-string v6, "video/x-vnd.on2.vp9"

    :goto_7
    move-object v7, v6

    goto/16 :goto_a

    .line 778
    :cond_c
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v6, v15, :cond_e

    .line 779
    if-nez v7, :cond_d

    const/4 v13, 0x1

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_8
    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 780
    const-string v7, "video/3gpp"

    goto :goto_a

    .line 781
    :cond_e
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v15, :cond_10

    .line 782
    if-nez v7, :cond_f

    const/4 v13, 0x1

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 783
    nop

    .line 784
    invoke-static {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsanandroid/util/Pair;

    move-result-object v6

    .line 785
    iget-object v7, v6, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 786
    iget-object v6, v6, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 787
    goto :goto_a

    :cond_10
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v6, v15, :cond_11

    .line 788
    invoke-static {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)F

    move-result v16

    .line 789
    const/4 v3, 0x1

    goto :goto_a

    .line 790
    :cond_11
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v6, v15, :cond_12

    .line 791
    invoke-static {v0, v9, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v17

    goto :goto_a

    .line 792
    :cond_12
    sget v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v6, v9, :cond_13

    .line 793
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 794
    invoke-virtual {v0, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 795
    if-nez v6, :cond_13

    .line 796
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 797
    packed-switch v6, :pswitch_data_0

    goto :goto_a

    .line 808
    :pswitch_0
    nop

    .line 809
    const/16 v18, 0x3

    goto :goto_a

    .line 805
    :pswitch_1
    const/16 v18, 0x2

    .line 806
    goto :goto_a

    .line 802
    :pswitch_2
    nop

    .line 803
    const/16 v18, 0x1

    goto :goto_a

    .line 799
    :pswitch_3
    nop

    .line 800
    const/16 v18, 0x0

    .line 815
    :cond_13
    :goto_a
    add-int/2addr v5, v10

    .line 816
    goto/16 :goto_2

    .line 819
    :cond_14
    :goto_b
    if-nez v7, :cond_15

    .line 820
    return-void

    .line 823
    :cond_15
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move/from16 v15, p5

    invoke-static/range {v6 .. v20}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 826
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
