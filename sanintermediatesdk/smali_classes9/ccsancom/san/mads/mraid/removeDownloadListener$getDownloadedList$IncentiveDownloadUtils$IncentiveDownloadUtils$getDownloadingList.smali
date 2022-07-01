.class Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;

.field final synthetic removeDownloadListener:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;

    iput-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)V

    const/4 v0, 0x1

    return v0
.end method
