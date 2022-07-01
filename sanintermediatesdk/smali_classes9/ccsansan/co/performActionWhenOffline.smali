.class Lccsansan/co/performActionWhenOffline;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    const-string v1, "MoPubSkipText"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    const-string v1, "MoPubCtaText"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDownloadingList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/deleteDownItem;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    if-nez v1, :cond_0

    return-object v0

    .line 19
    :cond_0
    const-string v2, "Ad"

    invoke-interface {v1, v2}, Lccsanorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lccsanorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {v1}, Lccsanorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 21
    new-instance v3, Lccsansan/co/deleteDownItem;

    invoke-interface {v1, v2}, Lccsanorg/w3c/dom/NodeList;->item(I)Lccsanorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsansan/co/deleteDownItem;-><init>(Lccsanorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    const-string v1, "MoPubCloseIcon"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method removeDownloadListener()Lccsansan/co/shouldTryHandlingAction;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    const-string v2, "Error"

    invoke-static {v0, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 8
    :cond_1
    new-instance v1, Lccsansan/co/shouldTryHandlingAction;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method unifiedDownload()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    const-string v1, "MP_TRACKING_URL"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance v3, Lccsansan/co/shouldTryHandlingAction;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method unifiedDownload(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lccsanorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    const-string v0, "xmlString cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-string v0, "<\\?.*\\?>"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<MPMoVideoXMLDocRoot>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</MPMoVideoXMLDocRoot>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 13
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 14
    new-instance v1, Lccsanorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsanorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lccsanorg/xml/sax/InputSource;)Lccsanorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Document;

    return-void
.end method
