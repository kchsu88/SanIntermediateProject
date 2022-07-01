.class Lccsansan/i/getDownloadingList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/co/ActionTypeReserveApp$getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/i/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/co/getDownloadedRecordByUrl;)Lccsansan/co/ActionTypeReserveApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/i/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/i/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/i/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/i/getDownloadingList;

    invoke-static {v0}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/i/getDownloadingList$removeDownloadListener;->unifiedDownload:Lccsansan/i/getDownloadingList;

    invoke-static {v0}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/i/getDownloadingList$unifiedDownload;->addDownloadListener()V

    :cond_0
    return-void
.end method
