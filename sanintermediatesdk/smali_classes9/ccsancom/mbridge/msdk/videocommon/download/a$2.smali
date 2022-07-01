.class final Lccsancom/mbridge/msdk/videocommon/download/a$2;
.super Ljava/lang/Object;
.source "CampaignDownLoadTask.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/videocommon/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/videocommon/download/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgress(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V
    .locals 4

    .line 678
    const-string v0, "CampaignDownLoadTask"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrent()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;J)J

    .line 679
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;->getTotal()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/download/a;J)J

    .line 680
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrentDownloadRate()I

    move-result v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->c(Lccsancom/mbridge/msdk/videocommon/download/a;I)I

    .line 682
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->k(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 683
    return-void

    .line 685
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrentDownloadRate()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->k(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrentDownloadRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ReadyRate & cdRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->k(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->l(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->m(Lccsancom/mbridge/msdk/videocommon/download/a;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 688
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;Z)Z

    .line 690
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->n(Lccsancom/mbridge/msdk/videocommon/download/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 691
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/download/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrent()J

    move-result-wide v2

    const/4 p2, 0x0

    invoke-virtual {v1, v2, v3, p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(JZ)V

    .line 695
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->i(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 696
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->l(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->k(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 697
    return-void

    .line 699
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->n(Lccsancom/mbridge/msdk/videocommon/download/a;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 700
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$2;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->i(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->cancel(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_3
    goto :goto_0

    .line 705
    :catch_0
    move-exception p1

    .line 706
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void
.end method
