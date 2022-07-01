.class public Lccsancom/san/reserve/service/ReserveAlarmService;
.super Lccsanandroid/app/Service;
.source ""


# static fields
.field private static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "default_alarm_notify_id"

.field private static final DEFAULT_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "default_alarm_notify_name"

.field private static final DEFAULT_NOTIFICATION_ID:I = 0x31477a8

.field private static ONE_MIN:I = 0xea60

.field private static final PENDING_REQUEST:I

.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private lastTime:J

.field private mChangedListener:Lccsansan/r/addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v2, v1, -0x1a

    xor-int/lit8 v3, v1, -0x1

    and-int/lit8 v3, v3, 0x19

    or-int/2addr v2, v3

    and-int/lit8 v3, v1, 0x19

    shl-int/2addr v3, v1

    xor-int v4, v2, v3

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    .line 2
    const-string v0, "ReserveAlarmService"

    iput-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->TAG:Ljava/lang/String;

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->lastTime:J

    .line 176
    new-instance v0, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;-><init>(Lccsancom/san/reserve/service/ReserveAlarmService;)V

    iput-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->mChangedListener:Lccsansan/r/addDownloadListener;

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/reserve/service/ReserveAlarmService;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/reserve/service/ReserveAlarmService;

    .line 1
    .end local p0    # "x0":Lccsancom/san/reserve/service/ReserveAlarmService;
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x8

    and-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->TAG:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x75

    xor-int/lit8 v0, v0, 0x75

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lccsancom/san/reserve/service/ReserveAlarmService;)V
    .locals 3
    .param p0, "x0"    # Lccsancom/san/reserve/service/ReserveAlarmService;

    .line 1
    .end local p0    # "x0":Lccsancom/san/reserve/service/ReserveAlarmService;
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x59

    or-int/lit8 v0, v0, 0x59

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->cancelReserveNotify()V

    sget p0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    const/16 v0, 0x25

    and-int/lit8 v1, p0, -0x26

    xor-int/lit8 v2, p0, -0x1

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/2addr p0, v0

    const/4 v0, 0x1

    shl-int/2addr p0, v0

    xor-int/lit8 p0, p0, -0x1

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p0, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0xc

    :try_start_0
    div-int/2addr v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lccsancom/san/reserve/service/ReserveAlarmService;)V
    .locals 2
    .param p0, "x0"    # Lccsancom/san/reserve/service/ReserveAlarmService;

    .line 1
    .end local p0    # "x0":Lccsancom/san/reserve/service/ReserveAlarmService;
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xc

    or-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->cancelAlarmManagerTask()V

    sget p0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0x3a

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
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/reserve/service/ReserveAlarmService;)V
    .locals 3
    .param p0, "x0"    # Lccsancom/san/reserve/service/ReserveAlarmService;

    .line 1
    .end local p0    # "x0":Lccsancom/san/reserve/service/ReserveAlarmService;
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x33

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    and-int/lit8 v2, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->createAlarmManagerTask()V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    or-int/lit8 v0, p0, 0x72

    shl-int/2addr v0, v1

    xor-int/lit8 p0, p0, 0x72

    sub-int/2addr v0, p0

    or-int/lit8 p0, v0, -0x1

    shl-int/2addr p0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$400(Lccsancom/san/reserve/service/ReserveAlarmService;Lccsansan/bd/addDownloadListener;)Z
    .locals 4
    .param p0, "x0"    # Lccsancom/san/reserve/service/ReserveAlarmService;
    .param p1, "x1"    # Lccsansan/bd/addDownloadListener;

    .line 1
    .end local p0    # "x0":Lccsancom/san/reserve/service/ReserveAlarmService;
    .end local p1    # "x1":Lccsansan/bd/addDownloadListener;
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x1d

    xor-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/reserve/service/ReserveAlarmService;->isShowReserveNotify(Lccsansan/bd/addDownloadListener;)Z

    move-result p0

    packed-switch v3, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$500(Lccsancom/san/reserve/service/ReserveAlarmService;Ljava/lang/String;Lccsansan/bd/addDownloadListener;)V
    .locals 4
    .param p0, "x0"    # Lccsancom/san/reserve/service/ReserveAlarmService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lccsansan/bd/addDownloadListener;

    .line 1
    .end local p0    # "x0":Lccsancom/san/reserve/service/ReserveAlarmService;
    .end local p1    # "x1":Ljava/lang/String;
    .end local p2    # "x2":Lccsansan/bd/addDownloadListener;
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v1, v0, 0xd

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0xd

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    or-int v3, v0, v1

    shl-int/2addr v3, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/san/reserve/service/ReserveAlarmService;->showReserveNotify(Ljava/lang/String;Lccsansan/bd/addDownloadListener;)V

    sget p0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 p1, p0, 0x43

    xor-int/lit8 p2, p1, -0x1

    or-int/lit8 p0, p0, 0x43

    and-int/2addr p0, p2

    shl-int/2addr p1, v2

    and-int p2, p0, p1

    or-int/2addr p0, p1

    add-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private cancelAlarmManagerTask()V
    .locals 4

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->TAG:Ljava/lang/String;

    const-string v1, "cancel alarm manager task"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "alarm"

    .line 3
    invoke-virtual {p0, v1}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/AlarmManager;

    .line 4
    new-instance v2, Lccsanandroid/content/Intent;

    const-class v3, Lccsansan/h/getDownloadingList;

    invoke-direct {v2, p0, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "reserve_alarm_manager_receive"

    .line 5
    invoke-virtual {v2, v3}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 6
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lccsanandroid/app/AlarmManager;->cancel(Lccsanandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    or-int/lit8 v2, v1, 0x29

    shl-int/2addr v2, v0

    xor-int/lit8 v1, v1, 0x29

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v2, v1, 0x9

    and-int/lit8 v1, v1, 0x9

    shl-int/lit8 v0, v1, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v0, 0x2a

    goto :goto_1

    :cond_1
    const/16 v0, 0x22

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :goto_2
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private cancelReserveNotify()V
    .locals 5

    .line 14
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    const/4 v0, 0x2

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 1
    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v1

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :goto_3
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v2, v1, 0x7d

    and-int/lit8 v1, v1, 0x7d

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr v1, v0

    return-void

    .line 4
    :cond_1
    sget-boolean v1, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    if-nez v1, :cond_3

    .line 1
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v3, v1, 0x3f

    xor-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    or-int v4, v3, v1

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v1, v3

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_2

    const/16 v0, 0x53

    goto :goto_4

    :cond_2
    const/16 v0, 0xa

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 14
    return-void

    .line 1
    :pswitch_1
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 7
    :cond_3
    const-string v1, "reserve_notify_service"

    const-string v2, "reserve_cancel_notify"

    invoke-static {v1, v2}, Lccsansan/aj/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lccsanandroid/content/Intent;

    const-class v2, Lccsancom/san/reserve/service/removeDownloadListener;

    invoke-direct {v1, p0, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 9
    const-string v2, "notify_status"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 11
    :try_start_2
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4

    .line 1
    const/16 v2, 0x21

    goto :goto_5

    :cond_4
    const/16 v2, 0x31

    :goto_5
    packed-switch v2, :pswitch_data_2

    .line 14
    sget v2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v3, v2, 0x49

    and-int/lit8 v2, v2, 0x49

    shl-int/lit8 v2, v2, 0x1

    xor-int v4, v3, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr v4, v0

    if-eqz v4, :cond_5

    goto :goto_6

    :pswitch_2
    :try_start_3
    invoke-virtual {p0, v1}, Lccsanandroid/app/Service;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v2, v1, 0x7a

    and-int/lit8 v1, v1, 0x7a

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_6

    goto :goto_7

    .line 12
    :cond_5
    :goto_6
    :try_start_4
    invoke-static {p0, v1}, Lccsanandroidx/core/content/ContextCompat;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 14
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v2, v1, 0x5b

    or-int/lit8 v1, v1, 0x5b

    neg-int v1, v1

    neg-int v1, v1

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_6

    goto :goto_7

    :catch_0
    move-exception v1

    :cond_6
    :goto_7
    nop

    .line 1
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x3d

    add-int/lit8 v1, v1, -0x1

    xor-int/lit8 v2, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_7

    const/16 v0, 0x5c

    goto :goto_8

    :cond_7
    const/16 v0, 0x2d

    :goto_8
    packed-switch v0, :pswitch_data_3

    .line 14
    return-void

    .line 1
    :pswitch_3
    const/16 v0, 0x10

    :try_start_5
    div-int/lit8 v0, v0, 0x0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 14
    :catchall_2
    move-exception v0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5c
        :pswitch_3
    .end packed-switch
.end method

.method private checkReserveTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceType"    # Ljava/lang/String;

    .line 1
    .end local p1    # "sourceType":Ljava/lang/String;
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsancom/san/reserve/service/ReserveAlarmService$IncentiveDownloadUtils;-><init>(Lccsancom/san/reserve/service/ReserveAlarmService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x45

    and-int/lit8 v1, p1, 0x45

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x45

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method private createAlarmManagerTask()V
    .locals 9

    .line 17
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->TAG:Ljava/lang/String;

    const-string v1, "create alarm manager task"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "alarm"

    .line 4
    invoke-virtual {p0, v1}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/AlarmManager;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->getONE_MIN()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 6
    new-instance v4, Lccsanandroid/content/Intent;

    const-class v5, Lccsansan/h/getDownloadingList;

    invoke-direct {v4, p0, v5}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "reserve_alarm_manager_receive"

    .line 7
    invoke-virtual {v4, v5}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 8
    const/4 v5, 0x0

    invoke-static {p0, v5, v4, v5}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v4

    .line 9
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 12
    const/16 v7, 0x44

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 10
    const/16 v7, 0x13

    if-lt v6, v7, :cond_2

    goto :goto_3

    .line 17
    :pswitch_0
    sget v6, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v7, v6, 0x1f

    xor-int/lit8 v6, v6, 0x1f

    or-int/2addr v6, v7

    and-int v8, v7, v6

    or-int/2addr v6, v7

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 12
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    packed-switch v6, :pswitch_data_1

    .line 17
    nop

    .line 10
    :try_start_1
    invoke-virtual {v1, v5, v2, v3, v4}, Lccsanandroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_2

    .line 9
    :pswitch_1
    nop

    .line 10
    invoke-virtual {v1, v0, v2, v3, v4}, Lccsanandroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLccsanandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    :goto_2
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v2, v1, 0x65

    and-int/lit8 v3, v1, 0x65

    or-int/2addr v2, v3

    shl-int/2addr v2, v0

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v1, v1, 0x65

    and-int/2addr v1, v3

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_5

    .line 12
    :goto_3
    const/16 v6, 0x59

    goto :goto_4

    :cond_2
    const/16 v6, 0x36

    :goto_4
    packed-switch v6, :pswitch_data_2

    .line 10
    sget v6, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    add-int/lit8 v6, v6, 0x4a

    sub-int/2addr v6, v0

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    goto :goto_6

    .line 14
    :pswitch_2
    :try_start_2
    invoke-virtual {v1, v0, v2, v3, v4}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 17
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v2, v1, 0x1

    xor-int/lit8 v3, v2, -0x1

    or-int/2addr v1, v0

    and-int/2addr v1, v3

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_3
    :goto_5
    :pswitch_3
    goto :goto_a

    .line 12
    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_4
    const/4 v6, 0x1

    :goto_7
    packed-switch v6, :pswitch_data_3

    .line 10
    nop

    .line 12
    :try_start_3
    invoke-virtual {v1, v0, v2, v3, v4}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_8

    .line 10
    :pswitch_4
    nop

    .line 12
    invoke-virtual {v1, v5, v2, v3, v4}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 17
    :goto_8
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v2, v1, 0x34

    or-int/lit8 v1, v1, 0x34

    add-int/2addr v2, v1

    or-int/lit8 v1, v2, -0x1

    shl-int/2addr v1, v0

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 12
    goto :goto_9

    :cond_5
    const/4 v5, 0x1

    :goto_9
    packed-switch v5, :pswitch_data_4

    .line 17
    goto :goto_5

    :goto_a
    :try_start_4
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "cancelAlarmManager"

    :try_start_5
    iget-object v3, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->mChangedListener:Lccsansan/r/addDownloadListener;

    invoke-virtual {v1, v2, v3}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v2, v1, -0x6c

    xor-int/lit8 v3, v1, -0x1

    and-int/lit8 v3, v3, 0x6b

    or-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x6b

    shl-int/2addr v1, v0

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    shl-int/2addr v1, v0

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    goto :goto_b

    :catch_0
    move-exception v1

    :cond_6
    :goto_b
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x28

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private isShowReserveNotify(Lccsansan/bd/addDownloadListener;)Z
    .locals 13
    .param p1, "reseverNotifyInfo"    # Lccsansan/bd/addDownloadListener;

    .line 17
    .end local p1    # "reseverNotifyInfo":Lccsansan/bd/addDownloadListener;
    nop

    .line 16
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x4d

    and-int/lit8 v2, v0, 0x4d

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v4, v0, 0x4d

    and-int/2addr v2, v4

    neg-int v2, v2

    or-int v4, v1, v2

    shl-int/2addr v4, v3

    xor-int/2addr v1, v2

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 16
    const/16 v1, 0x2a

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    :goto_0
    const/16 v2, 0x67

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-virtual {p1}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lccsancom/san/reserve/service/ReserveAlarmService;->updateAlarmTime(J)V

    .line 2
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 17
    :pswitch_0
    xor-int/lit8 p1, v0, 0x67

    and-int/2addr v0, v2

    shl-int/2addr v0, v3

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 16
    const/16 p1, 0x3a

    goto :goto_1

    :cond_2
    const/16 p1, 0x33

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 0
    goto :goto_2

    .line 17
    :pswitch_1
    nop

    :goto_2
    return v4

    .line 16
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 6
    invoke-virtual {p1}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    const/16 v2, 0x3d

    cmp-long v7, v0, v5

    if-nez v7, :cond_5

    goto :goto_7

    .line 16
    :pswitch_2
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v0, p1, -0x68

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/2addr p1, v2

    shl-int/2addr p1, v3

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    packed-switch p1, :pswitch_data_3

    goto :goto_6

    .line 2
    :pswitch_3
    const/4 v3, 0x0

    .line 17
    :goto_6
    return v3

    .line 16
    :goto_7
    const/16 v0, 0x3b

    goto :goto_8

    :cond_5
    const/16 v0, 0x3d

    :goto_8
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4

    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 v0, p1, 0x5

    and-int/lit8 v5, p1, 0x5

    or-int/2addr v0, v5

    shl-int/2addr v0, v3

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 p1, p1, 0x5

    and-int/2addr p1, v5

    neg-int p1, p1

    or-int v5, v0, p1

    shl-int/2addr v5, v3

    xor-int/2addr p1, v0

    sub-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_e

    goto/16 :goto_13

    .line 9
    :pswitch_4
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->removeDownloadListener()J

    move-result-wide v5

    .line 10
    invoke-virtual {p1}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 12
    sget-wide v9, Lccsancom/san/reserve/service/removeDownloadListener;->removeDownloadListener:J

    sub-long/2addr v9, v7

    const-wide/32 v11, 0x1b7740

    cmp-long p1, v9, v11

    if-ltz p1, :cond_6

    .line 16
    const/4 p1, 0x1

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    :goto_9
    packed-switch p1, :pswitch_data_5

    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x5b

    and-int/lit8 p1, p1, 0x5b

    or-int/2addr p1, v0

    shl-int/2addr p1, v3

    neg-int v0, v0

    xor-int v2, p1, v0

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 13
    :cond_7
    invoke-direct {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->cancelReserveNotify()V

    .line 14
    sput-boolean v4, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    .line 16
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x5f

    or-int/lit8 p1, p1, 0x5f

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 17
    :cond_8
    nop

    .line 14
    :pswitch_5
    cmp-long p1, v5, v7

    if-ltz p1, :cond_9

    .line 16
    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    const/16 v0, 0x1d

    packed-switch p1, :pswitch_data_6

    :goto_b
    :pswitch_6
    goto :goto_11

    .line 17
    :pswitch_7
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    const/16 v2, 0x35

    and-int/lit8 v5, p1, -0x36

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    and-int/2addr p1, v2

    shl-int/2addr p1, v3

    add-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    .line 16
    const/16 p1, 0x2d

    goto :goto_c

    :cond_a
    const/4 p1, 0x3

    :goto_c
    packed-switch p1, :pswitch_data_7

    sget-boolean p1, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    goto :goto_e

    :pswitch_8
    sget-boolean p1, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_d

    :cond_b
    const/4 p1, 0x1

    :goto_d
    packed-switch p1, :pswitch_data_8

    :pswitch_9
    goto :goto_10

    :goto_e
    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_c

    const/16 p1, 0x1d

    goto :goto_f

    :cond_c
    const/16 p1, 0x38

    :goto_f
    packed-switch p1, :pswitch_data_9

    goto :goto_b

    .line 17
    :goto_10
    sput-wide v7, Lccsancom/san/reserve/service/removeDownloadListener;->removeDownloadListener:J

    .line 16
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x9

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x9

    and-int/2addr p1, v1

    shl-int/2addr v0, v3

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    .line 17
    return v3

    :catchall_0
    move-exception p1

    throw p1

    :goto_11
    nop

    .line 16
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v1, p1, -0x1e

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    or-int v0, v1, p1

    shl-int/2addr v0, v3

    xor-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    const/4 v3, 0x0

    :cond_d
    packed-switch v3, :pswitch_data_a

    goto :goto_12

    .line 17
    :pswitch_a
    return v4

    .line 16
    :goto_12
    const/4 p1, 0x5

    :try_start_1
    div-int/2addr p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v4

    :catchall_1
    move-exception p1

    throw p1

    :goto_13
    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    const/4 v0, 0x1

    :goto_14
    packed-switch v0, :pswitch_data_b

    .line 6
    goto :goto_15

    .line 16
    :pswitch_b
    const/4 v3, 0x0

    :goto_15
    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_f

    goto :goto_16

    :cond_f
    const/16 v2, 0x43

    :goto_16
    packed-switch v2, :pswitch_data_c

    goto :goto_17

    .line 17
    :pswitch_c
    return v3

    .line 16
    :goto_17
    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v3

    :catchall_2
    move-exception p1

    goto :goto_19

    :goto_18
    throw p1

    :goto_19
    goto :goto_18

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3d
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1d
        :pswitch_9
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x43
        :pswitch_c
    .end packed-switch
.end method

.method private showEmptyNotification()V
    .locals 8

    .line 12
    nop

    .line 1
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v1, "default_alarm_notify_id"

    invoke-direct {v0, p0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 5
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 7
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    .line 12
    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v4, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 v5, v4, 0x45

    xor-int/lit8 v7, v5, -0x1

    or-int/lit8 v4, v4, 0x45

    and-int/2addr v4, v7

    shl-int/2addr v5, v2

    add-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 7
    :cond_1
    nop

    .line 8
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/app/NotificationManager;

    .line 9
    const-string v5, "default_alarm_notify_name"

    invoke-static {v1, v5}, Lccsansan/bz/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v4, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 12
    sget v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 v4, v1, 0x7

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v1, v2

    xor-int/2addr v1, v3

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 9
    :goto_2
    const v1, 0x31477a8

    .line 11
    invoke-virtual {p0, v1, v0}, Lccsanandroid/app/Service;->startForeground(ILccsanandroid/app/Notification;)V

    .line 12
    invoke-virtual {p0, v2}, Lccsanandroid/app/Service;->stopForeground(Z)V

    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x41

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x41

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v0, 0x1d

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_1
    .end packed-switch
.end method

.method private showReserveNotify(Ljava/lang/String;Lccsansan/bd/addDownloadListener;)V
    .locals 7
    .param p1, "showDes"    # Ljava/lang/String;
    .param p2, "notifyInfo"    # Lccsansan/bd/addDownloadListener;

    .line 11
    .end local p1    # "showDes":Ljava/lang/String;
    .end local p2    # "notifyInfo":Lccsansan/bd/addDownloadListener;
    nop

    .line 1
    const-string v0, "reserve_notify_service"

    const-string v1, "reserve_show_notify"

    invoke-static {v0, v1}, Lccsansan/aj/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/san/reserve/service/removeDownloadListener;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string v1, "notify_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 4
    const-string v1, "notify_show_des"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-string p1, "notify_reserve_close_time"

    invoke-virtual {v0, p1, v3, v4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;J)Lccsanandroid/content/Intent;

    .line 6
    invoke-virtual {p2}, Lccsansan/bd/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    const-string p2, "notify_pkg_name"

    invoke-virtual {v0, p2, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 8
    :try_start_0
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 9
    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    const/16 p1, 0x43

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 11
    invoke-virtual {p0, v0}, Lccsanandroid/app/Service;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :pswitch_0
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 p2, p1, 0x2c

    and-int/lit8 p1, p1, 0x2c

    shl-int/2addr p1, v2

    add-int/2addr p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p2, p2, -0x1

    shl-int/2addr p2, v2

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 9
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    :try_start_1
    invoke-static {p0, v0}, Lccsanandroidx/core/content/ContextCompat;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    goto :goto_2

    :pswitch_1
    invoke-static {p0, v0}, Lccsanandroidx/core/content/ContextCompat;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    const/16 p1, 0x63

    :try_start_2
    div-int/2addr p1, p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 11
    :catchall_0
    move-exception p1

    throw p1

    .line 9
    :goto_3
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x1

    xor-int/2addr p1, v2

    or-int/2addr p1, p2

    and-int v0, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_4

    .line 11
    :catch_0
    move-exception p1

    :cond_2
    :goto_4
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    or-int/lit8 p2, p1, 0x77

    shl-int/2addr p2, v2

    xor-int/lit8 p1, p1, 0x77

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlarmTime(J)V
    .locals 6
    .param p1, "endTime"    # J

    .line 5
    .end local p1    # "endTime":J
    nop

    .line 3
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x73

    and-int/lit8 v2, v0, 0x73

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x74

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x73

    or-int/2addr v0, v3

    neg-int v0, v0

    or-int v3, v1, v0

    shl-int/2addr v3, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v0, 0x0

    if-nez v3, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    const-wide/16 v4, 0xf

    invoke-static {p1, p2}, Lccsansan/bw/AdFormat;->IncentiveDownloadUtils(J)J

    move-result-wide p1

    packed-switch v1, :pswitch_data_0

    cmp-long v1, p1, v4

    goto :goto_3

    :pswitch_0
    cmp-long v1, p1, v4

    if-gtz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    goto :goto_6

    :goto_3
    const/16 p1, 0x4c

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gtz v1, :cond_2

    const/16 p1, 0x1d

    goto :goto_4

    :cond_2
    const/16 p1, 0x28

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 3
    :pswitch_1
    const p1, 0x493e0

    .line 5
    invoke-virtual {p0, p1}, Lccsancom/san/reserve/service/ReserveAlarmService;->setONE_MIN(I)V

    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    or-int/lit8 p2, p1, 0x57

    shl-int/lit8 v0, p2, 0x1

    and-int/lit8 p1, p1, 0x57

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_3
    :goto_5
    goto :goto_9

    :goto_6
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x1b

    and-int/lit8 p1, p1, 0x1b

    shl-int/2addr p1, v2

    and-int v1, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 1
    goto :goto_7

    :cond_4
    const/4 v0, 0x1

    :goto_7
    const p1, 0xea60

    packed-switch v0, :pswitch_data_3

    .line 5
    nop

    .line 3
    invoke-virtual {p0, p1}, Lccsancom/san/reserve/service/ReserveAlarmService;->setONE_MIN(I)V

    goto :goto_8

    :pswitch_2
    invoke-virtual {p0, p1}, Lccsancom/san/reserve/service/ReserveAlarmService;->setONE_MIN(I)V

    goto :goto_5

    :goto_8
    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 1
    :goto_9
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 p2, p1, 0x45

    xor-int/lit8 v0, p2, -0x1

    or-int/lit8 p1, p1, 0x45

    and-int/2addr p1, v0

    shl-int/2addr p2, v2

    neg-int p2, p2

    neg-int p2, p2

    or-int v0, p1, p2

    shl-int/2addr v0, v2

    xor-int/2addr p1, p2

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/16 p1, 0x35

    goto :goto_a

    :cond_5
    const/16 p1, 0x49

    :goto_a
    packed-switch p1, :pswitch_data_4

    .line 5
    return-void

    .line 1
    :pswitch_3
    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :catchall_1
    move-exception p1

    throw p1

    .line 3
    :catchall_2
    move-exception p1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x35
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getONE_MIN()I
    .locals 2

    .line 1
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x32

    and-int/lit8 v0, v0, 0x32

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->ONE_MIN:I

    goto :goto_1

    :pswitch_0
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->ONE_MIN:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 1
    .end local p1    # "intent":Lccsanandroid/content/Intent;
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 6

    .line 3
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    const/16 v1, 0xb

    and-int/lit8 v2, v0, -0xc

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 2
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1b

    packed-switch v2, :pswitch_data_0

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Service;->onDestroy()V

    .line 2
    iget-object v2, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->mChangedListener:Lccsansan/r/addDownloadListener;

    goto :goto_3

    .line 1
    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Service;->onDestroy()V

    .line 2
    iget-object v2, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->mChangedListener:Lccsansan/r/addDownloadListener;

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_1

    :cond_1
    const/16 v2, 0x32

    :goto_1
    packed-switch v2, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    const/16 v2, 0x1b

    goto :goto_4

    :cond_2
    const/16 v2, 0x20

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_2

    .line 3
    :goto_5
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v2

    iget-object v4, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->mChangedListener:Lccsansan/r/addDownloadListener;

    const-string v5, "cancelAlarmManager"

    invoke-virtual {v2, v5, v4}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 2
    sget v2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v4, v2, 0x75

    xor-int/lit8 v2, v2, 0x75

    or-int/2addr v2, v4

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    goto :goto_6

    :cond_3
    const/4 v2, 0x1

    :goto_6
    packed-switch v2, :pswitch_data_3

    .line 3
    nop

    :pswitch_1
    sget v2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    or-int/lit8 v4, v2, 0x4d

    shl-int/2addr v4, v1

    xor-int/lit8 v2, v2, 0x4d

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 2
    const/4 v1, 0x0

    goto :goto_7

    :cond_4
    nop

    :goto_7
    packed-switch v1, :pswitch_data_4

    .line 3
    goto :goto_8

    :pswitch_2
    return-void

    :goto_8
    :try_start_1
    div-int/2addr v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 14
    .end local p1    # "intent":Lccsanandroid/content/Intent;
    .end local p2    # "flags":I
    .end local p3    # "startId":I
    sget p2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    xor-int/lit8 p3, p2, 0x77

    and-int/lit8 v0, p2, 0x77

    or-int/2addr p3, v0

    const/4 v1, 0x1

    shl-int/2addr p3, v1

    xor-int/lit8 v0, v0, -0x1

    or-int/lit8 v2, p2, 0x77

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p3, v0

    sub-int/2addr p3, v1

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    const/4 v0, 0x2

    rem-int/2addr p3, v0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_3

    .line 0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 14
    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    packed-switch p3, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 p3, 0x41

    :try_start_0
    div-int/2addr p3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    goto :goto_4

    :cond_2
    const/4 p3, 0x0

    :goto_4
    packed-switch p3, :pswitch_data_2

    goto :goto_2

    :goto_5
    xor-int/lit8 p3, p2, 0x73

    and-int/lit8 p2, p2, 0x73

    or-int/2addr p2, p3

    shl-int/2addr p2, v1

    neg-int p3, p3

    xor-int/lit8 p3, p3, -0x1

    sub-int/2addr p2, p3

    sub-int/2addr p2, v1

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    .line 14
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x25

    xor-int/lit8 p1, p1, 0x25

    or-int/2addr p1, p2

    xor-int p3, p2, p1

    and-int/2addr p1, p2

    shl-int/2addr p1, v1

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr p3, v0

    if-nez p3, :cond_4

    const/16 p1, 0x1f

    goto :goto_6

    :cond_4
    const/16 p1, 0x3c

    :goto_6
    :pswitch_1
    invoke-direct {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->showEmptyNotification()V

    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x5a

    sub-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 v1, 0x0

    :goto_7
    packed-switch v1, :pswitch_data_3

    goto :goto_8

    :pswitch_2
    return v0

    :goto_8
    const/16 p1, 0x28

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :cond_6
    invoke-direct {p0}, Lccsancom/san/reserve/service/ReserveAlarmService;->showEmptyNotification()V

    .line 6
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p2

    const-string p3, "action_type"

    invoke-virtual {p2, p3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string p3, "source_type"

    invoke-virtual {p1, p3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p3, p0, Lccsancom/san/reserve/service/ReserveAlarmService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reserve alarm service action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 14
    const/16 p3, 0x11

    goto :goto_9

    :cond_7
    const/16 p3, 0x24

    :goto_9
    const/16 v3, 0x6f

    packed-switch p3, :pswitch_data_4

    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 p2, p1, 0x19

    xor-int/lit8 p3, p1, 0x19

    or-int/2addr p3, p2

    neg-int p3, p3

    neg-int p3, p3

    xor-int/lit8 p3, p3, -0x1

    sub-int/2addr p2, p3

    sub-int/2addr p2, v1

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_c

    goto :goto_d

    .line 9
    :pswitch_3
    nop

    .line 12
    const-string p3, "check_reserve_time"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 14
    const/4 p2, 0x1

    goto :goto_a

    :cond_8
    const/4 p2, 0x0

    :goto_a
    packed-switch p2, :pswitch_data_5

    sget p2, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    const/16 p3, 0x27

    and-int/lit8 v4, p2, -0x28

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, p3

    or-int/2addr v4, v5

    and-int/2addr p2, p3

    shl-int/2addr p2, v1

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr v4, p2

    sub-int/2addr v4, v1

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_9

    .line 13
    :cond_9
    invoke-direct {p0, p1}, Lccsancom/san/reserve/service/ReserveAlarmService;->checkReserveTime(Ljava/lang/String;)V

    .line 14
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x6f

    and-int/lit8 p3, p1, 0x6f

    or-int/2addr p2, p3

    shl-int/2addr p2, v1

    and-int/lit8 p3, p1, -0x70

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    neg-int p1, p1

    xor-int p3, p2, p1

    and-int/2addr p1, p2

    shl-int/2addr p1, v1

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr p3, v0

    if-nez p3, :cond_a

    const/16 p1, 0x5e

    goto :goto_b

    :cond_a
    const/16 p1, 0x40

    .line 13
    :goto_b
    :pswitch_4
    nop

    .line 14
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xd

    sub-int/2addr p1, v1

    and-int/lit8 p2, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    packed-switch v1, :pswitch_data_6

    return v0

    :pswitch_5
    const/16 p1, 0x4d

    :try_start_2
    div-int/2addr p1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    throw p1

    .line 9
    :cond_c
    :goto_d
    nop

    .line 14
    and-int/lit8 p2, p1, 0x6f

    xor-int/lit8 p3, p2, -0x1

    or-int/2addr p1, v3

    and-int/2addr p1, p3

    shl-int/2addr p2, v1

    neg-int p2, p2

    neg-int p2, p2

    or-int p3, p1, p2

    shl-int/2addr p3, v1

    xor-int/2addr p1, p2

    sub-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/2addr p3, v0

    return v0

    :catchall_2
    move-exception p1

    goto :goto_f

    :goto_e
    throw p1

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x24
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public setONE_MIN(I)V
    .locals 3
    .param p1, "ONE_MIN"    # I

    .line 1
    .end local p1    # "ONE_MIN":I
    sget v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x61

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x61

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/ReserveAlarmService;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService;->ONE_MIN:I

    xor-int/lit8 p1, v1, 0x2d

    and-int/lit8 v0, v1, 0x2d

    shl-int/2addr v0, v2

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
