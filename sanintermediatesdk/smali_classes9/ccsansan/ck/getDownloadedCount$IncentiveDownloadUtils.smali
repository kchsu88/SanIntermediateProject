.class Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadingCount$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/ck/getDownloadedCount;

.field removeDownloadListener:J


# direct methods
.method constructor <init>(Lccsansan/ck/getDownloadedCount;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->removeDownloadListener:J

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(ZZLjava/lang/String;)V
    .locals 10

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeepLink result : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  result url : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mads.WebAT"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v8, p2

    const-string v5, "adclick"

    const-string v6, "success"

    const-string v7, ""

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p1}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    :cond_2
    move-object v8, p2

    const-string v5, "adclick"

    const-string v6, "fail"

    const-string v7, "deeplink false or no such app"

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->removeDownloadListener:J

    .line 2
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-virtual {v0}, Lccsansan/ck/getDownloadedCount;->unifiedDownload()V

    .line 3
    iget-object v0, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {v0}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method

.method public unifiedDownload(ZZLjava/lang/String;I)V
    .locals 6

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute result : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  result url : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "actionHandlerType : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Mads.WebAT"

    invoke-static {p3, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p2}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result p2

    const/4 p3, -0x1

    invoke-static {p4, p2, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(III)I

    move-result v1

    iget-object p2, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    invoke-static {p2}, Lccsansan/ck/getDownloadedCount;->removeDownloadListener(Lccsansan/ck/getDownloadedCount;)Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v3, p0, Lccsansan/ck/getDownloadedCount$IncentiveDownloadUtils;->removeDownloadListener:J

    sub-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-string v3, "jstag"

    move v0, p1

    invoke-static/range {v0 .. v5}, Lccsansan/l/unifiedDownload;->unifiedDownload(IILccsansan/dt/removeDownloadListener;Ljava/lang/String;J)V

    return-void
.end method
