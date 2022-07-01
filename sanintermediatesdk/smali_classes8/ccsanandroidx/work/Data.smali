.class public final Lccsanandroidx/work/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/Data$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lccsanandroidx/work/Data;

.field public static final MAX_DATA_BYTES:I = 0x2800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "Data"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lccsanandroidx/work/Data$Builder;

    invoke-direct {v0}, Lccsanandroidx/work/Data$Builder;-><init>()V

    invoke-virtual {v0}, Lccsanandroidx/work/Data$Builder;->build()Lccsanandroidx/work/Data;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/Data;->EMPTY:Lccsanandroidx/work/Data;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/work/Data;)V
    .locals 2
    .param p1, "other"    # Lccsanandroidx/work/Data;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 72
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    .line 74
    return-void
.end method

.method static convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "value"    # [Z

    .line 453
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 454
    .local v0, "returnValue":[Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 455
    aget-boolean v2, p0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static convertPrimitiveByteArray([B)[Ljava/lang/Byte;
    .locals 3
    .param p0, "value"    # [B

    .line 461
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 462
    .local v0, "returnValue":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 463
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static convertPrimitiveDoubleArray([D)[Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # [D

    .line 497
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    .line 498
    .local v0, "returnValue":[Ljava/lang/Double;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 499
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static convertPrimitiveFloatArray([F)[Ljava/lang/Float;
    .locals 3
    .param p0, "value"    # [F

    .line 488
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    .line 489
    .local v0, "returnValue":[Ljava/lang/Float;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 490
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static convertPrimitiveIntArray([I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "value"    # [I

    .line 470
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 471
    .local v0, "returnValue":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 472
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static convertPrimitiveLongArray([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "value"    # [J

    .line 479
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    .line 480
    .local v0, "returnValue":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 481
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fromByteArray([B)Lccsanandroidx/work/Data;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 402
    const-string v0, "Error in Data#fromByteArray: "

    array-length v1, p0

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_3

    .line 407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 409
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 411
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 412
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_0

    .line 413
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 418
    .end local v4    # "i":I
    :cond_0
    nop

    .line 420
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    goto :goto_1

    .line 421
    :catch_0
    move-exception v4

    .line 422
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 429
    :goto_2
    goto :goto_5

    .line 427
    :catch_1
    move-exception v4

    .line 428
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 418
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 415
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    .line 416
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-object v5, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 420
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 423
    goto :goto_4

    .line 421
    :catch_4
    move-exception v4

    .line 422
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 431
    :goto_5
    new-instance v0, Lccsanandroidx/work/Data;

    invoke-direct {v0, v1}, Lccsanandroidx/work/Data;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 418
    :goto_6
    if-eqz v3, :cond_2

    .line 420
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 423
    goto :goto_7

    .line 421
    :catch_5
    move-exception v5

    .line 422
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 429
    goto :goto_8

    .line 427
    :catch_6
    move-exception v5

    .line 428
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v5    # "e":Ljava/io/IOException;
    :goto_8
    throw v4

    .line 403
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public static toByteArray(Lccsanandroidx/work/Data;)[B
    .locals 7
    .param p0, "data"    # Lccsanandroidx/work/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 354
    const-string v0, "Error in Data#toByteArray: "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 355
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 357
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 358
    invoke-virtual {p0}, Lccsanandroidx/work/Data;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 359
    iget-object v3, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 360
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 361
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 367
    :cond_0
    nop

    .line 371
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    goto :goto_1

    .line 372
    :catch_0
    move-exception v3

    .line 373
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 380
    goto :goto_2

    .line 378
    :catch_1
    move-exception v3

    .line 379
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 383
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v3, 0x2800

    if-gt v0, v3, :cond_1

    .line 388
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 384
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 363
    :catch_2
    move-exception v3

    .line 364
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    if-eqz v2, :cond_2

    .line 371
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 374
    goto :goto_3

    .line 372
    :catch_3
    move-exception v5

    .line 373
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 380
    goto :goto_4

    .line 378
    :catch_4
    move-exception v5

    .line 379
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    return-object v4

    .line 367
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v2, :cond_3

    .line 371
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 374
    goto :goto_6

    .line 372
    :catch_5
    move-exception v4

    .line 373
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 380
    goto :goto_7

    .line 378
    :catch_6
    move-exception v4

    .line 379
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Lccsanandroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7
    goto :goto_9

    :goto_8
    throw v3

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 436
    if-ne p0, p1, :cond_0

    .line 437
    const/4 v0, 0x1

    return v0

    .line 439
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsanandroidx/work/Data;

    .line 443
    .local v0, "other":Lccsanandroidx/work/Data;
    iget-object v1, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    iget-object v2, v0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 440
    .end local v0    # "other":Lccsanandroidx/work/Data;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 84
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 86
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 88
    :cond_0
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, v0

    check-cast v1, [Ljava/lang/Boolean;

    check-cast v1, [Ljava/lang/Boolean;

    .line 102
    .local v1, "array":[Ljava/lang/Boolean;
    array-length v2, v1

    new-array v2, v2, [Z

    .line 103
    .local v2, "returnArray":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 104
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 108
    .end local v1    # "array":[Ljava/lang/Boolean;
    .end local v2    # "returnArray":[Z
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 120
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 122
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 124
    :cond_0
    return p2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v0

    check-cast v1, [Ljava/lang/Byte;

    check-cast v1, [Ljava/lang/Byte;

    .line 138
    .local v1, "array":[Ljava/lang/Byte;
    array-length v2, v1

    new-array v2, v2, [B

    .line 139
    .local v2, "returnArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 140
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 144
    .end local v1    # "array":[Ljava/lang/Byte;
    .end local v2    # "returnArray":[B
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 264
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 266
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 268
    :cond_0
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 281
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    check-cast v1, [Ljava/lang/Double;

    .line 282
    .local v1, "array":[Ljava/lang/Double;
    array-length v2, v1

    new-array v2, v2, [D

    .line 283
    .local v2, "returnArray":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 284
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 288
    .end local v1    # "array":[Ljava/lang/Double;
    .end local v2    # "returnArray":[D
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 228
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 230
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 232
    :cond_0
    return p2
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 245
    move-object v1, v0

    check-cast v1, [Ljava/lang/Float;

    check-cast v1, [Ljava/lang/Float;

    .line 246
    .local v1, "array":[Ljava/lang/Float;
    array-length v2, v1

    new-array v2, v2, [F

    .line 247
    .local v2, "returnArray":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 248
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 252
    .end local v1    # "array":[Ljava/lang/Float;
    .end local v2    # "returnArray":[F
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 156
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 158
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 160
    :cond_0
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 173
    move-object v1, v0

    check-cast v1, [Ljava/lang/Integer;

    check-cast v1, [Ljava/lang/Integer;

    .line 174
    .local v1, "array":[Ljava/lang/Integer;
    array-length v2, v1

    new-array v2, v2, [I

    .line 175
    .local v2, "returnArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 176
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 180
    .end local v1    # "array":[Ljava/lang/Integer;
    .end local v2    # "returnArray":[I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 192
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 194
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 196
    :cond_0
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 209
    move-object v1, v0

    check-cast v1, [Ljava/lang/Long;

    check-cast v1, [Ljava/lang/Long;

    .line 210
    .local v1, "array":[Ljava/lang/Long;
    array-length v2, v1

    new-array v2, v2, [J

    .line 211
    .local v2, "returnArray":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 212
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 216
    .end local v1    # "array":[Ljava/lang/Long;
    .end local v2    # "returnArray":[J
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 301
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 303
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 316
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 318
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 448
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public size()I
    .locals 1

    .line 339
    iget-object v0, p0, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
