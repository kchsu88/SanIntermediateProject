.class public Lccsancom/san/core/CommonProtectActivity;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:I

.field private static addDownloadListener:Z

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:Z

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:[C

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/CommonProtectActivity;->unifiedDownload:[B

    const/16 v0, 0x98

    sput v0, Lccsancom/san/core/CommonProtectActivity;->IncentiveDownloadUtils:I

    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x13t
        -0x53t
        -0x63t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    .line 8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsancom/san/core/CommonProtectActivity$removeDownloadListener;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedList()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lccsancom/san/core/CommonProtectActivity$removeDownloadListener;-><init>(Lccsancom/san/core/CommonProtectActivity;JLjava/lang/String;Lccsanandroid/content/Intent;)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static removeDownloadListener(IIS)Ljava/lang/String;
    .locals 8

    sget v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    sget-object v0, Lccsancom/san/core/CommonProtectActivity;->unifiedDownload:[B

    mul-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0x19

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x17

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/16 v3, 0x3d

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_0
    move p0, p1

    move-object v3, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_2

    :goto_1
    add-int/2addr p1, v2

    int-to-byte v5, p0

    aput-byte v5, v1, v3

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_1
    aget-byte v5, v0, p1

    add-int/lit8 v3, v3, 0x1

    move v6, p1

    move p1, p0

    move p0, v6

    move-object v7, v0

    move v0, p2

    move p2, v5

    move v5, v3

    move-object v3, v1

    move-object v1, v7

    :goto_2
    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v5

    move v6, p1

    move p1, p0

    move p0, v6

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 1

    const/16 v0, 0x100

    sput v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingList:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadStatusByUrl:Z

    sput-boolean v0, Lccsancom/san/core/CommonProtectActivity;->addDownloadListener:Z

    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x123s
        0x173s
        0x174s
        0x161s
        0x172s
        0x149s
        0x16es
        0x16cs
        0x165s
        0x164s
        0x150s
        0x16bs
        0x167s
        0x120s
        0x170s
    .end array-data
.end method

.method private removeDownloadListener(Ljava/lang/String;)V
    .locals 11

    .line 7
    sget v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    sget v2, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1
    :pswitch_0
    int-to-byte v2, v3

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    add-int/lit8 v5, v3, -0x1

    int-to-byte v5, v5

    :try_start_1
    invoke-static {v2, v3, v5}, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lccsancom/san/core/CommonProtectActivity;->unifiedDownload:[B

    const/16 v5, 0x8

    aget-byte v3, v3, v5

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    .line 7
    const/16 v2, 0x1e

    goto :goto_1

    :cond_2
    const/16 v2, 0x41

    :goto_1
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0xf

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1
    :cond_3
    const/high16 v2, 0x10000000

    .line 3
    :try_start_3
    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_2

    .line 1
    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4
    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u008d\u008c\u008f\u008e\u008d\u008c\u008b\u008a\u0089\u0088\u0088\u0084\u0083\u0082\u0087\u0086\u0083\u0085\u0084\u0083\u0082\u0081"

    const-string v8, ", exception = "

    const-string v9, "CommonProtectActivity"

    cmp-long v10, v3, v5

    add-int/lit8 v10, v10, 0x7e

    invoke-static {v0, v10, v0, v7}, Lccsancom/san/core/CommonProtectActivity;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 1163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    sget-object v1, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener:[C

    .line 1166
    sget v2, Lccsancom/san/core/CommonProtectActivity;->getDownloadingList:I

    .line 1168
    sget-boolean v3, Lccsancom/san/core/CommonProtectActivity;->getDownloadStatusByUrl:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1170
    nop

    .line 1171
    array-length p0, p3

    .line 1172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 1176
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    .line 1174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 1179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 1182
    :cond_3
    sget-boolean p3, Lccsancom/san/core/CommonProtectActivity;->addDownloadListener:Z

    if-eqz p3, :cond_5

    .line 1184
    nop

    .line 1185
    array-length p2, p0

    .line 1186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 1188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 1190
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-char v3, p0, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 1188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 1193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 1198
    :cond_5
    nop

    .line 1199
    array-length p0, p2

    .line 1200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 1204
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget v3, p2, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 1202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 1207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private unifiedDownload()V
    .locals 2

    .line 9
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;

    invoke-direct {v1, p0}, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;-><init>(Lccsancom/san/core/CommonProtectActivity;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 2

    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 4

    .line 10
    nop

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    const-string p1, "CommonProtectActivity"

    const-string v0, "-----onCreate"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lccsancom/san/core/CommonProtectActivity;->unifiedDownload()V

    .line 4
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    .line 5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    .line 10
    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5
    if-eqz p1, :cond_4

    goto :goto_2

    .line 10
    :pswitch_0
    const/16 v0, 0x11

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/16 v0, 0x44

    goto :goto_1

    :cond_1
    const/16 v0, 0x42

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :goto_2
    nop

    .line 6
    const-string v0, "portal"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cpi_protect"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    const/16 v0, 0x56

    goto :goto_3

    :cond_2
    const/16 v0, 0x51

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :pswitch_1
    sget v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    const-string v0, "pkg"

    packed-switch v1, :pswitch_data_3

    .line 7
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, v0}, Lccsancom/san/core/CommonProtectActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    .line 6
    :pswitch_2
    nop

    .line 7
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lccsancom/san/core/CommonProtectActivity;->removeDownloadListener(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, v0}, Lccsancom/san/core/CommonProtectActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    :goto_6
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 2
    const-string v0, "CommonProtectActivity"

    const-string v1, "-----onDestroy"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onPause()V

    .line 2
    const-string v0, "CommonProtectActivity"

    const-string v1, "-----onPause"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 9
    nop

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    sget v1, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "cpi_protect"

    const-string v3, "portal"

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 9
    :catchall_0
    move-exception v0

    throw v0

    .line 3
    :cond_1
    nop

    .line 4
    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/16 v0, 0x49

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 9
    return-void

    :cond_3
    :goto_2
    :pswitch_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/CommonProtectActivity$IncentiveDownloadUtils;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadingRecordByUrl()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lccsancom/san/core/CommonProtectActivity$IncentiveDownloadUtils;-><init>(Lccsancom/san/core/CommonProtectActivity;J)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/core/CommonProtectActivity;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
    .end packed-switch
.end method
