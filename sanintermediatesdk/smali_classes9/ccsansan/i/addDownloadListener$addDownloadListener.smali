.class Lccsansan/i/addDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/i/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/i/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/i/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/addDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/i/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/i/addDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/i/addDownloadListener;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lccsansan/i/addDownloadListener;->unifiedDownload:Z

    .line 2
    invoke-virtual {p1}, Lccsansan/i/addDownloadListener;->pause()V

    return-void
.end method
