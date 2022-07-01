.class public Lccsansan/cf/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static removeDownloadListener:Z

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    const-wide v0, 0x67172dad82a1f8dL

    sput-wide v0, Lccsansan/cf/unifiedDownload;->addDownloadListener:J

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lccsansan/cf/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cf/unifiedDownload$getDownloadingList;

    invoke-direct {v1, p0, p1}, Lccsansan/cf/unifiedDownload$getDownloadingList;-><init>(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/16 p0, 0x24

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;)V
    .locals 4

    .line 2
    sget v0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsansan/cf/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    const/16 p1, 0x42

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_4

    .line 1
    :pswitch_0
    if-eqz p2, :cond_2

    .line 2
    const/16 p1, 0x30

    goto :goto_2

    :cond_2
    const/16 p1, 0x31

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget p1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    :goto_3
    const/4 v2, -0x1

    const-string v3, "\u733c\u735d\ucf95\u20be\ud06d\u1fd0\u199a\u4752\u0d6c\u523b\u9d87\u9be7\u8f38\ud40f\u1b5d\u1c39"

    packed-switch p1, :pswitch_data_2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    rem-int/lit8 p1, p1, 0x54

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Lccsansan/cf/unifiedDownload;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1, v0, v2}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1

    .line 1
    :pswitch_2
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x1

    invoke-static {v3, p1}, Lccsansan/cf/unifiedDownload;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p0, p1, v1, v2}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic addDownloadListener()Z
    .locals 2

    .line 3
    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/cf/unifiedDownload;->removeDownloadListener:Z

    goto :goto_1

    :pswitch_0
    sget-boolean v0, Lccsansan/cf/unifiedDownload;->removeDownloadListener:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 1
    sget v0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_0
    if-eqz p0, :cond_5

    .line 1
    :goto_0
    sget v0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    goto :goto_1

    :cond_1
    const/16 v0, 0x4d

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_6

    :goto_3
    const/16 v0, 0x1b

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    const/16 p0, 0x3f

    goto :goto_4

    :cond_3
    const/16 p0, 0x60

    :goto_4
    packed-switch p0, :pswitch_data_2

    :pswitch_1
    sget p0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    packed-switch p0, :pswitch_data_3

    const/4 v1, 0x1

    goto :goto_6

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    :goto_6
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Z)Z
    .locals 2

    .line 4
    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sput-boolean p0, Lccsansan/cf/unifiedDownload;->removeDownloadListener:Z

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return p0
.end method

.method private static getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z
    .locals 5

    .line 4
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    .line 4
    sget v3, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    goto :goto_5

    :pswitch_1
    sget v3, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v3, v3, 0x71

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    invoke-static {p0}, Lccsancom/san/action/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    if-eqz p0, :cond_2

    :goto_2
    goto :goto_6

    :goto_3
    const/4 v3, 0x7

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_4

    :cond_4
    const/16 p0, 0x17

    :goto_4
    packed-switch p0, :pswitch_data_2

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    :goto_5
    sget p0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/cf/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    sget p0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ILccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    .locals 10

    .line 67
    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    instance-of v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_5

    :goto_1
    goto :goto_2

    :pswitch_0
    instance-of v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;

    const/16 v4, 0x1f

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6
    const/16 v0, 0x1f

    goto :goto_3

    :cond_1
    const/16 v0, 0x24

    :goto_3
    packed-switch v0, :pswitch_data_1

    invoke-static {p1}, Lccsansan/cf/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 67
    :pswitch_1
    invoke-static {p1}, Lccsansan/cf/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/16 v1, 0x9

    :try_start_1
    div-int/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_4

    :catchall_1
    move-exception p0

    throw p0

    .line 7
    :goto_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8
    new-instance v1, Lccsansan/cf/addDownloadListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, v2}, Lccsansan/cf/addDownloadListener;-><init>(Z)V

    .line 9
    new-instance v2, Lccsansan/cf/unifiedDownload$unifiedDownload;

    move-object v3, v2

    move-object v4, p1

    move-object v5, v0

    move-object v6, p0

    move-object v7, p3

    move-object v8, p4

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lccsansan/cf/unifiedDownload$unifiedDownload;-><init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/Boolean;Lccsanandroid/content/Context;Lccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Lccsansan/cf/addDownloadListener;)V

    invoke-virtual {v1, v2}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/common/offline/unifiedDownload;)V

    .line 27
    new-instance v2, Lccsansan/cf/unifiedDownload$removeDownloadListener;

    invoke-direct {v2, p4, v1, p1}, Lccsansan/cf/unifiedDownload$removeDownloadListener;-><init>(Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Lccsansan/cf/addDownloadListener;Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v1, v2}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/common/offline/removeDownloadListener;)V

    .line 39
    new-instance v2, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;

    move-object v3, v2

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/Boolean;Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Lccsansan/cf/addDownloadListener;)V

    invoke-virtual {v1, v2}, Lccsansan/cf/addDownloadListener;->removeDownloadListener(Lccsansan/cf/addDownloadListener$unifiedDownload;)V

    .line 55
    new-instance p3, Lccsansan/cf/unifiedDownload$addDownloadListener;

    invoke-direct {p3, p0}, Lccsansan/cf/unifiedDownload$addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v1, p3}, Lccsansan/cf/addDownloadListener;->removeDownloadListener(Lccsansan/cf/addDownloadListener$addDownloadListener;)V

    .line 61
    check-cast p0, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string p3, "dialog"

    invoke-virtual {p0, v1, p3}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(Lccsanandroidx/fragment/app/Fragment;Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 62
    invoke-virtual {v1, p2}, Lccsansan/cf/addDownloadListener;->unifiedDownload(I)V

    if-eqz p4, :cond_4

    .line 64
    invoke-interface {p4}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->IncentiveDownloadUtils()V

    .line 6
    sget p0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 67
    :cond_3
    nop

    :cond_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3, p1}, Lccsansan/bn/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)V

    sget p0, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/cf/unifiedDownload;->addDownloadListener:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/cf/unifiedDownload;->addDownloadListener:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    .line 5
    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/cf/unifiedDownload;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    sget v0, Lccsansan/cf/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method
