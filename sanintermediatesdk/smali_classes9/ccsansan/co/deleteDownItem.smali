.class Lccsansan/co/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final addDownloadListener:Lccsanorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/co/deleteDownItem;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Lccsansan/co/IncentiveSDK;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/deleteDownItem;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "InLine"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lccsansan/co/IncentiveSDK;

    invoke-direct {v1, v0}, Lccsansan/co/IncentiveSDK;-><init>(Lccsanorg/w3c/dom/Node;)V

    goto :goto_0

    .line 1
    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    return-object v1
.end method

.method addDownloadListener()Lccsansan/co/getActionType;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/deleteDownItem;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "Wrapper"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lccsansan/co/getActionType;

    invoke-direct {v1, v0}, Lccsansan/co/getActionType;-><init>(Lccsanorg/w3c/dom/Node;)V

    goto :goto_0

    .line 1
    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    return-object v1
.end method

.method getDownloadingList()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/deleteDownItem;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "sequence"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
