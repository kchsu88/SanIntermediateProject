.class Lccsansan/dk/unifiedDownload$getDownloadingList;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dk/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingList"
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/dk/unifiedDownload;


# direct methods
.method public constructor <init>(Lccsansan/dk/unifiedDownload;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dk/unifiedDownload$getDownloadingList;->getDownloadingList:Lccsansan/dk/unifiedDownload;

    .line 2
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 2
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lccsansan/dk/unifiedDownload$getDownloadingList;->getDownloadingList:Lccsansan/dk/unifiedDownload;

    invoke-static {p1}, Lccsansan/dk/unifiedDownload;->addDownloadListener(Lccsansan/dk/unifiedDownload;)V

    :goto_0
    return-void
.end method
