.class public Lccsansan/co/execute;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final unifiedDownload:Lccsanorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "mediaNode cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addDownloadListener()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method removeDownloadListener()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "bitrate"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "minBitrate"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v2, "maxBitrate"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public unifiedDownload()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/execute;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
