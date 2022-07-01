.class public final Lccsancom/san/xz/base/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)I
    .locals 6

    .line 3
    sget v0, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x4b

    and-int/lit8 v0, v0, 0x4b

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v3, 0x59

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->getDownloadingList:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_2

    goto :goto_2

    :pswitch_0
    sget-object v0, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->getDownloadingList:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_1

    const/16 p0, 0x14

    goto :goto_1

    :cond_1
    const/16 p0, 0x2d

    :goto_1
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 p0, 0x59

    goto :goto_3

    :cond_2
    const/16 p0, 0x9

    :goto_3
    packed-switch p0, :pswitch_data_2

    goto :goto_5

    :goto_4
    sget p0, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 v0, p0, 0x43

    and-int/lit8 p0, p0, 0x43

    shl-int/2addr p0, v2

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    rem-int/2addr v0, v1

    .line 3
    return v4

    :goto_5
    :pswitch_2
    const-string p0, "san_common_content_apps"

    invoke-static {p0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p0

    sget v0, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    and-int/lit8 v5, v0, 0x59

    xor-int/2addr v0, v3

    or-int/2addr v0, v5

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v5, v0

    shl-int/2addr v3, v2

    xor-int/2addr v0, v5

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_3

    .line 1
    goto :goto_6

    :cond_3
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_3

    .line 3
    goto :goto_7

    :pswitch_3
    return p0

    :goto_7
    :try_start_0
    div-int/2addr v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)Ljava/lang/String;
    .locals 3

    .line 5
    sget v0, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0xe

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    :cond_0
    invoke-static {p1}, Lccsancom/san/xz/base/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    const/16 v0, 0x23

    goto :goto_0

    :cond_1
    const/16 v0, 0x54

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x21

    and-int/lit8 v0, v0, 0x21

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :cond_2
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    and-int/lit8 v0, p1, 0x36

    or-int/lit8 p1, p1, 0x36

    add-int/2addr v0, p1

    const/4 p1, 0x0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :goto_2
    sget p0, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x66

    sub-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    :cond_4
    const-string p0, ""

    :goto_3
    sget p1, Lccsancom/san/xz/base/unifiedDownload;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x7b

    or-int/lit8 p1, p1, 0x7b

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/xz/base/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
