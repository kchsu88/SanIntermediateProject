.class Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownList$getDownloadingList;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/deleteDownList$getDownloadingList;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/cy/deleteDownList$getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/deleteDownList$getDownloadingList;

    iput-object p3, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/deleteDownList$getDownloadingList;

    iget-object v3, v2, Lccsansan/cy/deleteDownList$getDownloadingList;->addDownloadListener:Lccsansan/cy/pause;

    iget-object v2, v2, Lccsansan/cy/deleteDownList$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lccsansan/cy/deleteDownList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lccsansan/cy/deleteDownList$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/deleteDownList$getDownloadingList;

    iget-object v1, v1, Lccsansan/cy/deleteDownList$getDownloadingList;->removeDownloadListener:Lccsansan/cy/deleteDownList$addDownloadListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lccsansan/cy/deleteDownList$addDownloadListener;->a(Z)V

    :cond_0
    return-void
.end method
