.class public Lccsansan/bq/getDownloadedRecordByUrl;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    const-string v1, "puppy"

    invoke-direct {v0, p1, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sget v1, Lccsansan/bq/getDownloadedRecordByUrl;->getDownloadingList:I

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccsansan/bq/getDownloadedRecordByUrl;->getDownloadingList:I

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsansan/bq/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Z)V

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Lccsansan/bw/AdError;

    const-string v1, "puppy"

    invoke-direct {v0, p0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 23
    const-string p0, "exfo"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1, v1}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;Z)V

    .line 52
    invoke-static {p1, v1}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    nop

    .line 53
    invoke-static {p1, v0}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;Z)V

    .line 54
    invoke-static {p1, v1}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    nop

    .line 55
    invoke-static {p1, v1}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;Z)V

    .line 56
    invoke-static {p1, v0}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    nop

    .line 57
    invoke-static {p1, v0}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;Z)V

    .line 58
    invoke-static {p1, v0}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Z)V
    .locals 7

    .line 24
    new-instance v0, Lccsansan/bw/AdError;

    const-string v1, "puppy"

    invoke-direct {v0, p1, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 25
    const-string v1, "ts"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresh diffTimeMills = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " expiredHours = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lccsansan/bq/getDownloadedRecordByUrl;->getDownloadingList:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " lastWdrTs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " now = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    const-string v2, "Adm.wdr"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget v2, Lccsansan/bq/getDownloadedRecordByUrl;->getDownloadingList:I

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 35
    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    .line 37
    :goto_0
    invoke-static {v2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(I)V

    .line 39
    invoke-direct {p0, p1, v1}, Lccsansan/bq/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;I)V

    .line 41
    const-string v1, "loc"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-static {v0}, Lccsansan/cd/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-static {p1, p2}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Z)V

    if-eqz p2, :cond_3

    .line 50
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p1

    const-string p2, "r_p"

    const-string v0, "PUPPY"

    invoke-virtual {p1, p2, v0}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    const-string v1, "puppy"

    invoke-direct {v0, p1, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 2
    const-string p1, "expired"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget v1, Lccsansan/bq/getDownloadedRecordByUrl;->getDownloadingList:I

    invoke-virtual {p2, p1, v1}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lccsansan/bq/getDownloadedRecordByUrl;->getDownloadingList:I

    .line 4
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    :cond_0
    nop

    .line 6
    const-string p1, "level"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, p1, v1}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "l"

    invoke-virtual {v0, v1, p1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    :cond_1
    nop

    .line 9
    const-string p1, "sale"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    nop

    .line 12
    const-string p1, "loc"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    nop

    .line 15
    const-string p1, "level_s"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ls"

    invoke-virtual {v0, v1, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "ts"

    invoke-virtual {v0, p1, v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    .line 20
    const-string p1, "exe"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {p2, p1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "exfo"

    invoke-virtual {v0, p2, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    return-void
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adm.wdr"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1, p2}, Lccsansan/bq/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    .line 3
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lccsansan/bq/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Z)V

    return-void
.end method
