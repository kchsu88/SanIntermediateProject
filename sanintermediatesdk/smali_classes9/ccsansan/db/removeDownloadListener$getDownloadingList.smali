.class Lccsansan/db/removeDownloadListener$getDownloadingList;
.super Lccsansan/i/getDownloadedRecordByUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/db/removeDownloadListener;->getDownloadingList(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/i/deleteDownItem;

.field final synthetic unifiedDownload:Lccsansan/db/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/db/removeDownloadListener;Lccsansan/i/deleteDownItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/db/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsansan/db/removeDownloadListener;

    iput-object p2, p0, Lccsansan/db/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/i/deleteDownItem;

    invoke-direct {p0}, Lccsansan/i/getDownloadedRecordByUrl;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsansan/db/removeDownloadListener;

    invoke-static {v0}, Lccsansan/db/removeDownloadListener;->removeDownloadListener(Lccsansan/db/removeDownloadListener;)Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lccsansan/db/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsansan/db/removeDownloadListener;

    invoke-static {v0}, Lccsansan/db/removeDownloadListener;->getDownloadingList(Lccsansan/db/removeDownloadListener;)Lccsanandroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onSurfaceTextureAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/i/deleteDownItem;

    invoke-virtual {v0}, Lccsansan/i/addDownloadListener;->pause()V

    .line 2
    iget-object v0, p0, Lccsansan/db/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/i/deleteDownItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    return-void
.end method
