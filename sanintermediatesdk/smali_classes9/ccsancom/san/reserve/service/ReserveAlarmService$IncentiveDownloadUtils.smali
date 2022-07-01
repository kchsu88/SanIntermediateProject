.class Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/reserve/service/ReserveAlarmService;->checkReserveTime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/reserve/service/ReserveAlarmService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    iput-object p2, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {v1}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$000(Lccsancom/san/reserve/service/ReserveAlarmService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check and update reserve json="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 16
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v3, v0, 0x75

    and-int/lit8 v0, v0, 0x75

    shl-int/2addr v0, v2

    or-int v5, v3, v0

    shl-int/2addr v5, v2

    xor-int/2addr v0, v3

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    goto/16 :goto_8

    .line 8
    :pswitch_0
    iget-object v3, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {v3}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$300(Lccsancom/san/reserve/service/ReserveAlarmService;)V

    .line 9
    invoke-static {v0}, Lccsansan/bd/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;)Lccsansan/bd/addDownloadListener;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {v3, v0}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$400(Lccsancom/san/reserve/service/ReserveAlarmService;Lccsansan/bd/addDownloadListener;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v5

    invoke-static {v5, v6}, Lccsansan/bw/AdFormat;->removeDownloadListener(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 16
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget v3, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v5, v3, 0x6d

    xor-int/lit8 v6, v5, -0x1

    or-int/lit8 v3, v3, 0x6d

    and-int/2addr v3, v6

    shl-int/2addr v5, v2

    or-int v6, v3, v5

    shl-int/2addr v6, v2

    xor-int/2addr v3, v5

    sub-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    const/16 v3, 0x5b

    goto :goto_2

    :cond_2
    const/16 v3, 0x14

    :goto_2
    packed-switch v3, :pswitch_data_2

    .line 13
    goto :goto_3

    .line 16
    :pswitch_2
    :try_start_0
    array-length v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    const-string v3, "wait"

    :goto_4
    iget-object v4, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {v4, v3, v0}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$500(Lccsancom/san/reserve/service/ReserveAlarmService;Ljava/lang/String;Lccsansan/bd/addDownloadListener;)V

    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 v3, v0, 0x1a

    or-int/lit8 v0, v0, 0x1a

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    :cond_4
    :pswitch_3
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_4

    goto :goto_7

    :pswitch_4
    return-void

    :goto_7
    const/4 v0, 0x7

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 4
    :cond_6
    :goto_8
    iget-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {v0}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$100(Lccsancom/san/reserve/service/ReserveAlarmService;)V

    .line 5
    iget-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {v0}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$200(Lccsancom/san/reserve/service/ReserveAlarmService;)V

    .line 16
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    or-int/lit8 v3, v0, 0xd

    shl-int/lit8 v5, v3, 0x1

    and-int/lit8 v0, v0, 0xd

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v5, v0

    or-int/2addr v0, v5

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    packed-switch v1, :pswitch_data_5

    return-void

    :pswitch_5
    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

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
    .packed-switch 0x5b
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
