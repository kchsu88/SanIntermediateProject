.class Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/br/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "unifiedDownload"
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/br/IncentiveDownloadUtils;


# direct methods
.method private constructor <init>(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsansan/br/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/br/IncentiveDownloadUtils;Lccsansan/br/IncentiveDownloadUtils$removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/br/IncentiveDownloadUtils;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
