.class Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/widget/TextProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/widget/TextProgressButton;


# direct methods
.method constructor <init>(Lccsancom/san/widget/TextProgressButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/widget/TextProgressButton;

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
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1300(Lccsancom/san/widget/TextProgressButton;)Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1300(Lccsancom/san/widget/TextProgressButton;)Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;->changedCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
