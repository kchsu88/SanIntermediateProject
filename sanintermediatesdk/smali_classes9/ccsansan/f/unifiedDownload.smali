.class public Lccsansan/f/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 13
    sget v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x61

    xor-int/lit8 v0, v0, 0x61

    or-int/2addr v0, v1

    const/4 v2, -0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :try_start_0
    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v1, 0x49

    goto :goto_1

    :cond_1
    const/16 v1, 0x33

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 13
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    :goto_4
    goto :goto_9

    .line 13
    :pswitch_1
    sget p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    and-int/lit8 p1, p0, 0x35

    xor-int/lit8 v1, p0, 0x35

    or-int/2addr v1, p1

    add-int/2addr p1, v1

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 1
    const/4 p1, 0x0

    goto :goto_5

    :cond_3
    const/4 p1, 0x1

    :goto_5
    packed-switch p1, :pswitch_data_3

    goto :goto_6

    .line 13
    :pswitch_2
    const/16 p1, 0x9

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    throw p0

    :goto_6
    and-int/lit8 p1, p0, 0x13

    xor-int/lit8 p0, p0, 0x13

    or-int/2addr p0, p1

    xor-int v1, p1, p0

    and-int/2addr p0, p1

    shl-int/2addr p0, v0

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1
    goto :goto_7

    :cond_4
    const/4 v0, 0x0

    :goto_7
    packed-switch v0, :pswitch_data_4

    .line 13
    goto :goto_8

    :pswitch_3
    return v2

    :goto_8
    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v2

    :catchall_2
    move-exception p0

    throw p0

    .line 3
    :goto_9
    invoke-static {p0}, Lccsansan/f/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1
    const/4 v5, 0x1

    goto :goto_a

    :cond_5
    const/4 v5, 0x0

    :goto_a
    const/16 v6, 0x8

    packed-switch v5, :pswitch_data_5

    .line 13
    sget p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v0

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    goto/16 :goto_18

    .line 7
    :pswitch_4
    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne v1, v5, :cond_6

    .line 1
    goto :goto_b

    :cond_6
    const/16 v6, 0x18

    :goto_b
    packed-switch v6, :pswitch_data_6

    .line 13
    sget v1, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    and-int/lit8 v5, v1, 0x77

    or-int/lit8 v1, v1, 0x77

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    .line 8
    :cond_7
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    sget-object v5, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v1, v5, p1}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    .line 9
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    .line 13
    sget p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    and-int/lit8 p1, p0, 0x2d

    xor-int/lit8 v5, p1, -0x1

    or-int/lit8 p0, p0, 0x2d

    and-int/2addr p0, v5

    shl-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    or-int v5, p0, p1

    shl-int/2addr v5, v0

    xor-int/2addr p0, p1

    sub-int/2addr v5, p0

    rem-int/lit16 p0, v5, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 9
    :cond_8
    :pswitch_5
    if-nez v1, :cond_9

    .line 1
    const/16 p0, 0x28

    goto :goto_c

    :cond_9
    const/16 p0, 0x16

    :goto_c
    packed-switch p0, :pswitch_data_7

    .line 13
    sget p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 p1, p0, 0x61

    and-int/lit8 v1, p0, 0x61

    or-int/2addr p1, v1

    shl-int/2addr p1, v0

    xor-int/2addr v1, v2

    or-int/lit8 p0, p0, 0x61

    and-int/2addr p0, v1

    neg-int p0, p0

    or-int v1, p1, p0

    shl-int/2addr v1, v0

    xor-int/2addr p0, p1

    sub-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_d

    goto :goto_13

    :pswitch_6
    sget-object p0, Lccsansan/f/unifiedDownload$unifiedDownload;->removeDownloadListener:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v0, :cond_a

    .line 1
    const/4 p0, 0x0

    goto :goto_d

    :cond_a
    const/4 p0, 0x1

    :goto_d
    packed-switch p0, :pswitch_data_8

    .line 13
    sget p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    and-int/lit8 p1, p0, 0x1

    xor-int/lit8 v1, p0, 0x1

    or-int/2addr v1, p1

    or-int v2, p1, v1

    shl-int/2addr v2, v0

    xor-int/2addr p1, v1

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    goto :goto_10

    :pswitch_7
    sget p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    and-int/lit8 p1, p0, 0x6d

    xor-int/lit8 p0, p0, 0x6d

    or-int/2addr p0, p1

    neg-int p0, p0

    neg-int p0, p0

    xor-int/2addr p0, v2

    sub-int/2addr p1, p0

    sub-int/2addr p1, v0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_b

    .line 1
    const/16 p0, 0x3e

    goto :goto_e

    :cond_b
    const/16 p0, 0x39

    :goto_e
    packed-switch p0, :pswitch_data_9

    .line 13
    goto :goto_f

    :pswitch_8
    return v0

    :goto_f
    :try_start_3
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return v0

    :catchall_3
    move-exception p0

    throw p0

    .line 1
    :goto_10
    const/4 p1, 0x0

    goto :goto_11

    :cond_c
    const/4 p1, 0x1

    :goto_11
    packed-switch p1, :pswitch_data_a

    .line 13
    const/4 v3, 0x1

    goto :goto_12

    :pswitch_9
    nop

    :goto_12
    add-int/lit8 p0, p0, 0x4c

    sub-int/2addr p0, v0

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return v3

    .line 1
    :goto_13
    const/4 p1, 0x1

    goto :goto_14

    :cond_d
    const/4 p1, 0x0

    :goto_14
    packed-switch p1, :pswitch_data_b

    .line 9
    goto :goto_15

    .line 13
    :pswitch_a
    const/16 p1, 0x5e

    :try_start_4
    div-int/2addr p1, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception p0

    throw p0

    :goto_15
    add-int/lit8 p0, p0, 0x4a

    or-int/lit8 p1, p0, -0x1

    shl-int/2addr p1, v0

    xor-int/2addr p0, v2

    sub-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e

    .line 1
    goto :goto_16

    :cond_e
    const/4 v0, 0x0

    :goto_16
    packed-switch v0, :pswitch_data_c

    .line 13
    goto :goto_17

    :pswitch_b
    return v2

    :goto_17
    :try_start_5
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    return v2

    :catchall_5
    move-exception p0

    throw p0

    .line 1
    :goto_18
    goto :goto_19

    :cond_f
    const/16 v6, 0x11

    :goto_19
    packed-switch v6, :pswitch_data_d

    .line 4
    goto :goto_1a

    .line 13
    :pswitch_c
    const/16 p0, 0x2c

    :try_start_6
    div-int/2addr p0, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_1a

    :catchall_6
    move-exception p0

    throw p0

    :goto_1a
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x18
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x16
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x39
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x8
        :pswitch_c
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)I
    .locals 4

    .line 10
    sget v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    const/16 v1, 0x41

    and-int/lit8 v2, v0, -0x42

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    const-string v0, "ad"

    invoke-static {p0, v0}, Lccsansan/f/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    and-int/lit8 v2, v0, 0x6f

    xor-int/lit8 v0, v0, 0x6f

    or-int/2addr v0, v2

    or-int v3, v2, v0

    shl-int/2addr v3, v1

    xor-int/2addr v0, v2

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 9
    sget v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x72

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 9
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    :pswitch_1
    goto :goto_6

    :goto_4
    :pswitch_2
    sget p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    and-int/lit8 p1, p0, 0x13

    or-int/lit8 p0, p0, 0x13

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/16 p0, 0x59

    goto :goto_5

    :cond_3
    const/16 p0, 0x4e

    :goto_5
    packed-switch p0, :pswitch_data_3

    .line 9
    return v3

    .line 1
    :pswitch_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v3

    :catchall_1
    move-exception p0

    throw p0

    .line 3
    :goto_6
    invoke-static {p0}, Lccsansan/f/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1
    const/4 v2, 0x1

    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_4

    sget p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x77

    and-int/lit8 v0, p0, 0x77

    or-int/2addr p1, v0

    shl-int/2addr p1, v1

    xor-int/lit8 v0, v0, -0x1

    or-int/lit8 v2, p0, 0x77

    and-int/2addr v0, v2

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_b

    goto/16 :goto_10

    .line 7
    :pswitch_4
    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne v0, v2, :cond_5

    .line 1
    const/4 v0, 0x0

    goto :goto_8

    :cond_5
    const/4 v0, 0x1

    :goto_8
    packed-switch v0, :pswitch_data_5

    .line 9
    sget v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 v2, v0, 0x5b

    and-int/lit8 v4, v0, 0x5b

    or-int/2addr v2, v4

    shl-int/2addr v2, v1

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v0, v0, 0x5b

    and-int/2addr v0, v4

    neg-int v0, v0

    or-int v4, v2, v0

    shl-int/2addr v4, v1

    xor-int/2addr v0, v2

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    goto :goto_9

    :pswitch_5
    nop

    .line 1
    sget p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x26

    sub-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    .line 9
    return v1

    .line 8
    :cond_6
    :goto_9
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v2, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v2, p1}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    .line 9
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 1
    const/4 p0, 0x0

    goto :goto_a

    :cond_7
    const/4 p0, 0x1

    :goto_a
    packed-switch p0, :pswitch_data_6

    .line 9
    goto :goto_c

    :pswitch_6
    sget p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 p1, p0, 0x67

    and-int/lit8 p0, p0, 0x67

    shl-int/2addr p0, v1

    neg-int p0, p0

    neg-int p0, p0

    xor-int/lit8 p0, p0, -0x1

    sub-int/2addr p1, p0

    sub-int/2addr p1, v1

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_8

    .line 1
    const/4 p0, 0x0

    goto :goto_b

    :cond_8
    const/4 p0, 0x1

    :goto_b
    packed-switch p0, :pswitch_data_7

    .line 9
    const/4 p0, 0x0

    goto :goto_d

    :pswitch_7
    const/4 p0, 0x1

    goto :goto_d

    :goto_c
    sget p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    and-int/lit8 p1, p0, 0x2b

    or-int/lit8 p0, p0, 0x2b

    neg-int p0, p0

    neg-int p0, p0

    xor-int/lit8 p0, p0, -0x1

    sub-int/2addr p1, p0

    sub-int/2addr p1, v1

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_9

    :cond_9
    const/4 p0, 0x0

    .line 1
    :goto_d
    sget p1, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x36

    and-int/lit8 p1, p1, 0x36

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    goto :goto_e

    :cond_a
    const/4 v1, 0x0

    :goto_e
    packed-switch v1, :pswitch_data_8

    goto :goto_f

    .line 9
    :pswitch_8
    return p0

    .line 1
    :goto_f
    const/16 p1, 0x45

    :try_start_2
    div-int/2addr p1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return p0

    :catchall_2
    move-exception p0

    throw p0

    :goto_10
    const/4 p1, 0x1

    goto :goto_11

    :cond_b
    const/4 p1, 0x0

    :goto_11
    packed-switch p1, :pswitch_data_9

    .line 4
    goto :goto_12

    .line 1
    :pswitch_9
    const/4 v3, 0x1

    .line 9
    :goto_12
    xor-int/lit8 p1, p0, 0x65

    and-int/lit8 p0, p0, 0x65

    or-int/2addr p0, p1

    shl-int/2addr p0, v1

    neg-int p1, p1

    xor-int v0, p0, p1

    and-int/2addr p0, p1

    shl-int/2addr p0, v1

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x59
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 14
    sget v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x31

    and-int/lit8 v0, v0, 0x31

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/f/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x61

    and-int/lit8 v0, v0, 0x61

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v1, 0x7

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
