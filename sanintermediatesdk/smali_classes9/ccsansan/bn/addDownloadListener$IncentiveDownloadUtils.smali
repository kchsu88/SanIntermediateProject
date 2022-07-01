.class final Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

    iput-object p4, p0, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

    iget-object v2, p0, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V

    return-void
.end method
