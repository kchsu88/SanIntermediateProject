.class final Lccsancom/mbridge/msdk/reward/adapter/d$a;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/a;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lccsancom/mbridge/msdk/videocommon/a$a;

.field private e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private f:Z

.field private g:Z

.field private h:Lccsancom/mbridge/msdk/reward/adapter/d$b;

.field private i:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/reward/adapter/d$b;Lccsanandroid/os/Handler;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;-><init>()V

    .line 718
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->b:Ljava/lang/String;

    .line 719
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->c:Ljava/lang/String;

    .line 720
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->d:Lccsancom/mbridge/msdk/videocommon/a$a;

    .line 722
    if-eqz p5, :cond_0

    .line 723
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 725
    :cond_0
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 726
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->h:Lccsancom/mbridge/msdk/reward/adapter/d$b;

    .line 727
    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->i:Lccsanandroid/os/Handler;

    .line 728
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 3

    .line 732
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->g:Z

    if-nez p1, :cond_8

    .line 733
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->h:Lccsancom/mbridge/msdk/reward/adapter/d$b;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->i:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_0

    .line 734
    invoke-virtual {p2, p1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 737
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->d:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p1, :cond_1

    .line 740
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 744
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    .line 745
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 746
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 747
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p2

    .line 748
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 749
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 750
    nop

    .line 751
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 754
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    :goto_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->m(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 757
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 758
    const/16 p2, 0x11f

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->d:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {p2, v1, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_2

    .line 761
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 762
    const/16 p2, 0x5e

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->d:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {p2, v1, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 767
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 771
    :cond_5
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p1, :cond_7

    .line 772
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 773
    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 774
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 775
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object p2

    .line 776
    const/4 v1, 0x6

    iput v1, p2, Lccsanandroid/os/Message;->what:I

    .line 777
    const-string v1, "RVWindVaneWebView"

    const-string v2, "WHAT_ON_RES_LOAD_SUCCESS TPL"

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v1, p2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 779
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 780
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 781
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 784
    :cond_6
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 788
    :cond_7
    :goto_3
    goto :goto_4

    .line 786
    :catchall_1
    move-exception p1

    .line 787
    const-string p2, "RVWindVaneWebView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    :goto_4
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->g:Z

    .line 791
    :cond_8
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 814
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 816
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p1, :cond_0

    .line 817
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 818
    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2, p3, p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 820
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 824
    :cond_0
    :goto_0
    goto :goto_1

    .line 822
    :catchall_1
    move-exception p1

    .line 823
    const-string p2, "RVWindVaneWebView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 825
    :goto_1
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 806
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->f:Z

    if-nez p2, :cond_0

    .line 807
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V

    .line 808
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$a;->f:Z

    .line 810
    :cond_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 795
    return-void
.end method
