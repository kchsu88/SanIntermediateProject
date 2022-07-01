.class Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/common/offline/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "removeDownloadListener"
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/common/offline/addDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/common/offline/addDownloadListener;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsancom/san/common/offline/addDownloadListener;

    .line 2
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsancom/san/common/offline/addDownloadListener;

    invoke-static {p1}, Lccsancom/san/common/offline/addDownloadListener;->addDownloadListener(Lccsancom/san/common/offline/addDownloadListener;)V

    :goto_0
    return-void
.end method
