.class final Lccsansan/ab/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ab/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/ab/removeDownloadListener;->getDownloadingList()Lccsansan/bu/getDownloadingList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lccsansan/ab/removeDownloadListener;->getDownloadingList()Lccsansan/bu/getDownloadingList;

    move-result-object p1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/bu/getDownloadingList;->removeDownloadListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
