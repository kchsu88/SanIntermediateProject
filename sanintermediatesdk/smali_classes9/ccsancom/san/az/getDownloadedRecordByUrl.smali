.class public Lccsancom/san/az/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I = 0x0

.field private static addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks; = null

.field private static getDownloadingList:I = 0x0

.field private static removeDownloadListener:Z = false

.field private static unifiedDownload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    const/4 v2, 0x1

    and-int/lit8 v2, v2, 0x7e

    or-int/lit8 v3, v1, 0x7e

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils()Z
    .locals 4

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x63

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x63

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener:Z

    goto :goto_1

    :pswitch_0
    sget-boolean v1, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener:Z

    goto :goto_2

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x6d

    sub-int/2addr v0, v2

    or-int/lit8 v3, v0, -0x1

    shl-int/lit8 v2, v3, 0x1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Z)Z
    .locals 4

    .line 2
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x38

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x38

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean p0, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload:Z

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener()Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x43

    xor-int/lit8 v0, v0, 0x43

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget-object v2, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v2, :cond_2

    goto :goto_2

    :pswitch_0
    sget-object v2, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_2

    :goto_4
    goto :goto_6

    :pswitch_1
    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v3, v2, 0x43

    and-int/lit8 v4, v2, 0x43

    or-int/2addr v3, v4

    shl-int/2addr v3, v1

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v2, v2, 0x43

    and-int/2addr v2, v4

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_7

    :goto_6
    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v3, v2, 0x25

    xor-int/lit8 v2, v2, 0x25

    or-int/2addr v2, v3

    neg-int v2, v2

    neg-int v2, v2

    or-int v4, v3, v2

    shl-int/lit8 v1, v4, 0x1

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    :cond_4
    :goto_7
    sget v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadStatusByUrl()Ljava/lang/Class;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x1b

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x1c

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v3

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadedList()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x3d

    xor-int/lit8 v0, v0, 0x3d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v1, v0

    shl-int/2addr v3, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    goto :goto_1

    :pswitch_0
    const-class v0, Lccsancom/san/core/CommonProtectActivity;

    sget v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v3, v1, 0x13

    or-int/lit8 v1, v1, 0x13

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    goto :goto_3

    :goto_1
    const/16 v0, 0xf

    goto :goto_2

    :cond_2
    const/16 v0, 0x4b

    :goto_2
    packed-switch v0, :pswitch_data_1

    const-class v0, Lccsancom/san/core/CommonStartOpenActivity;

    goto :goto_3

    :pswitch_1
    const-class v0, Lccsancom/san/core/CommonStartOpenActivity;

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    :goto_3
    sget v1, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v3, v1, 0x1e

    or-int/lit8 v1, v1, 0x1e

    add-int/2addr v3, v1

    xor-int/lit8 v1, v3, -0x1

    and-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x70

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadedList()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_3

    :pswitch_0
    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadedList()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x37

    goto :goto_1

    :cond_1
    const/16 v0, 0x2b

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 v0, 0x4e

    goto :goto_4

    :cond_2
    const/16 v0, 0x3e

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v3, v0, 0x4d

    and-int/lit8 v4, v0, 0x4d

    or-int/2addr v3, v4

    shl-int/2addr v3, v2

    and-int/lit8 v4, v0, -0x4e

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x4d

    or-int/2addr v0, v4

    neg-int v0, v0

    and-int v4, v3, v0

    or-int/2addr v0, v3

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    :cond_3
    const-string v0, "CommonStartOpenActivity"

    goto :goto_7

    :goto_5
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    or-int/lit8 v3, v0, 0x13

    shl-int/lit8 v4, v3, 0x1

    and-int/lit8 v0, v0, 0x13

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v4, v0

    or-int/2addr v0, v4

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    packed-switch v0, :pswitch_data_3

    :pswitch_2
    const-string v0, "CommonProtectActivity"

    :goto_7
    sget v3, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0xd

    sub-int/2addr v3, v2

    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v3, v3, -0x1

    shl-int/2addr v3, v2

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_8

    :cond_5
    const/4 v1, 0x1

    :goto_8
    packed-switch v1, :pswitch_data_4

    return-object v0

    :pswitch_3
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic getDownloadingList()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4a

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v3, v1, 0x37

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v1, v1, 0x37

    and-int/2addr v1, v4

    shl-int/lit8 v2, v3, 0x1

    and-int v3, v1, v2

    or-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    const-string v0, "Auto Start"

    const-string v1, "cpi_auto_open"

    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 51
    :cond_0
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 52
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadStatusByUrl()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v6, v2, 0x15

    xor-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v6

    neg-int v2, v2

    neg-int v2, v2

    and-int v7, v6, v2

    or-int/2addr v2, v6

    add-int/2addr v7, v2

    rem-int/lit16 v2, v7, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 100
    :goto_1
    :pswitch_0
    goto :goto_3

    .line 52
    :cond_2
    nop

    .line 54
    :try_start_1
    invoke-static {p1, v4}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    xor-int/lit8 v6, v2, 0x35

    and-int/lit8 v7, v2, 0x35

    or-int/2addr v6, v7

    shl-int/2addr v6, v5

    xor-int/2addr v7, v3

    or-int/lit8 v2, v2, 0x35

    and-int/2addr v2, v7

    neg-int v2, v2

    xor-int v7, v6, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v5

    add-int/2addr v7, v2

    rem-int/lit16 v2, v7, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 84
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 100
    goto :goto_1

    .line 54
    :goto_3
    const v2, 0x8000

    .line 56
    :try_start_2
    invoke-virtual {p1, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 57
    invoke-virtual {p1, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 58
    invoke-static {p0, v4, p1, v2}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    .line 60
    new-instance v2, Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v6, "san_ic_cpi_notification"

    .line 62
    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v6, "Sync Task"

    .line 63
    invoke-virtual {v2, v6}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setPriority(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v6, "call"

    .line 68
    invoke-virtual {v2, v6}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 70
    invoke-virtual {v2, p1, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Lccsanandroid/app/PendingIntent;Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object p1

    const-string v2, "notification"

    .line 72
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 73
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-lt v2, v6, :cond_6

    .line 74
    new-instance v2, Lccsanandroid/app/NotificationChannel;

    const/4 v6, 0x4

    invoke-direct {v2, v1, v0, v6}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 77
    invoke-virtual {v2, v3}, Lccsanandroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 78
    invoke-virtual {v2, v7, v7}, Lccsanandroid/app/NotificationChannel;->setSound(Lccsanandroid/net/Uri;Lccsanandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_4

    .line 84
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 100
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x65

    and-int/lit8 v0, v0, 0x65

    or-int/2addr v0, v1

    shl-int/2addr v0, v5

    neg-int v1, v1

    or-int v6, v0, v1

    shl-int/2addr v6, v5

    xor-int/2addr v0, v1

    sub-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 80
    :cond_5
    :try_start_3
    invoke-virtual {p0, v2}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3a

    and-int/lit8 v1, v0, -0x1

    or-int/2addr v0, v3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 80
    :cond_6
    :pswitch_1
    if-eqz p0, :cond_7

    .line 84
    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_9

    .line 100
    :pswitch_2
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x53

    const/16 v2, 0x53

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v6, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v5

    add-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 84
    goto :goto_6

    :cond_8
    const/16 v2, 0x32

    :goto_6
    packed-switch v2, :pswitch_data_4

    .line 80
    const/16 v0, 0x1002

    .line 84
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    goto :goto_7

    .line 100
    :pswitch_3
    const/16 v0, 0xc69

    .line 84
    invoke-virtual {p0, v0, p1}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :goto_7
    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x6a

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x69

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x69

    shl-int/2addr p1, v5

    neg-int p1, p1

    neg-int p1, p1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 84
    goto :goto_8

    :cond_9
    const/4 v4, 0x1

    :goto_8
    packed-switch v4, :pswitch_data_5

    .line 100
    :pswitch_4
    nop

    .line 87
    :goto_9
    :try_start_5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;

    const-wide/16 v1, 0xc8

    invoke-direct {v0, v1, v2, p0}, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;-><init>(JLccsanandroid/app/NotificationManager;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 100
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    or-int/lit8 p1, p0, 0x18

    shl-int/2addr p1, v5

    xor-int/lit8 p0, p0, 0x18

    sub-int/2addr p1, p0

    xor-int/lit8 p0, p1, -0x1

    and-int/2addr p1, v3

    shl-int/2addr p1, v5

    add-int/2addr p0, p1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_a

    .line 84
    const/16 p0, 0x51

    goto :goto_a

    :cond_a
    const/16 p0, 0x46

    :goto_a
    packed-switch p0, :pswitch_data_6

    .line 100
    goto :goto_b

    :pswitch_5
    return-void

    :goto_b
    :try_start_6
    array-length p0, v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 87
    :catch_0
    move-exception p0

    .line 100
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "start activity exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw p0

    :goto_d
    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x53
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x46
        :pswitch_5
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 6

    .line 10
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x79

    or-int/lit8 v0, v0, 0x79

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 10
    xor-int/lit8 p0, v0, 0x3d

    and-int/lit8 v0, v0, 0x3d

    or-int/2addr v0, p0

    shl-int/2addr v0, v1

    neg-int p0, p0

    xor-int v2, v0, p0

    and-int/2addr p0, v0

    shl-int/2addr p0, v1

    add-int/2addr v2, p0

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return-void

    .line 3
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/app/KeyguardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 5
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    goto :goto_6

    .line 10
    :pswitch_1
    sget v3, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v4, v3, -0x3c

    xor-int/lit8 v5, v3, -0x1

    and-int/lit8 v5, v5, 0x3b

    or-int/2addr v4, v5

    and-int/lit8 v3, v3, 0x3b

    shl-int/2addr v3, v1

    xor-int v5, v4, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v1

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 5
    const/16 v3, 0x29

    goto :goto_2

    :cond_3
    const/16 v3, 0x13

    :goto_2
    packed-switch v3, :pswitch_data_1

    :try_start_1
    invoke-virtual {v2}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    goto :goto_4

    :pswitch_2
    invoke-virtual {v2}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :try_start_2
    array-length v3, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 10
    :catchall_0
    move-exception p0

    throw p0

    .line 5
    :goto_4
    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    const/4 v2, 0x1

    :goto_5
    packed-switch v2, :pswitch_data_3

    .line 10
    :pswitch_3
    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v3, v2, 0xb

    and-int/lit8 v2, v2, 0xb

    shl-int/2addr v2, v1

    and-int v4, v3, v2

    or-int/2addr v2, v3

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    .line 5
    :cond_6
    :try_start_3
    const-string v2, "lock_screen"

    .line 7
    invoke-virtual {p0, v2, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 10
    sget v2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x5e

    sub-int/2addr v2, v1

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 7
    :cond_7
    :goto_6
    const-string v2, "is_background"

    .line 10
    :try_start_4
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v2, p0, 0x9

    or-int/lit8 p0, p0, 0x9

    add-int/2addr v2, p0

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_7

    :cond_8
    const/4 p0, 0x0

    :goto_7
    packed-switch p0, :pswitch_data_4

    .line 10
    goto :goto_8

    :catch_0
    move-exception p0

    :goto_8
    :pswitch_4
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v2, p0, 0x30

    or-int/lit8 p0, p0, 0x30

    add-int/2addr v2, p0

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V
    .locals 8

    .line 127
    nop

    .line 0
    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload:Z

    .line 102
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    .line 103
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v7, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;

    const-wide/16 v1, 0xc8

    move-object v0, v7

    move-object v3, p0

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;-><init>(JLccsansan/p/getDownloadedList;ZLjava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    invoke-virtual {p2, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 126
    const-string p1, "status"

    invoke-virtual {p0, p1, p3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    xor-int/lit8 p1, p0, 0x1f

    and-int/lit8 p2, p0, 0x1f

    or-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 p2, p2, -0x1

    or-int/lit8 p0, p0, 0x1f

    and-int/2addr p0, p2

    sub-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public static removeDownloadListener()V
    .locals 3

    .line 4
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x3b

    and-int/lit8 v0, v0, 0x3b

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "CPIApkOperateHelper"

    const-string v1, "--resetLifecycleCallbacks"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    .line 4
    const/16 v0, 0x47

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5a

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 3
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    sget-object v1, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x59

    and-int/lit8 v2, v0, 0x59

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x59

    and-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v0, 0x5b

    goto :goto_1

    :cond_3
    const/16 v0, 0x4f

    :goto_1
    :pswitch_0
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5a

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 4

    .line 3
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x15

    xor-int/lit8 v0, v0, 0x15

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p0}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    packed-switch v3, :pswitch_data_0

    const/16 p0, 0x23

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V
    .locals 7

    .line 95
    nop

    .line 11
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    .line 12
    new-instance v6, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;-><init>(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;Ljava/lang/String;)V

    sput-object v6, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    .line 94
    const-string p0, "CPIApkOperateHelper"

    const-string p1, "--register"

    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/Application;

    sget-object p1, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    or-int/lit8 p1, p0, 0x1b

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 p0, p0, 0x1b

    neg-int p0, p0

    or-int p2, p1, p0

    shl-int/lit8 p2, p2, 0x1

    xor-int/2addr p0, p1

    sub-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/16 p0, 0x25

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x4f

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedList;)V
    .locals 10

    .line 50
    const-string v0, "cpi_auto_open"

    const-string v1, "mode"

    const-string v2, "portal"

    const-string v3, "url"

    .line 4
    const/16 v4, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    new-instance v8, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadStatusByUrl()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "status"

    .line 5
    invoke-virtual {v8, v9, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "pkg"

    .line 6
    :try_start_1
    invoke-virtual {p2}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 7
    invoke-virtual {p2, v3}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v3, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 8
    invoke-virtual {p2, v2}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v2, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 9
    invoke-virtual {p2, v1}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const p1, 0x8000

    .line 10
    invoke-virtual {v8, p1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 11
    invoke-virtual {v8, p1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 12
    invoke-static {p0, v6, v8, p1}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    .line 14
    new-instance p2, Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p2, p0, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "san_ic_cpi_notification"

    .line 16
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v1, "Background Task"

    .line 17
    invoke-virtual {p2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v1, "Sync Work"

    .line 18
    invoke-virtual {p2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 19
    invoke-virtual {p2, v7}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 20
    invoke-virtual {p2, v7}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {p2, v7}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setPriority(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v1, "call"

    .line 22
    invoke-virtual {p2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 23
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p1, v7}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Lccsanandroid/app/PendingIntent;Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object p1

    const-string p2, "notification"

    .line 26
    invoke-virtual {p0, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 27
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p2, v2, :cond_3

    .line 28
    new-instance p2, Lccsanandroid/app/NotificationChannel;

    const-string v2, "Auto Start"

    const/4 v3, 0x4

    invoke-direct {p2, v0, v2, v3}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 31
    invoke-virtual {p2, v1}, Lccsanandroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 32
    invoke-virtual {p2, v5, v5}, Lccsanandroid/app/NotificationChannel;->setSound(Lccsanandroid/net/Uri;Lccsanandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_0

    .line 50
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x19

    and-int/lit8 v0, v0, 0x19

    shl-int/2addr v0, v7

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 34
    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    sget p2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p2, 0x5f

    xor-int/lit8 p2, p2, 0x5f

    or-int/2addr p2, v0

    xor-int/2addr p2, v1

    sub-int/2addr v0, p2

    sub-int/2addr v0, v7

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 p2, 0x2f

    goto :goto_1

    :cond_2
    const/16 p2, 0x50

    .line 34
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz p0, :cond_4

    .line 50
    const/16 p2, 0x4c

    goto :goto_2

    :cond_4
    const/16 p2, 0x34

    :goto_2
    packed-switch p2, :pswitch_data_1

    :goto_3
    goto :goto_4

    :pswitch_1
    sget p2, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 p2, p2, 0x60

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p2, v1

    shl-int/2addr p2, v7

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 34
    :cond_5
    const/16 p2, 0x1002

    .line 38
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 50
    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 p2, p1, 0x21

    or-int/lit8 p1, p1, 0x21

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    goto :goto_3

    .line 41
    :goto_4
    :try_start_4
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    new-instance p2, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;

    invoke-direct {p2, p0}, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;-><init>(Lccsanandroid/app/NotificationManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, p2, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 p1, p0, 0x5f

    xor-int/lit8 p0, p0, 0x5f

    or-int/2addr p0, p1

    xor-int/2addr p0, v1

    sub-int/2addr p1, p0

    sub-int/2addr p1, v7

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    goto :goto_5

    .line 41
    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#doFullScreenIntentOpen exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CPIApkOperateHelper"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 p1, p0, 0x2f

    xor-int/2addr p0, v4

    or-int/2addr p0, p1

    neg-int p0, p0

    neg-int p0, p0

    or-int p2, p1, p0

    shl-int/2addr p2, v7

    xor-int/2addr p0, p1

    sub-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_8

    const/4 v6, 0x1

    :cond_8
    packed-switch v6, :pswitch_data_2

    return-void

    :pswitch_2
    :try_start_5
    array-length p0, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 190
    const-string v0, "cpi_protect"

    .line 128
    new-instance v7, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {v7}, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;-><init>()V

    .line 162
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v8

    new-instance v9, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    const-wide/16 v2, 0xc8

    move-object v1, v9

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;-><init>(JLccsanandroid/app/Application$ActivityLifecycleCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 181
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/Application;

    invoke-virtual {v1, v7}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 184
    :try_start_0
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadStatusByUrl()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 185
    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    const-string v2, "pkg"

    .line 186
    invoke-virtual {v1, v2, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "portal"

    .line 187
    invoke-virtual {v1, p0, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "status"

    .line 188
    invoke-virtual {v1, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "mode"

    .line 189
    invoke-virtual {v1, p0, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 190
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x6c

    add-int/lit8 p0, p0, -0x1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    or-int/lit8 p1, p0, 0x3

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 p0, p0, 0x3

    sub-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p0, 0x23

    goto :goto_1

    :cond_1
    const/16 p0, 0x1f

    :goto_1
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0xe

    :try_start_1
    div-int/lit8 p0, p0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsansan/p/getDownloadedList;)V
    .locals 7

    .line 8
    const-string v0, "mode"

    const-string v1, "portal"

    const-string v2, "url"

    const-string v3, "status"

    .line 2
    :try_start_0
    new-instance v4, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadStatusByUrl()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, v3}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "pkg"

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 5
    invoke-virtual {p0, v2}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 6
    invoke-virtual {p0, v1}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v0, p0, 0x63

    xor-int/lit8 p0, p0, 0x63

    or-int/2addr p0, v0

    neg-int p0, p0

    neg-int p0, p0

    and-int v1, v0, p0

    or-int/2addr p0, v0

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    or-int/lit8 v0, p0, 0x35

    shl-int/lit8 v1, v0, 0x1

    and-int/lit8 p0, p0, 0x35

    xor-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    neg-int p0, p0

    or-int v0, v1, p0

    shl-int/lit8 v0, v0, 0x1

    xor-int/2addr p0, v1

    sub-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload()Z
    .locals 4

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x3a

    and-int/lit8 v2, v0, 0x3a

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    or-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    sget-boolean v1, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload:Z

    xor-int/lit8 v2, v0, 0x1b

    and-int/lit8 v3, v0, 0x1b

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v0, v0, 0x1b

    and-int/2addr v0, v3

    neg-int v0, v0

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    return v1
.end method

.method static synthetic unifiedDownload(Z)Z
    .locals 3

    .line 2
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x7d

    or-int/lit8 v0, v0, 0x7d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    sput-boolean p0, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener:Z

    xor-int/lit8 v1, v0, 0x9

    and-int/lit8 v2, v0, 0x9

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x9

    and-int/2addr v0, v2

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return p0
.end method
