.class Lccsancom/san/mads/base/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/base/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/base/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/base/removeDownloadListener;)V

    return-void
.end method
