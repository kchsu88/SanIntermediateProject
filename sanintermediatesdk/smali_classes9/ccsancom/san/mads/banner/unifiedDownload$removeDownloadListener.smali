.class Lccsancom/san/mads/banner/unifiedDownload$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/banner/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/banner/unifiedDownload;


# direct methods
.method constructor <init>(Lccsancom/san/mads/banner/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/unifiedDownload$removeDownloadListener;->getDownloadingList:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$removeDownloadListener;->getDownloadingList:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-virtual {v0}, Lccsancom/san/mads/banner/unifiedDownload;->IncentiveDownloadUtils()V

    const/4 v0, 0x1

    return v0
.end method
