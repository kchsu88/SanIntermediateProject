.class Lccsansan/ck/getDownloadingCount$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadingList$getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/getDownloadingCount;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/ck/getDownloadingCount;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Lccsansan/ck/IncentiveDownloadUtils;

.field final synthetic unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ck/getDownloadingCount;Lccsansan/ck/getDownloadingCount$addDownloadListener;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingCount;

    iput-object p2, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    iput-object p3, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->removeDownloadListener:Lccsansan/ck/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(ZZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute handle deepLinkAction success :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.Mads.Executor"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingCount;

    invoke-static {p1, v0}, Lccsansan/ck/getDownloadingCount;->getDownloadingList(Lccsansan/ck/getDownloadingCount;Z)Z

    .line 4
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x1

    invoke-interface {p1, v1, p2, p3, v0}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->unifiedDownload(ZZLjava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    invoke-interface {p1, v1, p2, p3}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1, v0, p2, p3}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingCount;

    iget-object p2, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object p3, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->removeDownloadListener:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v0, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    invoke-static {p1, p2, p3, v0}, Lccsansan/ck/getDownloadingCount;->unifiedDownload(Lccsansan/ck/getDownloadingCount;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 17
    :cond_3
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingCount;

    iget-object p2, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object p3, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->removeDownloadListener:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v0, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    invoke-static {p1, p2, p3, v0}, Lccsansan/ck/getDownloadingCount;->removeDownloadListener(Lccsansan/ck/getDownloadingCount;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 21
    :cond_4
    iget-object p1, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->addDownloadListener:Lccsansan/ck/getDownloadingCount;

    iget-object p2, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object p3, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->removeDownloadListener:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v0, p0, Lccsansan/ck/getDownloadingCount$removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadingCount$addDownloadListener;

    invoke-static {p1, p2, p3, v0}, Lccsansan/ck/getDownloadingCount;->getDownloadingList(Lccsansan/ck/getDownloadingCount;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    return-void
.end method
