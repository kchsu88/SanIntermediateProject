.class Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->addDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
