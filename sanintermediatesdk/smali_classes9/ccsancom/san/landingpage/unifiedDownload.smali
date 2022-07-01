.class public Lccsancom/san/landingpage/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z
    .locals 7

    .line 5
    nop

    .line 1
    sget v0, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x2e

    or-int/lit8 v0, v0, 0x2e

    add-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x3f

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 0
    :pswitch_0
    if-eqz p0, :cond_1

    .line 1
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    :try_start_0
    array-length v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p0, :cond_2

    goto :goto_4

    :cond_2
    const/16 v3, 0x62

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_2

    .line 5
    :goto_5
    xor-int/lit8 v0, v1, 0x19

    and-int/lit8 v1, v1, 0x19

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 1
    const/4 v0, 0x0

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    :goto_6
    const/16 v1, 0x2a

    const/16 v3, 0x52

    packed-switch v0, :pswitch_data_3

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_8

    :pswitch_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    :try_start_1
    array-length v6, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_7

    :cond_4
    const/16 v3, 0xc

    :goto_7
    packed-switch v3, :pswitch_data_4

    goto :goto_b

    .line 5
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :goto_8
    const/16 v3, 0x2a

    :cond_5
    packed-switch v3, :pswitch_data_5

    .line 5
    :pswitch_2
    sget v0, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x53

    sub-int/2addr v0, v2

    sub-int/2addr v0, v5

    sub-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 1
    const/4 v0, 0x1

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    :goto_9
    packed-switch v0, :pswitch_data_6

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_a

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    :try_start_2
    array-length v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_9

    goto :goto_a

    :catchall_1
    move-exception p0

    throw p0

    .line 1
    :goto_a
    sget p0, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    and-int/lit8 v0, p0, 0x12

    or-int/lit8 p0, p0, 0x12

    add-int/2addr v0, p0

    sub-int/2addr v0, v5

    sub-int/2addr v0, v2

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 5
    :cond_7
    nop

    :goto_b
    :pswitch_4
    sget p0, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    or-int/lit8 v0, p0, 0x1e

    shl-int/2addr v0, v2

    xor-int/lit8 p0, p0, 0x1e

    sub-int/2addr v0, p0

    and-int/lit8 p0, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_8

    .line 1
    goto :goto_c

    :cond_8
    const/4 v2, 0x0

    :goto_c
    packed-switch v2, :pswitch_data_7

    .line 5
    goto :goto_d

    :pswitch_5
    return v5

    :goto_d
    const/16 p0, 0x63

    :try_start_3
    div-int/2addr p0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v5

    :catchall_2
    move-exception p0

    throw p0

    .line 4
    :cond_9
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem()Lccsansan/dt/deleteDownItem;

    move-result-object p0

    iget-object p0, p0, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    .line 5
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 1
    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    const/4 p0, 0x1

    :goto_e
    packed-switch p0, :pswitch_data_8

    .line 5
    sget p0, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    const/16 v0, 0x9

    and-int/lit8 v3, p0, -0xa

    xor-int/lit8 v4, p0, -0x1

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    and-int/2addr p0, v0

    shl-int/2addr p0, v2

    or-int v0, v3, p0

    shl-int/2addr v0, v2

    xor-int/2addr p0, v3

    sub-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    goto :goto_f

    :pswitch_6
    nop

    .line 1
    sget p0, Lccsancom/san/landingpage/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v0, p0, 0x5b

    and-int/lit8 p0, p0, 0x5b

    shl-int/2addr p0, v2

    or-int v1, v0, p0

    shl-int/2addr v1, v2

    xor-int/2addr p0, v0

    sub-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    .line 5
    return v2

    .line 1
    :goto_f
    const/16 v1, 0x25

    goto :goto_10

    :cond_b
    nop

    :goto_10
    packed-switch v1, :pswitch_data_9

    .line 5
    :pswitch_7
    return v5

    .line 1
    :catchall_3
    move-exception p0

    goto :goto_12

    :goto_11
    throw p0

    :goto_12
    goto :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x52
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x52
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x25
        :pswitch_7
    .end packed-switch
.end method
