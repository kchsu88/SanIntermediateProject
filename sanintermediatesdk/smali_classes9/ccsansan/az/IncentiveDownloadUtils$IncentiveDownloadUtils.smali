.class Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/az/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v1}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onActivityPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v1}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliveRecorder"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Lccsansan/az/IncentiveDownloadUtils;)I

    .line 3
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Lccsansan/az/IncentiveDownloadUtils;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0, v3}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/az/IncentiveDownloadUtils;Z)Z

    .line 5
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0, v2}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;I)I

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener()J

    move-result-wide v4

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener(J)J

    .line 11
    :cond_2
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/az/IncentiveDownloadUtils;)Lccsansan/bw/AdError;

    move-result-object p1

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v4}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/az/IncentiveDownloadUtils;)Lccsansan/bw/AdError;

    move-result-object v4

    iget-object v5, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v5}, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    .line 15
    :cond_3
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    const-string v0, ""

    invoke-static {p1, v0}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v2

    invoke-static {v2, v3}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(J)J

    .line 17
    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload(J)J

    .line 18
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/az/IncentiveDownloadUtils;)Lccsansan/bw/AdError;

    move-result-object p1

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#onActivityPaused activeDuration = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; lastActivePoint = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v1}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onActivityResumed lastActivePoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliveRecorder"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener(J)J

    .line 3
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/az/IncentiveDownloadUtils;)I

    .line 5
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/az/IncentiveDownloadUtils;)Lccsansan/bw/AdError;

    move-result-object p1

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v1}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/az/IncentiveDownloadUtils;)Lccsansan/bw/AdError;

    move-result-object v1

    iget-object v2, p0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/az/IncentiveDownloadUtils;

    invoke-static {v2}, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method
