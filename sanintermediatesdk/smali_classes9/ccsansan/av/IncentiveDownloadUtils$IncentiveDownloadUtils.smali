.class Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/av/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/av/IncentiveDownloadUtils;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/av/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0, v1}, Lccsansan/av/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/av/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V

    return-void
.end method
