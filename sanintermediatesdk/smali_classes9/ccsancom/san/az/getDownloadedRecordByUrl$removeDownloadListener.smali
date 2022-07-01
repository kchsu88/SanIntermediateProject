.class final Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:J

.field private static deleteDownItem:I

.field private static getDownloadedList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

.field final synthetic getDownloadingList:Z

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadedList:I

    const-wide v0, 0x186f995dc1f9270fL    # 5.540733923337389E-191

    sput-wide v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->addDownloadListener:J

    return-void
.end method

.method constructor <init>(JLccsansan/p/getDownloadedList;ZLjava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iput-boolean p4, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadingList:Z

    iput-object p5, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->addDownloadListener:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 14
    nop

    .line 1
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 11
    nop

    .line 14
    invoke-static {v2}, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Z)Z

    goto/16 :goto_6

    .line 2
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload()Z

    move-result v3

    const-string v4, "open_success"

    invoke-virtual {v0, v4, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iget-boolean v3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadingList:Z

    const-string v4, "need_permission"

    invoke-virtual {v0, v4, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v3

    const-string v4, "is_background"

    invoke-virtual {v0, v4, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iget-object v3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v3}, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;

    if-eqz v0, :cond_5

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--resetLifecycleCallbacks:1 status = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CPIApkOperateHelper"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const v3, 0xdbcb

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    const-string v4, "\u277c\ufcbd\u90ea\ub431\u484a\u6d96\u01be\u25f6\uf936\u9d40\ub28d"

    invoke-static {v4, v3}, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const/16 v0, 0xb

    goto :goto_1

    :cond_1
    const/16 v0, 0x52

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 14
    :pswitch_1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9
    const/16 v0, 0x59

    goto :goto_2

    :cond_2
    const/16 v0, 0x49

    :goto_2
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x25

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 14
    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->deleteDownItem:I

    add-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 11
    :cond_3
    :goto_4
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;

    iget-object v3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;->unifiedDownload(ZLjava/lang/String;)V

    .line 14
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 9
    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 14
    goto :goto_7

    :goto_6
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    :goto_7
    :pswitch_3
    nop

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x59
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public execute()V
    .locals 2

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x54

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
