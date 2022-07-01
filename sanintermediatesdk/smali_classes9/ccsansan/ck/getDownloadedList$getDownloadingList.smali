.class Lccsansan/ck/getDownloadedList$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadingCount$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/ck/getDownloadedList;

.field getDownloadingList:J


# direct methods
.method constructor <init>(Lccsansan/ck/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iput-object p2, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->getDownloadingList:J

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(ZZLjava/lang/String;)V
    .locals 10

    .line 8
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

    const-string v0, "Mads.ActionTrigger"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

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

    .line 11
    :cond_1
    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

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

    iput-wide v0, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->getDownloadingList:J

    .line 2
    iget-object v0, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object v0, v0, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    .line 3
    iget-object v0, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object v0, v0, Lccsansan/ck/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 4
    iget-object v0, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    invoke-static {v0}, Lccsansan/ck/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/ck/getDownloadedList;)V

    return-void
.end method

.method public unifiedDownload(ZZLjava/lang/String;I)V
    .locals 7

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResult success : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  resultUrl : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   actionHandlerType :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mads.ActionTrigger"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p2, p2, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result p2

    const/4 v0, -0x1

    invoke-static {p4, p2, v0}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(III)I

    move-result v2

    iget-object p2, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object v3, p2, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget-object v4, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->getDownloadingList:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    move v1, p1

    invoke-static/range {v1 .. v6}, Lccsansan/l/unifiedDownload;->unifiedDownload(IILccsansan/dt/removeDownloadListener;Ljava/lang/String;J)V

    .line 7
    iget-object p1, p0, Lccsansan/ck/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/ck/getDownloadedList;

    iget-object p1, p1, Lccsansan/ck/getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {p1, p3}, Lccsansan/cy/deleteDownItem;->addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    return-void
.end method
