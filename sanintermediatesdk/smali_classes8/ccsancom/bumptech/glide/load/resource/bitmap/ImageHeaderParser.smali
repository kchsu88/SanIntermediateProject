.class public Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final SEGMENT_SOS:I = 0xda

.field private static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImageHeaderParser"


# instance fields
.field private final streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 69
    .local v0, "bytes":[B
    :try_start_0
    const-string v1, "Exif\u0000\u0000"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 73
    :goto_0
    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 74
    .end local v0    # "bytes":[B
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 2
    .param p0, "ifdOffset"    # I
    .param p1, "tagIndex"    # I

    .line 291
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private getExifSegment()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    :goto_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v0

    .line 152
    .local v0, "segmentId":S
    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "ImageHeaderParser"

    if-eq v0, v1, :cond_1

    .line 153
    invoke-static {v4, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown segmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-object v3

    .line 159
    :cond_1
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v1

    .line 161
    .local v1, "segmentType":S
    const/16 v5, 0xda

    if-ne v1, v5, :cond_2

    .line 162
    return-object v3

    .line 163
    :cond_2
    const/16 v5, 0xd9

    if-ne v1, v5, :cond_4

    .line 164
    invoke-static {v4, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    const-string v2, "Found MARKER_EOI in exif segment"

    invoke-static {v4, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    return-object v3

    .line 171
    :cond_4
    iget-object v5, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 173
    .local v5, "segmentLength":I
    const/16 v6, 0xe1

    if-eq v1, v6, :cond_7

    .line 174
    iget-object v6, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v6

    .line 175
    .local v6, "skipped":J
    int-to-long v8, v5

    cmp-long v10, v6, v8

    if-eqz v10, :cond_6

    .line 176
    invoke-static {v4, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to skip enough data, type: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", wanted to skip: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", but actually skipped: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_5
    return-object v3

    .line 184
    .end local v6    # "skipped":J
    :cond_6
    goto/16 :goto_0

    .line 185
    :cond_7
    new-array v6, v5, [B

    .line 186
    .local v6, "segmentData":[B
    iget-object v7, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v7, v6}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result v7

    .line 187
    .local v7, "read":I
    if-eq v7, v5, :cond_9

    .line 188
    invoke-static {v4, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read segment data, type: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", length: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", actually read: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_8
    return-object v3

    .line 196
    :cond_9
    return-object v6
.end method

.method private static handles(I)Z
    .locals 2
    .param p0, "imageMagicNumber"    # I

    .line 295
    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_0

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

.method private static parseExifSegment(Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .locals 17
    .param p0, "segmentData"    # Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    .line 203
    move-object/from16 v0, p0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 205
    .local v1, "headerOffsetSize":I
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v2

    .line 207
    .local v2, "byteOrderIdentifier":S
    const/4 v3, 0x3

    const-string v4, "ImageHeaderParser"

    const/16 v5, 0x4d4d

    if-ne v2, v5, :cond_0

    .line 208
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .local v5, "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 209
    .end local v5    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_0
    const/16 v5, 0x4949

    if-ne v2, v5, :cond_1

    .line 210
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v5    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 212
    .end local v5    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_1
    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown endianness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 218
    .restart local v5    # "byteOrder":Ljava/nio/ByteOrder;
    :goto_0
    invoke-virtual {v0, v5}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 220
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v6}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v6

    add-int/2addr v6, v1

    .line 221
    .local v6, "firstIfdOffset":I
    invoke-virtual {v0, v6}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v7

    .line 224
    .local v7, "tagCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_12

    .line 225
    invoke-static {v6, v8}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->calcTagOffset(II)I

    move-result v9

    .line 227
    .local v9, "tagOffset":I
    invoke-virtual {v0, v9}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v10

    .line 230
    .local v10, "tagType":I
    const/16 v11, 0x112

    if-eq v10, v11, :cond_3

    .line 231
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 234
    :cond_3
    add-int/lit8 v11, v9, 0x2

    invoke-virtual {v0, v11}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v11

    .line 237
    .local v11, "formatCode":I
    const/4 v12, 0x1

    if-lt v11, v12, :cond_10

    const/16 v12, 0xc

    if-le v11, v12, :cond_4

    goto/16 :goto_4

    .line 244
    :cond_4
    add-int/lit8 v12, v9, 0x4

    invoke-virtual {v0, v12}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v12

    .line 246
    .local v12, "componentCount":I
    if-gez v12, :cond_6

    .line 247
    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 248
    const-string v13, "Negative tiff component count"

    invoke-static {v4, v13}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto/16 :goto_5

    .line 247
    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 253
    :cond_6
    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    const-string v14, " tagType="

    if-eqz v13, :cond_7

    .line 254
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got tagIndex="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " formatCode="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " componentCount="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_7
    sget-object v13, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v13, v13, v11

    add-int/2addr v13, v12

    .line 260
    .local v13, "byteCount":I
    const/4 v15, 0x4

    if-le v13, v15, :cond_9

    .line 261
    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 262
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto/16 :goto_5

    .line 261
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 267
    :cond_9
    add-int/lit8 v15, v9, 0x8

    .line 269
    .local v15, "tagValueOffset":I
    if-ltz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v3

    if-le v15, v3, :cond_a

    goto :goto_3

    .line 276
    :cond_a
    if-ltz v13, :cond_c

    add-int v3, v15, v13

    invoke-virtual/range {p0 .. p0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v14

    if-le v3, v14, :cond_b

    goto :goto_2

    .line 284
    :cond_b
    invoke-virtual {v0, v15}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v3

    return v3

    .line 277
    :cond_c
    :goto_2
    const/4 v3, 0x3

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_5

    .line 277
    :cond_d
    const/4 v0, 0x3

    goto :goto_5

    .line 270
    :cond_e
    :goto_3
    const/4 v3, 0x3

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal tagValueOffset="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_5

    .line 270
    :cond_f
    const/4 v0, 0x3

    goto :goto_5

    .line 238
    .end local v12    # "componentCount":I
    .end local v13    # "byteCount":I
    .end local v15    # "tagValueOffset":I
    :cond_10
    :goto_4
    const/4 v0, 0x3

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got invalid format code="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v11    # "formatCode":I
    :cond_11
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x3

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 287
    .end local v8    # "i":I
    .end local v9    # "tagOffset":I
    .end local v10    # "tagType":I
    :cond_12
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getOrientation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v0

    .line 122
    .local v0, "magicNumber":I
    invoke-static {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 123
    return v2

    .line 125
    :cond_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getExifSegment()[B

    move-result-object v1

    .line 126
    .local v1, "exifData":[B
    if-eqz v1, :cond_1

    array-length v3, v1

    sget-object v4, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v4, v4

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 129
    .local v3, "hasJpegExifPreamble":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 130
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget-object v5, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 131
    aget-byte v6, v1, v4

    aget-byte v5, v5, v4

    if-eq v6, v5, :cond_2

    .line 132
    const/4 v3, 0x0

    .line 133
    goto :goto_2

    .line 130
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v4    # "i":I
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 139
    new-instance v2, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v2, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v2

    return v2

    .line 141
    :cond_4
    return v2
.end method

.method public getType()Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v0

    .line 90
    .local v0, "firstTwoBytes":I
    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    .line 91
    sget-object v1, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v1

    .line 94
    :cond_0
    shl-int/lit8 v1, v0, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 96
    .local v1, "firstFourBytes":I
    const v2, -0x76afb1b9

    if-ne v1, v2, :cond_2

    .line 98
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v3, 0x15

    invoke-virtual {v2, v3, v4}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    .line 99
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getByte()I

    move-result v2

    .line 101
    .local v2, "alpha":I
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    sget-object v3, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_1
    sget-object v3, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    :goto_0
    return-object v3

    .line 105
    .end local v2    # "alpha":I
    :cond_2
    shr-int/lit8 v2, v1, 0x8

    const v3, 0x474946

    if-ne v2, v3, :cond_3

    .line 106
    sget-object v2, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v2

    .line 109
    :cond_3
    sget-object v2, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v2
.end method

.method public hasAlpha()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0

    return v0
.end method
