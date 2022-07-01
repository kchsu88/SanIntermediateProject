.class final Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static deleteDownItem:J

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedCount:I

.field public static final getDownloadedList:I

.field private static getDownloadedRecordByUrl:[C

.field public static final getDownloadingRecordByUrl:[B


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/p/getDownloadedList;

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->unifiedDownload()V

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingRecordByUrl:[B

    const/16 v0, 0x28

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedList:I

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x7dt
        0x30t
        -0x72t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0xft
        0x1at
        -0x15t
        -0xet
        -0x6t
        0xet
        -0x10t
        -0x3t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        -0x9t
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    iput-boolean p2, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Z

    iput-object p3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;

    iput-object p5, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(SSS)Ljava/lang/String;
    .locals 5

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingRecordByUrl:[B

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x21

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x61

    new-array v2, p1, [B

    const/4 v3, -0x1

    add-int/2addr p1, v3

    if-nez v1, :cond_0

    const/16 v4, 0x2d

    goto :goto_0

    :cond_0
    const/16 v4, 0x59

    :goto_0
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_0
    move v0, p1

    move p1, p0

    goto :goto_3

    :goto_1
    move p2, p1

    move v0, p2

    move p1, p0

    :goto_2
    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x2

    add-int/lit8 p1, p1, 0x1

    sget p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    int-to-byte p0, p2

    aput-byte p0, v2, v3

    if-ne v3, v0, :cond_1

    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte p0, v1, p1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p0, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p0, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedRecordByUrl:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p2

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->deleteDownItem:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static unifiedDownload()V
    .locals 2

    const/16 v0, 0x6a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedRecordByUrl:[C

    const-wide v0, -0x14347ed4b3c5ecbaL    # -1.8084719989977386E211

    sput-wide v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->deleteDownItem:J

    return-void

    nop

    :array_0
    .array-data 2
        0x72s
        0x1323s
        0x26f8s
        0x39a0s
        0x4d61s
        0x6001s
        0x73cds
        -0x797cs
        -0x65bds
        -0x52fes
        -0x3f23s
        -0x2b92s
        -0x18dcs
        0x73s
        0x133fs
        0x26ffs
        0x398ds
        0x4d71s
        0x6030s
        0x73d7s
        -0x7962s
        -0x65afs
        -0x52e6s
        -0x3f30s
        0x1919s
        0xa55s
        0x3f95s
        0x2098s
        0x541bs
        0x795as
        0x6abds
        -0x600cs
        -0x7cc5s
        -0x4b90s
        -0x2646s
        -0x32b8s
        -0x1bds
        -0x1c6fs
        0x14cas
        0x381fs
        0x2d2as
        0x5ebfs
        0x43f2s
        0x7739s
        -0x67a0s
        -0x7260s
        -0x4eacs
        -0x5b7es
        -0x4838s
        -0x7dbds
        -0x62f7s
        -0x163es
        -0x3b61s
        -0x28a7s
        0x2230s
        0x3effs
        0x9aas
        0x6466s
        0x70e9s
        0x4388s
        0x5e41s
        -0x56e8s
        -0x7a28s
        -0x6f55s
        -0x1cces
        -0x2742s
        -0x340es
        -0x1ces
        -0x1ec0s
        -0x6a59s
        -0x470as
        -0x54e3s
        0x5e55s
        0x4284s
        0x75e4s
        0x1818s
        0xca1s
        0x3ff6s
        0x2237s
        -0x2a88s
        -0x645s
        -0x133fs
        0x73s
        0x133fs
        0x26ffs
        0x39f2s
        0x4d71s
        0x6030s
        0x73d7s
        -0x7962s
        -0x65afs
        -0x52e6s
        -0x3f30s
        -0x2bdes
        -0x18d4s
        -0x515s
        0xdb8s
        0x217bs
        0x3419s
        0x47e9s
        0x5a9cs
        0x6e57s
        -0x7eeas
        -0x6b01s
        -0x578cs
        -0x44c6s
    .end array-data
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 3

    .line 10
    nop

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--onActivityCreated:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CPIApkOperateHelper"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_4

    :pswitch_0
    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 3
    :cond_1
    nop

    .line 4
    invoke-static {v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Z)Z

    .line 5
    iget-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    iget-boolean v1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Z

    const-string v2, "need_permission"

    invoke-virtual {p1, v2, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    const-string v2, "is_background"

    invoke-virtual {p1, v2, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    const-string v1, "open_success"

    invoke-virtual {p1, v1, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 8
    iget-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    iget-object v1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p1, v1}, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;

    if-eqz p1, :cond_2

    .line 10
    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    :goto_2
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget p2, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    const/16 p2, 0x34

    goto :goto_3

    :cond_3
    const/16 p2, 0x32

    :goto_3
    packed-switch p2, :pswitch_data_2

    :pswitch_2
    iget-object p2, p0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;->unifiedDownload(ZLjava/lang/String;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x61

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x11

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 17

    move-object/from16 v1, p0

    .line 40
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onActivityResumed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lccsanandroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CPIApkOperateHelper"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-boolean v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Z

    const-wide/16 v3, 0x0

    const-string v5, "--onActivityResumed:unregister"

    const/16 v6, 0x4f

    const-string v7, "application_permission"

    const/16 v8, 0x1a

    const/16 v10, 0x8

    const-string v11, ""

    const/4 v12, 0x1

    if-eqz v0, :cond_5

    .line 8
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    sget v8, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 8
    :cond_1
    :try_start_1
    sget-object v6, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingRecordByUrl:[B

    const/16 v8, 0x32

    aget-byte v14, v6, v8

    int-to-byte v14, v14

    add-int/lit8 v15, v14, 0x5

    int-to-byte v15, v15

    aget-byte v9, v6, v8

    int-to-byte v9, v9

    invoke-static {v14, v15, v9}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils(SSS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v14, 0x4c

    aget-byte v14, v6, v14

    add-int/2addr v14, v12

    int-to-byte v14, v14

    const/4 v15, 0x5

    aget-byte v12, v6, v15

    int-to-byte v12, v12

    const/16 v16, 0x9

    aget-byte v13, v6, v16

    int-to-byte v13, v13

    invoke-static {v14, v12, v13}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils(SSS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v9, 0x36

    :try_start_2
    aget-byte v9, v6, v9

    int-to-byte v9, v9

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    int-to-byte v12, v8

    invoke-static {v9, v8, v12}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils(SSS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget v9, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedList:I

    sub-int/2addr v9, v15

    int-to-byte v9, v9

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    const/4 v12, 0x7

    aget-byte v6, v6, v12

    int-to-byte v6, v6

    invoke-static {v9, v10, v6}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 40
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 10
    :cond_2
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    iget-object v5, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 11
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 12
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    cmp-long v2, v5, v3

    add-int/lit8 v2, v2, 0xc

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v11, v3, v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    const/4 v3, 0x1

    add-int/2addr v5, v3

    int-to-char v3, v5

    invoke-static {v4, v4}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    invoke-static {v2, v3, v5}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 40
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 15
    :try_start_4
    iget-object v2, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {v2}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 16
    iget-object v2, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v3, "error"

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    const-string v2, "exception"

    invoke-static {v0, v2}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    .line 20
    :goto_0
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    iget-object v2, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    const/16 v5, 0x30

    invoke-static {v11, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    :try_start_6
    iget-object v4, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    goto/16 :goto_6

    .line 8
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_1
    throw v2

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 20
    :cond_4
    nop

    .line 22
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    invoke-static {v2, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 30
    :cond_5
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v11, v11, v9}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v11

    add-int/lit8 v11, v11, 0xb

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v9

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    add-int/lit8 v9, v9, -0x1

    int-to-char v9, v9

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v13

    int-to-byte v13, v13

    rsub-int/lit8 v13, v13, 0xc

    invoke-static {v11, v9, v13}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 40
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v9, v0, 0x80

    sput v9, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    const/16 v9, 0x35

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x1d

    rem-int/2addr v9, v11

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v11

    const/16 v13, 0x30

    shr-int/2addr v11, v13

    int-to-char v11, v11

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v13

    mul-int/lit8 v13, v13, 0x7b

    invoke-static {v9, v11, v13}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 30
    :cond_7
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    int-to-char v11, v11

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    invoke-static {v9, v11, v13}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_3
    :pswitch_0
    nop

    .line 31
    const-string v0, "a_s"

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v11

    cmpl-float v11, v11, v12

    add-int/lit8 v11, v11, 0x17

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v12

    shr-int/2addr v12, v10

    rsub-int v12, v12, 0x196a

    int-to-char v12, v12

    const/4 v13, 0x0

    invoke-static {v13}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x18

    invoke-static {v11, v12, v14}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v11}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v13}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x12

    const v12, 0xa4ae

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    sub-int/2addr v12, v13

    int-to-char v12, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v13

    shr-int/2addr v13, v10

    rsub-int/lit8 v13, v13, 0x2f

    invoke-static {v11, v12, v13}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->unifiedDownload()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    .line 40
    const/16 v6, 0x1a

    goto :goto_4

    :cond_8
    nop

    :goto_4
    packed-switch v6, :pswitch_data_1

    :cond_9
    goto :goto_5

    .line 33
    :pswitch_1
    if-eqz v0, :cond_a

    .line 34
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v8

    cmp-long v6, v8, v3

    rsub-int/lit8 v3, v6, 0x12

    const v4, 0xd8cd

    const/4 v6, 0x0

    invoke-static {v6}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-char v4, v4

    invoke-static {v6, v6}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x41

    invoke-static {v3, v4, v6}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/2addr v3, v10

    rsub-int/lit8 v3, v3, 0x18

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x52

    invoke-static {v3, v4, v6}, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v3}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_a
    :goto_5
    iget-object v0, v1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    invoke-static {v2, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
