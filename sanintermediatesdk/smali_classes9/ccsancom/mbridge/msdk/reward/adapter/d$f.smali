.class final Lccsancom/mbridge/msdk/reward/adapter/d$f;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lccsancom/mbridge/msdk/videocommon/a$a;

.field private f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:Z

.field private h:Z

.field private i:Lccsancom/mbridge/msdk/reward/adapter/d$c;

.field private j:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/reward/adapter/d$c;Lccsanandroid/os/Handler;)V
    .locals 0

    .line 843
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    .line 844
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 845
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->c:Ljava/lang/String;

    .line 846
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->d:Ljava/lang/String;

    .line 847
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->e:Lccsancom/mbridge/msdk/videocommon/a$a;

    .line 849
    if-eqz p6, :cond_0

    .line 850
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 852
    :cond_0
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 853
    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->i:Lccsancom/mbridge/msdk/reward/adapter/d$c;

    .line 854
    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->j:Lccsanandroid/os/Handler;

    .line 855
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 2

    .line 859
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->h:Z

    if-nez p1, :cond_6

    .line 860
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->i:Lccsancom/mbridge/msdk/reward/adapter/d$c;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->j:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_0

    .line 861
    invoke-virtual {p2, p1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 864
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 865
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->e:Lccsancom/mbridge/msdk/videocommon/a$a;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 866
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 868
    :cond_1
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 870
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p2, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 871
    const-string v1, "id"

    invoke-virtual {p2, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 872
    const-string p1, "unitid"

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->d:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_0

    .line 873
    :catch_0
    move-exception p1

    .line 874
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 876
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 878
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->d:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    .line 880
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->m(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 881
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 882
    const/16 p1, 0x11f

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->e:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {p1, p2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 885
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 886
    const/16 p1, 0x5e

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->e:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {p1, p2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 891
    :cond_3
    :goto_1
    :try_start_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p1, :cond_5

    .line 892
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 893
    :try_start_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 894
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 895
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object p2

    .line 896
    const/4 v1, 0x6

    iput v1, p2, Lccsanandroid/os/Message;->what:I

    .line 897
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v1, p2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 898
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 899
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 900
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 903
    :cond_4
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 907
    :cond_5
    :goto_2
    goto :goto_3

    .line 905
    :catchall_1
    move-exception p1

    .line 906
    const-string p2, "WindVaneWebView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 908
    :goto_3
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->h:Z

    .line 910
    :cond_6
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 923
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 925
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p1, :cond_0

    .line 926
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 927
    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2, p3, p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 929
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

    .line 933
    :cond_0
    :goto_0
    goto :goto_1

    .line 931
    :catchall_1
    move-exception p1

    .line 932
    const-string p2, "WindVaneWebView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 934
    :goto_1
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 914
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 915
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->g:Z

    if-nez p2, :cond_0

    .line 916
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V

    .line 917
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$f;->g:Z

    .line 919
    :cond_0
    return-void
.end method
