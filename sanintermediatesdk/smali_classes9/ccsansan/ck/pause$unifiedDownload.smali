.class Lccsansan/ck/pause$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/pause;-><init>(Ljava/util/Map;Ljava/util/Map;Lccsansan/cr/addDownloadListener$removeDownloadListener;Lccsansan/cr/addDownloadListener;Lccsanandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/ck/pause;


# direct methods
.method constructor <init>(Lccsansan/ck/pause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 5
    iget-object v1, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v1}, Lccsansan/ck/pause;->removeDownloadListener(Lccsansan/ck/pause;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/ck/getDownloadStatusByUrl;

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-virtual {v1, v0}, Lccsansan/ck/pause;->removeDownloadListener(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v2}, Lccsansan/ck/pause;->getDownloadingList(Lccsansan/ck/pause;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/ck/resume;

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, v2, Lccsansan/ck/resume;->unifiedDownload:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v2, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v2}, Lccsansan/ck/pause;->getDownloadingList(Lccsansan/ck/pause;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lccsansan/ck/resume;

    invoke-direct {v3, v1}, Lccsansan/ck/resume;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 22
    iget-object v0, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v0}, Lccsansan/ck/pause;->getDownloadingList(Lccsansan/ck/pause;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_3
    iget-object p1, p0, Lccsansan/ck/pause$unifiedDownload;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-virtual {p1}, Lccsansan/ck/pause;->getDownloadingList()V

    return-void
.end method
