.class Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingRecordByUrl"
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

.field private addDownloadListener:Lccsanandroid/content/Context;

.field private getDownloadingList:I


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 6
    const/4 p1, -0x1

    iput p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:I

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 1

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    :cond_0
    return-void
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->resume(Lccsancom/san/mads/mraid/removeDownloadListener;)I

    move-result p1

    .line 8
    iget p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:I

    if-eq p1, p2, :cond_1

    .line 9
    iput p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:I

    .line 10
    iget-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {p2, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(I)V

    :cond_1
    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    :cond_0
    return-void
.end method
