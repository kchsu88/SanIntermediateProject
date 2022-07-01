.class public Lccsancom/san/proactive/OutProActiveImproveActivity;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C


# instance fields
.field private getDownloadingList:Lccsansan/p/getDownloadedList;

.field private final removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener:J

    const v1, 0xf090

    sput-char v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedRecordByUrl:C

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;

    invoke-direct {v0, p0}, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;-><init>(Lccsancom/san/proactive/OutProActiveImproveActivity;)V

    iput-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 4

    .line 8
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    .line 2
    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3
    invoke-static {p0}, Lccsansan/bt/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)I

    move-result v1

    const/16 v2, 0x12

    invoke-static {v2}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initStyle exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutProActiveImproveActivity"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(I)Z
    .locals 9

    .line 7
    nop

    .line 0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x4f99

    int-to-char v0, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\u1b50\u27f1\u15b2\uea27\u4ac1\uefae\uc795\u82c1\u0f2a\ud337\uf136\ud4d3\ubda4\ud431\u62a8\u7b0d\u828e\ua978\ufca5\u561d\u06ba\u2965\u9397\u16a0\u30f8\u3147\uad17\ufcf7"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u1cb1\u5c89\u99f1\u774f"

    cmp-long v8, v1, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v5, v6, v0, v8, v7}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 7
    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4
    :cond_1
    nop

    .line 5
    const-string v0, "san_app_improve_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 7
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 5
    nop

    .line 6
    const-string v0, "san_app_name_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 7
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :pswitch_0
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 6
    :cond_4
    nop

    .line 7
    const-string v0, "san_app_improve_desc_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_5

    :goto_3
    :pswitch_1
    const/4 v1, 0x1

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/proactive/OutProActiveImproveActivity;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedRecordByUrl:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic addDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;)Lccsansan/p/getDownloadedList;
    .locals 2

    .line 2
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x3a

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener()V
    .locals 4

    .line 6
    const-string v0, "out_activity"

    sget v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->IncentiveDownloadUtils()V

    .line 2
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl()V

    .line 4
    iget-object v1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4
    :catch_0
    move-exception v1

    .line 6
    iget-object v2, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;Ljava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;)V

    sget p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;)V
    .locals 5

    .line 35
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 26
    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    const-string v1, "out_activity"

    packed-switch v0, :pswitch_data_0

    .line 22
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 26
    iget-object v1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {p1, v1, v0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_2

    .line 22
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 26
    iget-object v1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {p1, v1, v0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 30
    :cond_1
    invoke-static {}, Lccsansan/bw/getErrorCode;->getPackageNameByRecord()V

    .line 33
    :cond_2
    iget-object p1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    .line 34
    iget-object p1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    if-eqz v0, :cond_3

    .line 26
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    goto :goto_4

    .line 34
    :pswitch_1
    const-string v0, "open_error"

    goto :goto_5

    :cond_4
    :goto_4
    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v1, 0x0

    const-string v2, "\u2870\uaaf8\ua10f\ufca3\uc5b9\ue5f5\u39d4\u2278\u0287\uc325\u242f\uf558\u17a5\ubf78\u8edf\u43cc\ud18f\ufd3a"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\u6038\ud340\u4461\u6675"

    cmpl-float v0, v0, v1

    rsub-int v0, v0, 0x7544

    int-to-char v0, v0

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    invoke-static {v2, v3, v0, v1, v4}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    .line 34
    :goto_5
    invoke-static {p1, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadStatusByUrl()V
    .locals 15

    .line 18
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "san_app_improve_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 2
    const-string v1, "san_app_name_text"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit16 v2, v2, 0x4f99

    int-to-char v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v3}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const-string v5, "\u1b50\u27f1\u15b2\uea27\u4ac1\uefae\uc795\u82c1\u0f2a\ud337\uf136\ud4d3\ubda4\ud431\u62a8\u7b0d\u828e\ua978\ufca5\u561d\u06ba\u2965\u9397\u16a0\u30f8\u3147\uad17\ufcf7"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u1cb1\u5c89\u99f1\u774f"

    invoke-static {v5, v6, v2, v4, v7}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    .line 4
    const-string v4, "san_app_improve_desc_text"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/TextView;

    invoke-static {v3}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-char v5, v5

    const v7, 0x75e7121a

    invoke-static {v3, v3, v3}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v7

    const-string v7, "\uaf15\u5b66\u172a\u15f7\u47ce\uacdd\uf3ca\u7424\uec6a\u4e22\u0a61\u0bc5\uaa5d\u6d0c\ua0cb\u0473\u03aa\uda6e\u0cb0\u6ac4\uce1e"

    const-string v8, "\u1adf\ue712\uca74\ub3c5"

    invoke-static {v7, v6, v5, v3, v8}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/ImageView;

    .line 7
    invoke-direct {p0, v0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener(Lccsanandroid/widget/ImageView;)V

    .line 9
    iget-object v5, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v5}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v11, "\u0b16\u7daa\uaf00\ua7aa\ub522\u83ba\u9e0f\u40e7\uaf2f\u5d94\u5c67\ucaf5\ubfd1\ua0f7\uebb5\u75a0\u5332\u901c\uae33\u1234\u7556\u79f7\u9356\u2740\u81a0\u8cff\uffc1\u366a\u12e0\u3a12\ua8f9\ub41e\u56d7\u18a5\u612f\u7a12\u32cc\u5050"

    const-string v12, "\uad55\u1bab\u361d\uce33"

    const-string v13, "OPEN"

    cmp-long v14, v7, v9

    add-int/lit8 v14, v14, -0x1

    invoke-static {v11, v6, v5, v14, v12}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2, v13}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v5, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 14
    iget-object v2, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V
    .locals 8

    .line 37
    nop

    .line 36
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const/16 p1, 0x34

    goto :goto_0

    :cond_0
    const/16 p1, 0x38

    :goto_0
    const/4 v7, 0x0

    const-string v1, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    iget-object p1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    iget-object p1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    :goto_1
    move-object v3, p1

    goto :goto_3

    :goto_2
    move-object v3, v1

    :goto_3
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_4
    packed-switch v4, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    const-string v1, "foreground_start_activity_fail"

    :goto_5
    move-object v5, v1

    const-string v6, "OutProActiveImproveActivity"

    move-object v1, p0

    move v4, p2

    invoke-static/range {v1 .. v6}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    goto :goto_6

    :cond_3
    const/4 p1, 0x0

    :goto_6
    packed-switch p1, :pswitch_data_2

    return-void

    :pswitch_2
    :try_start_1
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 3

    .line 45
    nop

    .line 0
    if-nez p0, :cond_0

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 40
    const/16 v1, 0x43

    goto :goto_0

    :cond_1
    const/16 v1, 0x54

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 45
    sget v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 40
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    :try_start_1
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 45
    :catchall_0
    move-exception p0

    throw p0

    .line 40
    :goto_2
    if-eqz v0, :cond_3

    :goto_3
    :try_start_3
    const-string v0, "lock_screen"

    .line 42
    invoke-virtual {p0, v0, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 45
    nop

    .line 42
    :cond_3
    :pswitch_1
    const-string v0, "is_background"

    .line 45
    :try_start_4
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    sget p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    :catch_0
    move-exception p0

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()Z
    .locals 10

    .line 20
    const-string v0, "\u0000\u0000\u0000\u0000"

    const-string v1, "OutProActiveImproveActivity"

    .line 4
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v4

    const-string v5, "active_pkgName"

    invoke-virtual {v4, v5}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    add-int/2addr v6, v2

    int-to-char v6, v6

    const v7, -0xd449e75

    invoke-static {v3, v3}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v8

    add-int/2addr v8, v7

    const-string v7, "\u057a\ub84c\u27d3\u9325\ue182\u2f94\u2ad8\uf91e\u0ff2\uaaf0\uf324\uedde\uec0d\u3278\ufe35\u1aed\u9d06\u4f57\u6f96\ub31d\u1384\u1152\ucea4\u9011\u0f05\u9550\u4406\u52f9\u763d\u750e\u2f14\ubb1c\u9a6f"

    const-string v9, "\u8b3b\ubb61\u35f2\u07ff"

    invoke-static {v7, v0, v6, v8, v9}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v4, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener()V

    .line 12
    const-string v0, "Activity finish for mPkgName is null"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 16
    :cond_0
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload()Lccsansan/p/getDownloadedList;

    move-result-object v4

    iput-object v4, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    if-nez v4, :cond_2

    .line 20
    sget v4, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x5d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "\uab84\uc0b5\ue908\u69f1"

    const v6, 0x8c0b5ab

    const v7, 0xf1e9

    const-string v8, "\u4957\u814c\ued08\u7051\u0534\u638e\ua8d0\u764c\ucc2c\u9c6c\u3064\u832d\ub3a5\uaf22\ua02d\ua962\uc519\uf09d\u2143\uca2a\ue919\ue2fa\u5ba0\u97ef\ueb9e\u1aef\uecd4\uf58d\u1e82\u6b01\u1757\u813e\uaa59\u42c7\ub9a0\u985c\uc604\u8e79\u68f3\u6039\ucde4"

    packed-switch v4, :pswitch_data_0

    .line 19
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v7, v2

    int-to-char v2, v7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v6, v4

    invoke-static {v8, v0, v2, v6, v5}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 19
    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x63

    add-int/2addr v3, v7

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    ushr-int/lit8 v4, v4, 0x55

    add-int/2addr v4, v6

    invoke-static {v8, v0, v3, v4, v5}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    goto :goto_2

    :cond_3
    const/16 v0, 0x22

    :goto_2
    packed-switch v0, :pswitch_data_1

    return v2

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;I)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    invoke-direct {p0, p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload(I)Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x32

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener()V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanandroid/widget/ImageView;)V
    .locals 5

    .line 49
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {p0, v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {p0, v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    :pswitch_1
    goto :goto_3

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    const/16 v3, 0x54

    goto :goto_2

    :cond_1
    const/16 v3, 0x61

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_5

    .line 49
    :goto_3
    sget v3, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    const/16 v3, 0x3f

    :try_start_1
    div-int/2addr v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 46
    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_5

    .line 49
    :catchall_0
    move-exception p1

    throw p1

    .line 46
    :cond_3
    if-eqz p1, :cond_4

    .line 49
    :pswitch_2
    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener()V

    sget p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x50

    goto :goto_0

    :cond_1
    const/16 p0, 0x1e

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x21

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(I)Ljava/lang/String;
    .locals 8

    .line 21
    nop

    .line 0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "\u1b50\u27f1\u15b2\uea27\u4ac1\uefae\uc795\u82c1\u0f2a\ud337\uf136\ud4d3\ubda4\ud431\u62a8\u7b0d\u828e\ua978\ufca5\u561d\u06ba\u2965\u9397\u16a0\u30f8\u3147\uad17\ufcf7"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u1cb1\u5c89\u99f1\u774f"

    cmp-long v7, v0, v2

    rsub-int v0, v7, 0x4f9a

    int-to-char v0, v0

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v4, v5, v0, v1, v6}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3e

    goto :goto_0

    :cond_0
    const/16 p1, 0x4c

    :goto_0
    const-string v0, "button"

    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :pswitch_0
    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_1
    const-string v0, "non_button"

    goto :goto_3

    :goto_1
    const/16 p1, 0x29

    goto :goto_2

    :cond_2
    const/16 p1, 0x2e

    :goto_2
    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :pswitch_1
    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload()Lccsansan/p/getDownloadedList;
    .locals 7

    .line 9
    nop

    .line 8
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v4, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v4}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    :pswitch_1
    goto :goto_3

    .line 8
    :catchall_0
    move-exception v0

    throw v0

    .line 9
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 1
    :goto_1
    :try_start_2
    sget-object v4, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v4}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_9

    .line 3
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 9
    goto :goto_9

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_3

    .line 1
    const/16 v4, 0xa

    goto :goto_5

    :cond_3
    const/16 v4, 0x3b

    :goto_5
    packed-switch v4, :pswitch_data_2

    goto :goto_9

    .line 9
    :pswitch_2
    sget v4, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v4, v4, 0x27

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/san/xz/base/XzRecord;

    .line 7
    invoke-static {v4}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    array-length v6, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_4

    .line 1
    const/4 v5, 0x1

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_3

    goto :goto_8

    .line 9
    :catchall_1
    move-exception v0

    throw v0

    .line 6
    :cond_5
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/san/xz/base/XzRecord;

    .line 7
    invoke-static {v4}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1
    const/16 v5, 0x28

    goto :goto_7

    :cond_6
    const/16 v5, 0x43

    :goto_7
    packed-switch v5, :pswitch_data_4

    :goto_8
    goto :goto_4

    .line 9
    :pswitch_3
    invoke-virtual {v4}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    :cond_7
    :goto_9
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x28
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsancom/san/proactive/OutProActiveImproveActivity;I)Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->IncentiveDownloadUtils(I)Z

    move-result p0

    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x1c

    goto :goto_0

    :cond_1
    const/16 p1, 0x50

    :goto_0
    packed-switch p1, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 p1, 0x40

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 3

    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    .line 18
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3
    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_2

    :goto_1
    goto :goto_4

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :goto_4
    :try_start_0
    const-string p1, "notification"

    .line 5
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/NotificationManager;

    const v0, 0x186a1

    .line 6
    invoke-virtual {p1, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 12
    :cond_2
    :goto_5
    :pswitch_1
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadingList()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 16
    :cond_3
    const-string p1, "san_activity_promotion_az_out_improve"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener()V

    .line 3
    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    packed-switch v1, :pswitch_data_2

    goto :goto_6

    .line 18
    :pswitch_2
    return-void

    .line 3
    :goto_6
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
