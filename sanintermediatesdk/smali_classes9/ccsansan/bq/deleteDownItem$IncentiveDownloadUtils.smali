.class Lccsansan/bq/deleteDownItem$IncentiveDownloadUtils;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bq/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private removeDownloadListener:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bq/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Lccsanandroid/os/Message;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->dispatchMessage(Lccsanandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    return-void
.end method
