.class Lccsancom/san/mads/mraid/IncentiveDownloadUtils$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsansan/co/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroid/view/GestureDetector;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    .line 3
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lccsanandroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
