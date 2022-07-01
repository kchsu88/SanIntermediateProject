.class Lccsansan/ba/addDownloadListener$IncentiveDownloadUtils;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ba/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/ba/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ba/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ba/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ba/addDownloadListener;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getData()Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u5b89\u88c5\u6210\u529f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pkgReceive: "

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lccsansan/ba/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ba/addDownloadListener;

    invoke-static {p2, p1}, Lccsansan/ba/addDownloadListener;->removeDownloadListener(Lccsansan/ba/addDownloadListener;Ljava/lang/String;)V

    return-void
.end method
