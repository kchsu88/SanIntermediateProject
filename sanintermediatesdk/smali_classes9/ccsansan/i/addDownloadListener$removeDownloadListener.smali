.class Lccsansan/i/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/i/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/i/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/i/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

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

    iget-object p2, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaView.Base"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

    iget-object p3, p1, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

    iget-object p3, p1, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    iget-object p1, p1, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    invoke-virtual {p3, p1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsanandroid/view/TextureView;)V

    .line 5
    iget-object p1, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils()V
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
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureDestroyed()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaView.Base"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

    iget-object p1, p1, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsanandroid/view/TextureView;)V

    .line 3
    iget-object p1, p0, Lccsansan/i/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/i/addDownloadListener;

    invoke-static {p1}, Lccsansan/i/addDownloadListener;->addDownloadListener(Lccsansan/i/addDownloadListener;)V

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
