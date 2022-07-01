.class public Lccsansan/cx/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cx/deleteDownItem$addDownloadListener;
    }
.end annotation


# direct methods
.method public static IncentiveDownloadUtils(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lccsansan/cx/deleteDownItem$unifiedDownload;

    invoke-direct {v0}, Lccsansan/cx/deleteDownItem$unifiedDownload;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/cx/deleteDownItem$addDownloadListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lccsanorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getFirstChild()Lccsanorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getFirstChild()Lccsanorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lccsanorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getFirstChild()Lccsanorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/cx/deleteDownItem$addDownloadListener;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsansan/cx/deleteDownItem$addDownloadListener<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Lccsanorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lccsanorg/w3c/dom/NodeList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 20
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    nop

    .line 22
    :goto_1
    invoke-interface {p0}, Lccsanorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 23
    invoke-interface {p0, p1}, Lccsanorg/w3c/dom/NodeList;->item(I)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    invoke-static {v1, p2, p3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    invoke-interface {p4, v1}, Lccsansan/cx/deleteDownItem$addDownloadListener;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lccsanorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanorg/w3c/dom/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanorg/w3c/dom/Node;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getChildNodes()Lccsanorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Lccsanorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p0, v1}, Lccsanorg/w3c/dom/NodeList;->item(I)Lccsanorg/w3c/dom/Node;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lccsanorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2, p2, p3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getAttributes()Lccsanorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1}, Lccsanorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/cx/deleteDownItem$addDownloadListener;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsansan/cx/deleteDownItem$addDownloadListener<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 19
    :cond_0
    invoke-interface {p0, p1}, Lccsanorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lccsanorg/w3c/dom/NodeList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    if-nez p3, :cond_2

    move-object p3, v0

    goto :goto_0

    .line 24
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    nop

    .line 26
    :goto_1
    invoke-interface {p0}, Lccsanorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 27
    invoke-interface {p0, p1}, Lccsanorg/w3c/dom/NodeList;->item(I)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {v1, p2, p3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 30
    invoke-interface {p4, v1}, Lccsansan/cx/deleteDownItem$addDownloadListener;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Lccsansan/cx/deleteDownItem$removeDownloadListener;

    invoke-direct {v0}, Lccsansan/cx/deleteDownItem$removeDownloadListener;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/cx/deleteDownItem$addDownloadListener;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getAttributes()Lccsanorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 12
    invoke-interface {p0, p1}, Lccsanorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 18
    invoke-interface {p0}, Lccsanorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method
