.class Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)[Lccsanandroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Lccsanandroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v5, p0, v3}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;Lccsanandroid/view/View;)V

    invoke-virtual {v4, v5}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    invoke-static {v3}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
