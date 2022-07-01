.class Lccsansan/i/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/i/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/i/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/i/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsansan/i/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-static {p1}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/i/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-static {p1}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object p1

    invoke-interface {p1}, Lccsansan/i/getDownloadingList$unifiedDownload;->addDownloadListener()V

    :cond_0
    return-void
.end method
