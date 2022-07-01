.class Lccsansan/ad/removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ad/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/ad/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ad/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ad/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/ad/removeDownloadListener;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ad/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/ad/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ad/removeDownloadListener;->removeDownloadListener(Lccsansan/ad/removeDownloadListener;)V

    return-void
.end method
