.class Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/unifiedDownload$unifiedDownload;->getDownloadingList(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->unifiedDownload:I

    const-wide v0, 0x269ec64aacfa8ceaL

    sput-wide v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->removeDownloadListener:J

    return-void
.end method

.method constructor <init>(Lccsansan/ay/unifiedDownload$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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
    sget-wide v1, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->removeDownloadListener:J

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

    sget-wide v6, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->removeDownloadListener:J

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


# virtual methods
.method public callBackOnUIThread()V
    .locals 9

    .line 9
    sget v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    :try_start_0
    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    if-nez v0, :cond_1

    const/16 v0, 0x41

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 7
    :cond_2
    :pswitch_0
    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const-string v3, "\u2a39\u2a7d\u90b4\u1c31\u3703\u2ea0\u6375\u19fd\uc5a5\u5049\u7a1e\u1fa7\u4d00\u64e0\ub640"

    invoke-static {v3, v0}, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0, v2}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    goto/16 :goto_7

    :goto_2
    sget v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 2
    :cond_3
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;

    iget-object v0, v0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1
    const/16 v3, 0x2e

    goto :goto_3

    :cond_4
    const/16 v3, 0x1c

    :goto_3
    packed-switch v3, :pswitch_data_1

    move-object v6, v0

    goto :goto_4

    .line 9
    :pswitch_1
    sget v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 4
    :cond_5
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;

    iget-object v0, v0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    move-object v6, v0

    .line 6
    :goto_4
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;

    iget-object v0, v0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1
    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    packed-switch v2, :pswitch_data_2

    .line 6
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;

    iget-object v0, v0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    .line 1
    :pswitch_2
    sget v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 6
    :cond_7
    move-object v5, v1

    .line 7
    :goto_6
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$unifiedDownload;

    iget-object v3, v0, Lccsansan/ay/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v4, v0, Lccsansan/ay/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    const-string v0, "rid"

    invoke-virtual {v4, v0}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/ay/getDownloadingList$removeDownloadListener;)V

    .line 9
    :goto_7
    sget v0, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ay/unifiedDownload$unifiedDownload$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
