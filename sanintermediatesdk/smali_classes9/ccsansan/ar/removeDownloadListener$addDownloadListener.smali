.class Lccsansan/ar/removeDownloadListener$addDownloadListener;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ar/removeDownloadListener;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/ar/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ar/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ar/removeDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsansan/ar/removeDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    sget-object p2, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONNECTED:Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v0, "started_net_change"

    invoke-virtual {p1, p2, v0}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
