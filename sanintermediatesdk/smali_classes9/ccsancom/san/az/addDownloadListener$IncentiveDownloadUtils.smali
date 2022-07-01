.class final Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field addDownloadListener:Lccsansan/m/getDownloadedList;

.field final synthetic getDownloadedRecordByUrl:Z

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/m/removeDownloadListener;

.field final synthetic unifiedDownload:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-boolean p3, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    iput-object p4, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/m/removeDownloadListener;

    iput-boolean p5, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/m/getDownloadedList;

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 7
    sget v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    xor-int/lit8 v1, v0, 0x24

    and-int/lit8 v0, v0, 0x24

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x22

    if-eqz v1, :cond_0

    .line 1
    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    iget-object v2, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/m/removeDownloadListener;

    invoke-static {v1, v2}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(ZLccsansan/m/removeDownloadListener;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-boolean v1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    iget-object v2, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/m/removeDownloadListener;

    invoke-static {v1, v2}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(ZLccsansan/m/removeDownloadListener;)Z

    move-result v1

    const/16 v2, 0x11

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v1, 0x1d

    goto :goto_1

    :cond_1
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 7
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/16 v1, 0x4d

    goto :goto_3

    :cond_2
    const/4 v1, 0x5

    :goto_3
    packed-switch v1, :pswitch_data_2

    :goto_4
    goto :goto_6

    .line 3
    :pswitch_1
    nop

    .line 5
    const-string v1, "AzHelperEx"

    const-string v2, "GP2P ignore for disable"

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    sget-object v2, Lccsansan/bh/IncentiveDownloadUtils;->P2P_DISABLE:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-virtual {v2}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iget-boolean v4, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    invoke-static {v1, v3, v4, v2}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedList;ZLccsansan/bh/IncentiveDownloadUtils;)V

    .line 1
    sget v1, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v1, 0x54

    goto :goto_5

    :cond_3
    const/16 v1, 0x8

    :goto_5
    packed-switch v1, :pswitch_data_3

    goto :goto_7

    .line 2
    :goto_6
    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iget-object v2, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/m/removeDownloadListener;

    const-string v3, "si_az_key"

    invoke-virtual {v2, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    iget-object v2, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iget-object v3, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    invoke-static {v1, v2, v3, v4}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(ZLccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    .line 1
    sget v1, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x60

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 7
    :cond_4
    :pswitch_2
    nop

    :goto_7
    sget v1, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    and-int/lit8 v2, v1, 0x47

    or-int/lit8 v1, v1, 0x47

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 1
    const/16 v0, 0x62

    goto :goto_8

    :cond_5
    nop

    :goto_8
    packed-switch v0, :pswitch_data_4

    .line 7
    return-void

    :pswitch_3
    const/4 v0, 0x6

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x62
        :pswitch_3
    .end packed-switch
.end method

.method public execute()V
    .locals 12

    .line 7
    sget v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v5, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    invoke-virtual {v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/m/getDownloadedList;

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v5, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    invoke-virtual {v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/m/getDownloadedList;

    if-eqz v0, :cond_1

    .line 4
    const/16 v2, 0x41

    goto :goto_1

    :cond_1
    const/16 v2, 0x56

    :goto_1
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    .line 1
    :goto_2
    :try_start_0
    array-length v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    .line 4
    const/16 v2, 0x37

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_2

    goto :goto_8

    .line 3
    :goto_4
    iget-object v0, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    const/16 v0, 0x25

    goto :goto_5

    :cond_3
    const/16 v0, 0x51

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 1
    sget v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v2, v0, 0x61

    and-int/lit8 v0, v0, 0x61

    or-int/2addr v0, v2

    shl-int/2addr v0, v4

    neg-int v2, v2

    and-int v5, v0, v2

    or-int/2addr v0, v2

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 4
    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    const-string v2, "adId"

    packed-switch v0, :pswitch_data_4

    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iget-object v5, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/m/getDownloadedList;

    iget-object v5, v5, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iget-object v5, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/m/getDownloadedList;

    iget-object v5, v5, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 1
    :catchall_0
    move-exception v0

    throw v0

    .line 7
    :goto_7
    nop

    :goto_8
    :pswitch_3
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v6

    iget-object v7, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedList;

    const-string v0, "url"

    invoke-virtual {v7, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    sget-object v0, Lccsansan/p/deleteDownList;->START_AZ:Lccsansan/p/deleteDownList;

    invoke-virtual {v0}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v11

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Ljava/lang/String;II)V

    sget v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    and-int/lit8 v2, v0, 0x17

    xor-int/lit8 v0, v0, 0x17

    or-int/2addr v0, v2

    or-int v5, v2, v0

    shl-int/2addr v5, v4

    xor-int/2addr v0, v2

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 4
    goto :goto_9

    :cond_5
    const/4 v1, 0x1

    :goto_9
    packed-switch v1, :pswitch_data_5

    .line 7
    return-void

    :pswitch_4
    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :catchall_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x51
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
