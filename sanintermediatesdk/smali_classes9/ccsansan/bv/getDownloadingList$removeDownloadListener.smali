.class Lccsansan/bv/getDownloadingList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadingCount$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bv/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Lccsansan/bv/getDownloadingList;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/bv/getDownloadingList;ZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    iput-boolean p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Z

    iput p3, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->removeDownloadListener:I

    iput-object p4, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(ZZLjava/lang/String;)V
    .locals 10

    .line 10
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

    const-string v0, "Mads.ActionTrigger.Land"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->getDownloadingRecordByUrl(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->getDownloadedCount(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->pause(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->getDownloadingCount(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->resume(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->deleteDownList(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->IncentiveSDK(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

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

    .line 13
    :cond_1
    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->getThumbPathByRecord(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->getPackageNameByRecord(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->trackReportClick(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->trackReportShow(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->shouldTryHandlingAction(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->resolveUrl(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->execute(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->ActionTypeDetailPage(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->IncentiveSDK$1(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

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
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {v0}, Lccsansan/bv/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/bv/getDownloadingList;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(ZZLjava/lang/String;I)V
    .locals 8

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResult success : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  resultUrl : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   actionHandlerType :"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.ActionTrigger.Land"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->addDownloadListener(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object p1

    .line 6
    iget-boolean p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Z

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p2}, Lccsansan/bv/getDownloadingList;->getDownloadingList(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p2}, Lccsansan/bv/getDownloadingList;->unifiedDownload(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p2}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p2}, Lccsansan/bv/getDownloadingList;->getDownloadStatusByUrl(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p2}, Lccsansan/bv/getDownloadingList;->getDownloadedRecordByUrl(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    move-object v3, p2

    if-eqz p1, :cond_1

    iget-object p1, p1, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "-1"

    :goto_1
    move-object v4, p1

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    .line 8
    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->getDownloadedList(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result p1

    iget p2, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->removeDownloadListener:I

    invoke-static {p4, p1, p2}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(III)I

    move-result v5

    iget-object p1, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/bv/getDownloadingList;

    invoke-static {p1}, Lccsansan/bv/getDownloadingList;->deleteDownItem(Lccsansan/bv/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object v6

    iget-object v7, p0, Lccsansan/bv/getDownloadingList$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 9
    invoke-static/range {v0 .. v7}, Lccsansan/bn/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
