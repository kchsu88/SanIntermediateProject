.class final Lccsansan/au/addDownloadListener$getDownloadedList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadedList;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadedList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-static {v0, v1}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    return-void
.end method
