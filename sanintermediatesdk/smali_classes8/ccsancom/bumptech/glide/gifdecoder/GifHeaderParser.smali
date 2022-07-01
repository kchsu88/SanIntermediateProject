.class public Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field static final MIN_FRAME_DELAY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .locals 1

    .line 372
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private read()I
    .locals 4

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v1, 0xff

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v3, 0x1

    iput v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private readBitmap()V
    .locals 8

    .line 177
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 178
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 179
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 180
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 182
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 184
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 185
    .local v1, "lctFlag":Z
    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 189
    .local v4, "lctSize":I
    iget-object v5, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v5, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .line 190
    if-eqz v1, :cond_2

    .line 192
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0, v4}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v5

    iput-object v5, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_1

    .line 195
    :cond_2
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    const/4 v5, 0x0

    iput-object v5, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 199
    :goto_1
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    iget-object v5, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    .line 202
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->skipImageData()V

    .line 204
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    return-void

    .line 208
    :cond_3
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    add-int/2addr v5, v3

    iput v5, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 210
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget-object v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method private readBlock()I
    .locals 6

    .line 329
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "n":I
    if-lez v0, :cond_2

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 335
    sub-int v0, v2, v1

    .line 336
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    add-int/2addr v1, v0

    goto :goto_0

    .line 345
    :cond_0
    goto :goto_1

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " blockSize: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :cond_1
    iget-object v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v4, 0x1

    iput v4, v3, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 347
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v1
.end method

.method private readColorTable(I)[I
    .locals 11
    .param p1, "ncolors"    # I

    .line 274
    mul-int/lit8 v0, p1, 0x3

    .line 275
    .local v0, "nbytes":I
    const/4 v1, 0x0

    .line 276
    .local v1, "tab":[I
    new-array v2, v0, [B

    .line 279
    .local v2, "c":[B
    :try_start_0
    iget-object v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    const/16 v3, 0x100

    new-array v3, v3, [I

    move-object v1, v3

    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, "i":I
    const/4 v4, 0x0

    .line 286
    .local v4, "j":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 287
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 288
    .local v4, "r":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 289
    .local v5, "g":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 290
    .local v6, "b":I
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    const/high16 v9, -0x1000000

    shl-int/lit8 v10, v4, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v5, 0x8

    or-int/2addr v9, v10

    or-int/2addr v9, v6

    aput v9, v1, v3
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v4    # "r":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    move v4, v7

    move v3, v8

    goto :goto_0

    .line 297
    .end local v7    # "j":I
    .end local v8    # "i":I
    :cond_0
    goto :goto_1

    .line 292
    :catch_0
    move-exception v3

    .line 293
    .local v3, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "GifHeaderParser"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    const-string v5, "Format Error Reading Color Table"

    invoke-static {v4, v5, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :cond_1
    iget-object v4, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v5, 0x1

    iput v5, v4, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 299
    .end local v3    # "e":Ljava/nio/BufferUnderflowException;
    :goto_1
    return-object v1
.end method

.method private readContents()V
    .locals 6

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v1

    if-nez v1, :cond_3

    .line 83
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    .line 84
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 139
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v3, 0x1

    iput v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_2

    .line 134
    :sswitch_0
    const/4 v0, 0x1

    .line 135
    goto :goto_2

    .line 90
    :sswitch_1
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v3, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v3}, Lccsancom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 93
    :cond_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readBitmap()V

    .line 94
    goto :goto_2

    .line 97
    :sswitch_2
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    .line 98
    sparse-switch v1, :sswitch_data_1

    .line 129
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 131
    goto :goto_2

    .line 107
    :sswitch_3
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    .line 108
    const-string v2, ""

    .line 109
    .local v2, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v3    # "i":I
    :cond_1
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readNetscapeExt()V

    goto :goto_2

    .line 116
    :cond_2
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 118
    goto :goto_2

    .line 121
    .end local v2    # "app":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 122
    goto :goto_2

    .line 102
    :sswitch_5
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v3, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v3}, Lccsancom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 103
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readGraphicControlExt()V

    .line 104
    goto :goto_2

    .line 125
    :sswitch_6
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 126
    nop

    .line 141
    .end local v1    # "code":I
    :goto_2
    goto :goto_0

    .line 142
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0xf9 -> :sswitch_5
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 4

    .line 149
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 151
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 153
    .local v0, "packed":I
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 154
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 158
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 160
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    .line 162
    .local v1, "delayInHundredthsOfASecond":I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 163
    const/16 v1, 0xa

    .line 165
    :cond_2
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    mul-int/lit8 v3, v1, 0xa

    iput v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 167
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    iput v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 169
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 170
    return-void
.end method

.method private readHeader()V
    .locals 4

    .line 232
    const-string v0, ""

    .line 233
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x1

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 238
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readLSD()V

    .line 241
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-boolean v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 243
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iget-object v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    aget v2, v2, v3

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 245
    :cond_2
    return-void
.end method

.method private readLSD()V
    .locals 4

    .line 251
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 252
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 254
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 256
    .local v0, "packed":I
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    .line 260
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x2

    and-int/lit8 v3, v0, 0x7

    shl-int/2addr v2, v3

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    .line 262
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    .line 264
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    iput v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->pixelAspect:I

    .line 265
    return-void
.end method

.method private readNetscapeExt()V
    .locals 4

    .line 217
    :cond_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    .line 218
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 220
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 221
    .local v1, "b1":I
    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 222
    .local v0, "b2":I
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    shl-int/lit8 v3, v0, 0x8

    or-int/2addr v3, v1

    iput v3, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 224
    .end local v0    # "b2":I
    .end local v1    # "b1":I
    :cond_1
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 1

    .line 368
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 53
    new-instance v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lccsancom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 54
    iput v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 55
    return-void
.end method

.method private skip()V
    .locals 3

    .line 318
    :goto_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 319
    .local v0, "blockSize":I
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    if-gtz v0, :cond_0

    .line 321
    return-void

    .line 320
    :cond_0
    goto :goto_0
.end method

.method private skipImageData()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 309
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 310
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 47
    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 48
    return-void
.end method

.method public parseHeader()Lccsancom/bumptech/glide/gifdecoder/GifHeader;
    .locals 2

    .line 58
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    return-object v0

    .line 65
    :cond_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readHeader()V

    .line 66
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents()V

    .line 68
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gez v0, :cond_1

    .line 69
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 73
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    return-object v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData([B)Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 2
    .param p1, "data"    # [B

    .line 33
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->reset()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x2

    iput v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 42
    :goto_0
    return-object p0
.end method
