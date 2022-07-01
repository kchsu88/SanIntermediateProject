.class Lccsansan/ck/getDownloadingList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/ck/getDownloadingList$getDownloadingList;

.field final synthetic getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

.field final synthetic removeDownloadListener:Lccsansan/ck/getDownloadedRecordByUrl;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/ck/getDownloadingList;Lccsansan/ck/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->removeDownloadListener:Lccsansan/ck/getDownloadedRecordByUrl;

    iput-object p3, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    iput-object p5, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingList$getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(ZLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasNet handleAction onSuccess resolvedUrl :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.Action"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->removeDownloadListener:Lccsansan/ck/getDownloadedRecordByUrl;

    iget-object v0, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v2, v1, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-interface {p1, v0, v2, p2, v1}, Lccsansan/ck/getDownloadedRecordByUrl;->performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingList$getDownloadingList;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p1, Lccsansan/ck/unifiedDownload;->removeDownloadListener:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/ck/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ck/IncentiveDownloadUtils;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/ck/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingList$getDownloadingList;

    iget-boolean v1, p1, Lccsansan/ck/unifiedDownload;->unifiedDownload:Z

    iget-boolean p1, p1, Lccsansan/ck/unifiedDownload;->addDownloadListener:Z

    invoke-interface {v0, v1, p1, p2}, Lccsansan/ck/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method
