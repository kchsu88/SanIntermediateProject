.class final Lccsancom/mbridge/msdk/videocommon/download/a$1;
.super Ljava/lang/Object;
.source "CampaignDownLoadTask.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;


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

    .line 618
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadComplete(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 5

    .line 632
    const-string p1, "CampaignDownLoadTask"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadComplete callback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->f(Lccsancom/mbridge/msdk/videocommon/download/a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->c(Lccsancom/mbridge/msdk/videocommon/download/a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/foundation/db/o;)Lccsancom/mbridge/msdk/foundation/db/o;

    .line 636
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g(Lccsancom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->f(Lccsancom/mbridge/msdk/videocommon/download/a;)J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;JI)J

    .line 638
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-nez v1, :cond_2

    .line 641
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/videocommon/download/a;->h(Lccsancom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->f(Lccsancom/mbridge/msdk/videocommon/download/a;)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v4, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(JZ)V

    .line 644
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/download/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    return-void

    .line 649
    :cond_1
    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    .line 648
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    const-string v1, "Video download complete but MD5 check failed"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->f(Lccsancom/mbridge/msdk/videocommon/download/a;)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(JZ)V

    .line 653
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/download/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 657
    :goto_1
    goto :goto_2

    .line 655
    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_2
    return-void
.end method

.method public final onDownloadError(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 1

    .line 662
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->i(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->i(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object p1

    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq p1, v0, :cond_1

    .line 663
    nop

    .line 664
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 665
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 667
    :cond_0
    const-string p1, "Video Download Error"

    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->j(Lccsancom/mbridge/msdk/videocommon/download/a;)V

    .line 668
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    const/4 v0, 0x3

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;ILjava/lang/String;)V

    .line 669
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    .line 671
    :cond_1
    return-void
.end method

.method public final onDownloadStart(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 6

    .line 621
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)I

    .line 622
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object p1

    if-nez p1, :cond_0

    .line 623
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/foundation/db/o;)Lccsancom/mbridge/msdk/foundation/db/o;

    .line 626
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->c(Lccsancom/mbridge/msdk/videocommon/download/a;)J

    move-result-wide v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->d(Lccsancom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a$1;->a:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->e(Lccsancom/mbridge/msdk/videocommon/download/a;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;JLjava/lang/String;I)J

    .line 627
    return-void
.end method
