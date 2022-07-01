.class public final Lccsancom/mbridge/msdk/video/module/a/a/h;
.super Lccsancom/mbridge/msdk/video/module/a/a/k;
.source "PlayableStatisticsOnNotifyListener.java"


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p8}, Lccsancom/mbridge/msdk/video/module/a/a/k;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    .line 17
    const-string v0, ""

    const/4 v1, 0x2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 28
    :sswitch_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/h;->a()V

    .line 29
    goto :goto_0

    .line 31
    :sswitch_1
    nop

    .line 32
    if-eqz p2, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 35
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a/h;->a(ILjava/lang/String;)V

    .line 36
    goto :goto_0

    .line 38
    :sswitch_2
    nop

    .line 39
    if-eqz p2, :cond_1

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 40
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 42
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a/h;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 25
    :sswitch_3
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/h;->b(I)V

    .line 26
    goto :goto_0

    .line 19
    :sswitch_4
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/h;->g()V

    .line 20
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/h;->f()V

    .line 21
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/h;->e()V

    .line 22
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/h;->a(I)V

    .line 23
    nop

    .line 45
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/k;->a(ILjava/lang/Object;)V

    .line 46
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x6d -> :sswitch_3
        0x76 -> :sswitch_2
        0x77 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
