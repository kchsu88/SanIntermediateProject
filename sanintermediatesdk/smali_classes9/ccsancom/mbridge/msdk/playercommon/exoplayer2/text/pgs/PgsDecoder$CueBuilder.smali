.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
.super Ljava/lang/Object;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# instance fields
.field private final bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private final colors:[I

.field private colorsSet:Z

.field private planeHeight:I

.field private planeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 149
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parsePaletteSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseBitmapSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseIdentifierSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method private parseBitmapSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 3

    .line 180
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 184
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 185
    :goto_0
    add-int/lit8 p2, p2, -0x4

    .line 187
    if-eqz v1, :cond_4

    .line 188
    const/4 v1, 0x7

    if-ge p2, v1, :cond_2

    .line 189
    return-void

    .line 191
    :cond_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    .line 192
    if-ge v1, v0, :cond_3

    .line 193
    return-void

    .line 195
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 196
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 197
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 198
    add-int/lit8 p2, p2, -0x7

    .line 201
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 202
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 203
    if-ge v0, v1, :cond_5

    if-lez p2, :cond_5

    .line 204
    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 205
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 206
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 208
    :cond_5
    return-void
.end method

.method private parseIdentifierSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 1

    .line 211
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 215
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    .line 216
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 217
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 218
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    .line 219
    return-void
.end method

.method private parsePaletteSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 17

    .line 153
    move-object/from16 v0, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 159
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 160
    div-int/lit8 v2, p2, 0x5

    .line 161
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 162
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 163
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 164
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 165
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 166
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 167
    int-to-double v10, v6

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v12, v12

    .line 168
    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v8, v8, -0x80

    move/from16 p2, v4

    int-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v10, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v15

    sub-double/2addr v13, v6

    double-to-int v6, v13

    .line 169
    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v3

    double-to-int v3, v10

    .line 170
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    shl-int/lit8 v7, v9, 0x18

    .line 172
    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v12, v9, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    .line 173
    invoke-static {v6, v9, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 174
    invoke-static {v3, v9, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    or-int/2addr v3, v6

    aput v3, v4, v5

    .line 161
    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    .line 177
    return-void
.end method


# virtual methods
.method public final build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;
    .locals 12

    .line 222
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_6

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_6

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_6

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 226
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 227
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 232
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 233
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    mul-int v0, v0, v2

    new-array v2, v0, [I

    .line 234
    const/4 v3, 0x0

    .line 235
    :goto_0
    if-ge v3, v0, :cond_5

    .line 236
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 237
    if-eqz v4, :cond_1

    .line 238
    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    aget v4, v6, v4

    aput v4, v2, v3

    move v3, v5

    goto :goto_3

    .line 240
    :cond_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 241
    if-eqz v4, :cond_4

    .line 243
    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_2

    .line 244
    and-int/lit8 v5, v4, 0x3f

    goto :goto_1

    .line 245
    :cond_2
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    .line 246
    :goto_1
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    aget v4, v4, v6

    .line 247
    :goto_2
    add-int/2addr v5, v3

    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 249
    move v3, v5

    .line 252
    :cond_4
    :goto_3
    goto :goto_0

    .line 253
    :cond_5
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    sget-object v3, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    .line 254
    invoke-static {v2, v0, v1, v3}, Lccsanandroid/graphics/Bitmap;->createBitmap([IIILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 256
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    int-to-float v1, v1

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v3, v2

    div-float v6, v1, v3

    const/4 v7, 0x0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    int-to-float v1, v1

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float v4, v3

    div-float v8, v1, v4

    const/4 v9, 0x0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    int-to-float v1, v1

    int-to-float v2, v2

    div-float v10, v1, v2

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    int-to-float v1, v1

    int-to-float v2, v3

    div-float v11, v1, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;-><init>(Lccsanandroid/graphics/Bitmap;FIFIFF)V

    return-object v0

    .line 229
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 268
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    .line 269
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 270
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    .line 271
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 272
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 273
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 274
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    .line 275
    return-void
.end method
