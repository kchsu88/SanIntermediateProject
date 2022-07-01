.class Lccsansan/a/getDownloadingList$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/a/getDownloadingList$removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/a/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/a/getDownloadingList$removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/a/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/bw/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/a/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, v0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1, v2, v0}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
