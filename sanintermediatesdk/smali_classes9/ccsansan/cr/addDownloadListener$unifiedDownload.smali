.class Lccsansan/cr/addDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cr/addDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/util/Map;Lccsansan/cr/addDownloadListener$removeDownloadListener;Lccsanandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/cr/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cr/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cr/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cr/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/cr/addDownloadListener;->unifiedDownload()V

    const/4 v0, 0x1

    return v0
.end method
