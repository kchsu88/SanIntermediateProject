.class final Lccsansan/cx/deleteDownItem$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cx/deleteDownItem$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsansan/cx/deleteDownItem$addDownloadListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsansan/cx/deleteDownItem$removeDownloadListener;->getDownloadingList(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingList(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
