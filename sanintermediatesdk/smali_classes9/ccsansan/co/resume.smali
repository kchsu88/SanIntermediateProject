.class public Lccsansan/co/resume;
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

    .line 4
    iput-object p1, p0, Lccsansan/co/resume;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method removeDownloadListener()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/getDownloadedCount;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lccsansan/co/resume;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    .line 5
    const-string v2, "Extension"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/w3c/dom/Node;

    .line 11
    new-instance v3, Lccsansan/co/getDownloadedCount;

    invoke-direct {v3, v2}, Lccsansan/co/getDownloadedCount;-><init>(Lccsanorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
