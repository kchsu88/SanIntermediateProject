.class Lccsansan/ba/addDownloadListener$getDownloadingList;
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
.field final synthetic getDownloadingList:Lccsansan/ba/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ba/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ba/addDownloadListener$getDownloadingList;->getDownloadingList:Lccsansan/ba/addDownloadListener;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lccsansan/ba/addDownloadListener$getDownloadingList;->getDownloadingList:Lccsansan/ba/addDownloadListener;

    invoke-static {p2}, Lccsansan/ba/addDownloadListener;->getDownloadingList(Lccsansan/ba/addDownloadListener;)Lccsansan/ba/addDownloadListener$removeDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lccsansan/ba/addDownloadListener$getDownloadingList;->getDownloadingList:Lccsansan/ba/addDownloadListener;

    invoke-static {p2}, Lccsansan/ba/addDownloadListener;->getDownloadingList(Lccsansan/ba/addDownloadListener;)Lccsansan/ba/addDownloadListener$removeDownloadListener;

    move-result-object p2

    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2, v0}, Lccsansan/ba/addDownloadListener$removeDownloadListener;->addDownloadListener(Z)V

    .line 7
    :cond_2
    iget-object p2, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lccsansan/ba/addDownloadListener$getDownloadingList;->getDownloadingList:Lccsansan/ba/addDownloadListener;

    iget-object p1, p1, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lccsansan/br/IncentiveDownloadUtils;->resume()V

    :cond_4
    return-void
.end method
