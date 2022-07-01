.class Lccsansan/cf/addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cf/addDownloadListener;->onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/cf/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cf/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cf/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cf/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cf/addDownloadListener;

    invoke-static {p1}, Lccsansan/cf/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/cf/addDownloadListener;)V

    .line 2
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cf/addDownloadListener;

    invoke-virtual {p1}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->addDownloadListener()V

    return-void
.end method
