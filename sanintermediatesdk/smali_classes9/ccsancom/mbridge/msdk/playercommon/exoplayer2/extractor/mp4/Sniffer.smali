.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 36
    const-string v1, "isom"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 37
    const-string v1, "iso2"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 38
    const-string v1, "iso3"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 39
    const-string v1, "iso4"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 40
    const-string v1, "iso5"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 41
    const-string v1, "iso6"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 42
    const-string v1, "avc1"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 43
    const-string v1, "hvc1"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 44
    const-string v1, "hev1"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 45
    const-string v1, "mp41"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 46
    const-string v1, "mp42"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 47
    const-string v1, "3g2a"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 48
    const-string v1, "3g2b"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 49
    const-string v1, "3gr6"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 50
    const-string v1, "3gs6"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 51
    const-string v1, "3ge6"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 52
    const-string v1, "3gg6"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    .line 53
    const-string v1, "M4V "

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 54
    const-string v1, "M4A "

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    .line 55
    const-string v1, "f4v "

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput v1, v0, v2

    .line 56
    const-string v1, "kddi"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v0, v2

    .line 57
    const-string v1, "M4VP"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    aput v1, v0, v2

    .line 58
    const-string v1, "qt  "

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    .line 59
    const-string v1, "MSNV"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6

    .line 179
    ushr-int/lit8 v0, p0, 0x8

    const-string v1, "3gp"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    return v2

    .line 182
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    .line 183
    if-ne v5, p0, :cond_1

    .line 184
    return v2

    .line 182
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_2
    return v3
.end method

.method public static sniffFragmented(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    .line 93
    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move-wide v1, v3

    :goto_1
    long-to-int v2, v1

    .line 96
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 97
    nop

    .line 98
    nop

    .line 99
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 100
    :goto_2
    if-ge v4, v2, :cond_f

    .line 102
    nop

    .line 103
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 104
    iget-object v10, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v10, v3, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 106
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 107
    const-wide/16 v13, 0x1

    const/16 v15, 0x10

    cmp-long v16, v10, v13

    if-nez v16, :cond_2

    .line 109
    nop

    .line 110
    iget-object v10, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v10, v9, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    invoke-virtual {v1, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 112
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    goto :goto_3

    .line 113
    :cond_2
    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    if-nez v15, :cond_3

    .line 115
    invoke-interface/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v13

    .line 116
    cmp-long v15, v13, v5

    if-eqz v15, :cond_3

    .line 117
    invoke-interface/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    sub-long/2addr v13, v10

    int-to-long v10, v9

    add-long/2addr v10, v13

    const/16 v15, 0x8

    goto :goto_3

    .line 121
    :cond_3
    const/16 v15, 0x8

    :goto_3
    int-to-long v13, v15

    cmp-long v16, v10, v13

    if-gez v16, :cond_4

    .line 123
    return v3

    .line 125
    :cond_4
    add-int/2addr v4, v15

    .line 127
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v12, v15, :cond_5

    .line 129
    goto :goto_2

    .line 132
    :cond_5
    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq v12, v15, :cond_e

    sget v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-ne v12, v15, :cond_6

    const/4 v8, 0x1

    goto :goto_8

    .line 138
    :cond_6
    int-to-long v5, v4

    add-long/2addr v5, v10

    sub-long/2addr v5, v13

    int-to-long v8, v2

    cmp-long v17, v5, v8

    if-ltz v17, :cond_7

    .line 140
    const/4 v8, 0x1

    goto :goto_9

    .line 143
    :cond_7
    sub-long/2addr v10, v13

    long-to-int v5, v10

    .line 144
    add-int/2addr v4, v5

    .line 145
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v12, v6, :cond_d

    .line 147
    const/16 v6, 0x8

    if-ge v5, v6, :cond_8

    .line 148
    return v3

    .line 150
    :cond_8
    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 151
    iget-object v6, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v6, v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    div-int/lit8 v5, v5, 0x4

    .line 153
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_b

    .line 154
    const/4 v8, 0x1

    if-ne v6, v8, :cond_9

    .line 156
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_5

    .line 157
    :cond_9
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 158
    nop

    .line 159
    const/4 v7, 0x1

    goto :goto_6

    .line 153
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 162
    :cond_b
    :goto_6
    if-nez v7, :cond_c

    .line 164
    return v3

    .line 166
    :cond_c
    goto :goto_7

    :cond_d
    if-eqz v5, :cond_c

    .line 168
    invoke-interface {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 170
    :goto_7
    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .line 132
    :cond_e
    const/4 v8, 0x1

    .line 134
    :goto_8
    nop

    .line 135
    const/4 v0, 0x1

    goto :goto_a

    .line 100
    :cond_f
    const/4 v8, 0x1

    .line 171
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v7, :cond_10

    move/from16 v1, p1

    if-ne v1, v0, :cond_10

    const/4 v3, 0x1

    :cond_10
    return v3
.end method

.method public static sniffUnfragmented(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
