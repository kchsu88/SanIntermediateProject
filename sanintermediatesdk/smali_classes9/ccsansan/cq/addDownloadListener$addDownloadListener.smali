.class Lccsansan/cq/addDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cq/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/cq/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cq/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cq/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/cq/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cq/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/cq/addDownloadListener;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/cq/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method
