.class final Lccsancom/san/core/unifiedDownload$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/unifiedDownload;->addDownloadListener(Lccsancom/san/api/SanAdSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/bw/execute;->IncentiveDownloadUtils()V

    return-void
.end method
