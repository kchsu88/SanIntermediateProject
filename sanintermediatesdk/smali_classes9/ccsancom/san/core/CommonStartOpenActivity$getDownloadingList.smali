.class Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Intent;

.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/core/CommonStartOpenActivity;JLjava/lang/String;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Intent;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-class v1, Lccsancom/san/core/CommonStartOpenActivity;

    invoke-direct {p1, v0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    const-string v1, "pkg"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 3
    const-string v0, "portal"

    const-string v1, "cpi_protect1"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 4
    iget-object v0, p0, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Intent;

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 5
    iget-object v0, p0, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    return-void
.end method

.method public execute()V
    .locals 0

    return-void
.end method
