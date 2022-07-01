.class public Lccsancom/mbridge/msdk/video/module/a/a/a;
.super Lccsancom/mbridge/msdk/video/module/a/a/f;
.source "CommonContainerNotifyListener.java"


# instance fields
.field private a:Lccsanandroid/app/Activity;

.field private b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    .line 17
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->a:Lccsanandroid/app/Activity;

    .line 18
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 19
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 23
    const-string v0, "-999"

    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 24
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 26
    :pswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->a:Lccsanandroid/app/Activity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 28
    :try_start_0
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-direct {p1}, Lccsanandroid/content/Intent;-><init>()V

    .line 29
    const-string p2, "android.intent.action.VIEW"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 30
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, v0}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 31
    nop

    .line 32
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 35
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->a:Lccsanandroid/app/Activity;

    invoke-virtual {p2, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotifyListener"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/a;->a:Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    .line 45
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
    .end packed-switch
.end method
