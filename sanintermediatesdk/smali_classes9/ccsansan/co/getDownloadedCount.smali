.class public Lccsansan/co/getDownloadedCount;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final unifiedDownload:Lccsanorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lccsansan/co/getDownloadedCount;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method addDownloadListener()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/getDownloadedCount;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "AVID"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lccsansan/co/getDownloadingList;

    invoke-direct {v1, v0}, Lccsansan/co/getDownloadingList;-><init>(Lccsanorg/w3c/dom/Node;)V

    invoke-virtual {v1}, Lccsansan/co/getDownloadingList;->getDownloadingList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getDownloadingList()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/getDownloadedCount;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "AdVerifications"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    const-string v2, "Moat"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 8
    const-string v3, "Verification"

    const-string v4, "vendor"

    invoke-static {v0, v3, v4, v2}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Lccsansan/co/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/co/IncentiveDownloadUtils;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lccsansan/co/IncentiveDownloadUtils;->getDownloadingList()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method
