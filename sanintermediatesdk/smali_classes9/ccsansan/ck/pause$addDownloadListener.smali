.class Lccsansan/ck/pause$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ck/pause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "addDownloadListener"
.end annotation


# instance fields
.field private final getDownloadingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic removeDownloadListener:Lccsansan/ck/pause;


# direct methods
.method constructor <init>(Lccsansan/ck/pause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/pause$addDownloadListener;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsansan/ck/pause$addDownloadListener;->getDownloadingList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/ck/pause$addDownloadListener;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v0}, Lccsansan/ck/pause;->getDownloadingList(Lccsansan/ck/pause;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/ck/resume;

    .line 6
    iget-object v3, p0, Lccsansan/ck/pause$addDownloadListener;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v3}, Lccsansan/ck/pause;->unifiedDownload(Lccsansan/ck/pause;)Lccsansan/cr/addDownloadListener$removeDownloadListener;

    move-result-object v3

    iget-wide v4, v1, Lccsansan/ck/resume;->IncentiveDownloadUtils:J

    iget-object v6, v1, Lccsansan/ck/resume;->unifiedDownload:Ljava/lang/Object;

    check-cast v6, Lccsansan/ck/getDownloadStatusByUrl;

    .line 8
    invoke-interface {v6}, Lccsansan/ck/getDownloadStatusByUrl;->addDownloadListener()I

    move-result v6

    .line 9
    invoke-virtual {v3, v4, v5, v6}, Lccsansan/cr/addDownloadListener$removeDownloadListener;->removeDownloadListener(JI)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, v1, Lccsansan/ck/resume;->unifiedDownload:Ljava/lang/Object;

    check-cast v3, Lccsansan/ck/getDownloadStatusByUrl;

    invoke-interface {v3, v2}, Lccsansan/ck/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/view/View;)V

    .line 16
    iget-object v1, v1, Lccsansan/ck/resume;->unifiedDownload:Ljava/lang/Object;

    check-cast v1, Lccsansan/ck/getDownloadStatusByUrl;

    invoke-interface {v1}, Lccsansan/ck/getDownloadStatusByUrl;->removeDownloadListener()V

    .line 19
    iget-object v1, p0, Lccsansan/ck/pause$addDownloadListener;->getDownloadingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lccsansan/ck/pause$addDownloadListener;->getDownloadingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 23
    iget-object v2, p0, Lccsansan/ck/pause$addDownloadListener;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-virtual {v2, v1}, Lccsansan/ck/pause;->removeDownloadListener(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p0, Lccsansan/ck/pause$addDownloadListener;->getDownloadingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lccsansan/ck/pause$addDownloadListener;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-static {v0}, Lccsansan/ck/pause;->getDownloadingList(Lccsansan/ck/pause;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    iget-object v0, p0, Lccsansan/ck/pause$addDownloadListener;->removeDownloadListener:Lccsansan/ck/pause;

    invoke-virtual {v0}, Lccsansan/ck/pause;->getDownloadingList()V

    :cond_3
    return-void
.end method
