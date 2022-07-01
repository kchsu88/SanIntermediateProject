.class Lccsansan/j/unifiedDownload$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/j/unifiedDownload;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/j/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/j/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;->a(ZZ)V

    return-void
.end method
