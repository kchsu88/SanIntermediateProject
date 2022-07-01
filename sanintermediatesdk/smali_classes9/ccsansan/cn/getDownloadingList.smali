.class public Lccsansan/cn/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static getDownloadingList:I


# instance fields
.field private removeDownloadListener:Lccsanandroid/content/Context;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cn/getDownloadingList;->getDownloadingList:I

    const-wide v0, 0x344a3a92b2405d09L    # 8.356978112988933E-57

    sput-wide v0, Lccsansan/cn/getDownloadingList;->addDownloadListener:J

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cn/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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
    sget-wide v1, Lccsansan/cn/getDownloadingList;->addDownloadListener:J

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

    sget-wide v6, Lccsansan/cn/getDownloadingList;->addDownloadListener:J

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

.method static synthetic getDownloadingList(Lccsansan/cn/getDownloadingList;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cn/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cn/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x5e

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
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


# virtual methods
.method public getDownloadingList(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget v0, Lccsansan/cn/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadingList(Lccsansan/cn/addDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 15
    sget v1, Lccsansan/cn/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v2, v1, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 15
    :goto_1
    const/16 v2, 0xe

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    .line 3
    :cond_1
    iget-object v2, v8, Lccsansan/cn/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    if-eqz v2, :cond_2

    .line 15
    const/16 v2, 0x3a

    goto :goto_3

    :cond_2
    const/16 v2, 0x52

    :goto_3
    packed-switch v2, :pswitch_data_1

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3
    :cond_3
    iget-object v1, v8, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    sget v1, Lccsansan/cn/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cn/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :cond_4
    :pswitch_1
    sget-object v1, Lccsansan/cn/removeDownloadListener;->removeDownloadListener:Lccsansan/cn/removeDownloadListener;

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lccsansan/cn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/cn/removeDownloadListener;)V

    return-void

    .line 8
    :cond_5
    iget-object v1, v8, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    iget-object v1, v8, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lccsansan/cn/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCache record url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v9

    const-string v2, "\u1799\u17cf\u833e\ude56\u72b1\u5a7a\u63f9\u0f14\uc8d0\ue691\u4d15\uc644\uffbd\u9b68\u6aeb\ub212\u4bb8\u6742\udec0\u3ef3\uc76e\uf3aa\u4200"

    invoke-static {v2, v1}, Lccsansan/cn/getDownloadingList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void

    .line 13
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 14
    iget-object v10, v8, Lccsansan/cn/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    new-instance v15, Lccsansan/cn/getDownloadingList$addDownloadListener;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lccsansan/cn/getDownloadingList$addDownloadListener;-><init>(Lccsansan/cn/getDownloadingList;JLccsansan/cn/addDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    sub-int/2addr v9, v0

    const-string v0, "\u7036\u7040\u2573\u781b\u34e3\ucbf7\u044d\ua952\u8e82\ua0db\udc98\u57d0\u9810\u3d26\u2cb7\u239a\u2c3e"

    invoke-static {v0, v9}, Lccsansan/cn/getDownloadingList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v11, p4

    invoke-static/range {v10 .. v15}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;JILjava/lang/String;Lccsansan/cv/resume;)V

    return-void

    .line 15
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method
