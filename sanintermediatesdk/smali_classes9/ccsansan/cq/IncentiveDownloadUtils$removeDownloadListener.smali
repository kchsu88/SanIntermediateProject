.class Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cq/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cq/IncentiveDownloadUtils;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/cq/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cq/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cq/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(ZZ)I

    move-result p1

    const-string p2, "cardbutton"

    invoke-virtual {v0, v1, p2, p1}, Lccsansan/cq/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
