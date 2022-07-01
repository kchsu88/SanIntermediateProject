.class Lccsansan/cy/resume$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/resume;->addDownloadListener(JLccsansan/m/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/resume;

.field final synthetic removeDownloadListener:Lccsansan/m/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cy/resume;JLccsansan/m/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/resume$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/resume;

    iput-object p4, p0, Lccsansan/cy/resume$addDownloadListener;->removeDownloadListener:Lccsansan/m/removeDownloadListener;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cy/resume$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/resume;

    iget-object v1, p0, Lccsansan/cy/resume$addDownloadListener;->removeDownloadListener:Lccsansan/m/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/cy/resume;->removeDownloadListener(Lccsansan/cy/resume;Lccsansan/m/removeDownloadListener;)V

    return-void
.end method
