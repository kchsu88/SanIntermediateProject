.class Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cr/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private final addDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic getDownloadingList:Lccsansan/cr/addDownloadListener;

.field private final removeDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsansan/cr/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/cr/addDownloadListener;->unifiedDownload(Lccsansan/cr/addDownloadListener;Z)Z

    .line 2
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    invoke-static {v0}, Lccsansan/cr/addDownloadListener;->removeDownloadListener(Lccsansan/cr/addDownloadListener;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/cr/addDownloadListener$addDownloadListener;

    iget v3, v3, Lccsansan/cr/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/cr/addDownloadListener$addDownloadListener;

    iget v4, v4, Lccsansan/cr/addDownloadListener$addDownloadListener;->addDownloadListener:I

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsansan/cr/addDownloadListener$addDownloadListener;

    iget-object v5, v5, Lccsansan/cr/addDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/Integer;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cr/addDownloadListener$addDownloadListener;

    iget-object v1, v1, Lccsansan/cr/addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsanandroid/view/View;

    .line 9
    iget-object v6, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    invoke-static {v6}, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/cr/addDownloadListener;)Lccsansan/cr/addDownloadListener$removeDownloadListener;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3, v5}, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v1, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v3, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    invoke-static {v3}, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/cr/addDownloadListener;)Lccsansan/cr/addDownloadListener$removeDownloadListener;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    invoke-static {v0}, Lccsansan/cr/addDownloadListener;->unifiedDownload(Lccsansan/cr/addDownloadListener;)Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cr/addDownloadListener;

    invoke-static {v0}, Lccsansan/cr/addDownloadListener;->unifiedDownload(Lccsansan/cr/addDownloadListener;)Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Ljava/util/ArrayList;

    iget-object v2, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/util/List;Ljava/util/List;)V

    .line 21
    :cond_3
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
