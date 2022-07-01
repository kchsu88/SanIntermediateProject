.class Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getDownloadedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field private final addDownloadListener:Lccsanandroid/os/Handler;

.field private unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->addDownloadListener:Lccsanandroid/os/Handler;

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    :cond_0
    return-void
.end method

.method varargs removeDownloadListener([Lccsanandroid/view/View;)Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;
    .locals 3

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->addDownloadListener:Lccsanandroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsanandroid/os/Handler;[Lccsanandroid/view/View;Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;)V

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    return-object v0
.end method
