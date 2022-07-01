.class Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadedRecordByUrl:Lccsansan/ds/IncentiveDownloadUtils;

.field final synthetic getDownloadingList:J

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field unifiedDownload:I


# direct methods
.method constructor <init>(Lccsansan/ds/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->getDownloadedRecordByUrl:Lccsansan/ds/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-wide p5, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:J

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:I

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    iget p1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/au/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v1, "attachment;filename="

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 8
    iget-object p1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/webkit/MimeTypeMap;->getSingleton()Lccsanandroid/webkit/MimeTypeMap;

    move-result-object v0

    iget-object v1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    .line 11
    :cond_2
    move-object v2, p1

    .line 14
    :goto_0
    iget-object p1, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->getDownloadedRecordByUrl:Lccsansan/ds/IncentiveDownloadUtils;

    invoke-static {v3}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ds/IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/FDWeb/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:J

    iget-object v5, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lccsansan/k/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:I

    return-void
.end method
