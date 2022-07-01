.class Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:J


# instance fields
.field final synthetic IncentiveDownloadUtils:J

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/ds/IncentiveDownloadUtils;

.field unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    const/4 v1, 0x1

    sput v1, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:J

    const/16 v1, 0x68ad

    sput-char v1, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:C

    sput v0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingRecordByUrl:I

    return-void
.end method

.method constructor <init>(Lccsansan/ds/IncentiveDownloadUtils;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/ds/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-wide p3, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:J

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:I

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingRecordByUrl:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:C

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


# virtual methods
.method public callBackOnUIThread()V
    .locals 10

    .line 8
    nop

    .line 1
    iget v0, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {v1, v1}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    const-string v4, "\ua68e\ua8f6\u946c\u88b4\u9db4\ue16b\u100b\uef12\u390c\uf73a\u170d\u0491\ubd83\u9b1d\u0271\u65a5\u7ce8\ua19f\u09d3\u38c4\uf4a1\uab8e\u3688\u064d"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u7fb5\u934e\u3f6a\u77fc"

    invoke-static {v4, v5, v2, v3, v6}, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsanandroid/widget/Toast;->makeText(Lccsanandroid/content/Context;Ljava/lang/CharSequence;I)Lccsanandroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    .line 8
    sget v0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/ds/IncentiveDownloadUtils;

    invoke-static {v2}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ds/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/APDWeb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/ds/IncentiveDownloadUtils;

    iget-object v2, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v2}, Lccsansan/ds/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/ds/IncentiveDownloadUtils;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:J

    iget-object v9, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lccsansan/k/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    sget v0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v3, 0x0

    :cond_3
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-void

    :goto_0
    const/16 v0, 0x35

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public execute()V
    .locals 7

    .line 20
    nop

    .line 3
    sget v0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:I

    if-ne v0, v2, :cond_b

    .line 20
    :pswitch_0
    sget v0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    iget-object v3, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_8

    .line 20
    :catchall_0
    move-exception v0

    throw v0

    .line 3
    :cond_3
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    iget-object v3, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5
    :pswitch_1
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 7
    iget-object v3, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/ds/IncentiveDownloadUtils;

    invoke-static {v3}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ds/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "portal"

    invoke-virtual {v0, v4, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v0, v4, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_2

    .line 12
    iget-object v4, v3, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_3

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v5, v3, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4

    goto :goto_4

    .line 15
    :pswitch_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_6

    .line 1
    const/16 v5, 0x2d

    goto :goto_5

    :cond_6
    const/16 v5, 0x3b

    :goto_5
    packed-switch v5, :pswitch_data_4

    .line 17
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1
    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_5

    sget v5, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v5, v5, 0x2b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 17
    :cond_8
    nop

    .line 18
    const-string v5, "si_az_enable"

    invoke-virtual {v4, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :pswitch_3
    iget-object v5, p0, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/ds/IncentiveDownloadUtils;

    invoke-static {v5}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ds/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_a

    iget-boolean v3, v3, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    if-eqz v3, :cond_a

    .line 1
    sget v3, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    goto :goto_7

    .line 20
    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_7
    invoke-static {v0, v5, v1, v4}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    :cond_b
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3b
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
