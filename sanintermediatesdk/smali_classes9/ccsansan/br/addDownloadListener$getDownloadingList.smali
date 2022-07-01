.class Lccsansan/br/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/br/addDownloadListener;->onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/br/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/br/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/br/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/br/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/br/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/br/addDownloadListener;

    invoke-static {v0}, Lccsansan/br/addDownloadListener;->addDownloadListener(Lccsansan/br/addDownloadListener;)Lccsansan/br/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getProgress()I

    move-result v0

    .line 2
    iget-object v1, p0, Lccsansan/br/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/br/addDownloadListener;

    invoke-static {v1, v0}, Lccsansan/br/addDownloadListener;->addDownloadListener(Lccsansan/br/addDownloadListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/br/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/br/addDownloadListener;

    invoke-static {v0}, Lccsansan/br/addDownloadListener;->removeDownloadListener(Lccsansan/br/addDownloadListener;)V

    .line 4
    iget-object v0, p0, Lccsansan/br/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/br/addDownloadListener;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lccsansan/br/addDownloadListener;->removeDownloadListener(Lccsansan/br/addDownloadListener;I)V

    :cond_0
    return-void
.end method
