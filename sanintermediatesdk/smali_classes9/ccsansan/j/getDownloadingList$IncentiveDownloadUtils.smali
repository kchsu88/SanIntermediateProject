.class Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/j/getDownloadingList;->removeDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/j/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/j/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Lccsanandroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceTextureAvailable() hashCode\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaView.Native"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-static {p1}, Lccsansan/j/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/j/getDownloadingList;)Lccsansan/dg/unifiedDownload;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-static {p1}, Lccsansan/j/getDownloadingList;->addDownloadListener(Lccsansan/j/getDownloadingList;)Lccsanandroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-static {p1}, Lccsansan/j/getDownloadingList;->getDownloadingList(Lccsansan/j/getDownloadingList;)Lccsanandroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-static {p1}, Lccsansan/j/getDownloadingList;->unifiedDownload(Lccsansan/j/getDownloadingList;)Lccsansan/dg/unifiedDownload;

    move-result-object p1

    iget-object p3, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-static {p3}, Lccsansan/j/getDownloadingList;->removeDownloadListener(Lccsansan/j/getDownloadingList;)Lccsanandroid/view/TextureView;

    move-result-object p3

    invoke-virtual {p1, p3}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsanandroid/view/TextureView;)V

    .line 5
    iget-object p1, p0, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-virtual {p1}, Lccsansan/j/getDownloadingList;->IncentiveDownloadUtils()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailable setSurfaceTexture error : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Lccsanandroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Lccsanandroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Lccsanandroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
