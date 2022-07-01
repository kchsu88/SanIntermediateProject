.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;
.super Lccsancom/mbridge/msdk/video/module/a/a/f;
.source "MBTempContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    .line 1090
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 1093
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1096
    const-string p2, "type"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1097
    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1099
    packed-switch p2, :pswitch_data_0

    .line 1107
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    goto :goto_0

    .line 1104
    :pswitch_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->r:I

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 1105
    goto :goto_1

    .line 1101
    :pswitch_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->s:I

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 1102
    goto :goto_1

    .line 1107
    :goto_0
    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->q:I

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 1110
    :goto_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_0
    goto :goto_2

    .line 1112
    :catch_0
    move-exception p2

    .line 1113
    const-string p2, "NotifyListener"

    const-string v0, "PlayableResultListener ERROR"

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :goto_2
    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 1142
    :sswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1143
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object p1

    const/16 p2, 0x64

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/signal/e;->showEndcard(I)V

    .line 1144
    goto/16 :goto_3

    .line 1139
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->v(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1140
    goto :goto_3

    .line 1135
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->u(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    goto :goto_3

    .line 1118
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1119
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1120
    nop

    .line 1146
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    goto :goto_3

    .line 1122
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/c;->d()V

    .line 1124
    goto :goto_3

    .line 1127
    :sswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/c;->d()V

    .line 1128
    goto :goto_3

    .line 1130
    :sswitch_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1131
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->s(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1132
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a()V

    .line 1133
    nop

    .line 1149
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x78 -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method
