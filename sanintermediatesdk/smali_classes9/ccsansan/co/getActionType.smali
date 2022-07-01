.class Lccsansan/co/getActionType;
.super Lccsansan/co/getDownloadedList;
.source ""


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/co/getDownloadedList;-><init>(Lccsanorg/w3c/dom/Node;)V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/getDownloadedList;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "VASTAdTagURI"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
