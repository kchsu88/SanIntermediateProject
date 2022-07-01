.class public final Lccsancom/mbridge/msdk/foundation/same/c/a;
.super Ljava/lang/Object;
.source "CommonBitmapUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;
    .locals 4

    .line 35
    nop

    .line 36
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/o;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lccsanandroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Lccsanandroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    invoke-static {p0, v0}, Lccsanandroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    .line 42
    const/4 v3, 0x0

    iput-boolean v3, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    iput-boolean v2, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 44
    iput-boolean v2, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 45
    iput-boolean v2, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 46
    invoke-static {p0, v0}, Lccsanandroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 47
    :catch_1
    move-exception v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 49
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 50
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a()V

    .line 52
    :try_start_1
    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->RGB_565:Lccsanandroid/graphics/Bitmap$Config;

    iput-object v2, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inPreferredConfig:Lccsanandroid/graphics/Bitmap$Config;

    .line 53
    invoke-static {p0, v0}, Lccsanandroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 54
    sget-object p0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    iput-object p0, v0, Lccsanandroid/graphics/BitmapFactory$Options;->inPreferredConfig:Lccsanandroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    goto :goto_0

    .line 55
    :catch_2
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 60
    :goto_0
    nop

    .line 61
    :goto_1
    nop

    .line 64
    return-object v1

    .line 62
    :cond_0
    return-object v1
.end method

.method public static a(Lccsanandroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 4

    .line 153
    nop

    .line 154
    nop

    .line 156
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    sget-object v2, Lccsanandroid/graphics/Bitmap$CompressFormat;->JPEG:Lccsanandroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Lccsanandroid/graphics/Bitmap;->compress(Lccsanandroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    nop

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :cond_0
    :goto_0
    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 174
    :goto_1
    move-object v0, p0

    goto :goto_4

    .line 159
    :catch_1
    move-exception p0

    goto :goto_2

    .line 164
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 159
    :catch_2
    move-exception p0

    move-object v1, v0

    .line 160
    :goto_2
    :try_start_3
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :cond_1
    if-eqz v1, :cond_3

    .line 166
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    :cond_2
    :goto_3
    goto :goto_4

    .line 167
    :catch_3
    move-exception p0

    .line 168
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 174
    :cond_3
    :goto_4
    return-object v0

    .line 164
    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_4

    .line 166
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 171
    goto :goto_6

    .line 167
    :catch_4
    move-exception v0

    .line 168
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    :cond_4
    :goto_6
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method
