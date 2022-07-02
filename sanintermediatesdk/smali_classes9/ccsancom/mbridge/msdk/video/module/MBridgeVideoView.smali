.class public Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeVideoView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;,
        Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;
    }
.end annotation


# static fields
.field private static P:Z

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I


# instance fields
.field private A:Lccsancom/mbridge/msdk/widget/dialog/a;

.field private B:Ljava/lang/String;

.field private C:D

.field private D:D

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:I

.field private O:Z

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Lccsanandroid/view/animation/AlphaAnimation;

.field private ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

.field private ah:Z

.field private o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

.field private p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

.field private q:Lccsanandroid/widget/TextView;

.field private r:Lccsanandroid/view/View;

.field private s:Lccsanandroid/widget/FrameLayout;

.field private t:Lccsancom/mbridge/msdk/video/module/a/a;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->j:I

    .line 64
    sput v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->k:I

    .line 65
    sput v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->l:I

    .line 66
    sput v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->m:I

    .line 67
    sput v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->n:I

    .line 148
    sput-boolean v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->P:Z

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 86
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    .line 115
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->E:Z

    .line 117
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->F:Z

    .line 119
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->G:Z

    .line 125
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    .line 127
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    .line 129
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    .line 131
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->K:Z

    .line 133
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    .line 143
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->M:Z

    .line 146
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->Q:I

    .line 157
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    .line 158
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    .line 159
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->aa:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ab:Z

    .line 161
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    .line 162
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ad:Z

    .line 163
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ae:Z

    .line 167
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    .line 936
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ah:Z

    .line 171
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 86
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    .line 99
    const-string p2, ""

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    .line 115
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->E:Z

    .line 117
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->F:Z

    .line 119
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->G:Z

    .line 125
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    .line 127
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    .line 129
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    .line 131
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->K:Z

    .line 133
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    .line 143
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->M:Z

    .line 146
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    .line 150
    const/4 p2, 0x2

    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->Q:I

    .line 157
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    .line 158
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    .line 159
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->aa:Z

    .line 160
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ab:Z

    .line 161
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    .line 162
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ad:Z

    .line 163
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ae:Z

    .line 167
    new-instance p2, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    .line 936
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ah:Z

    .line 175
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsancom/mbridge/msdk/video/module/a/a;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lccsancom/mbridge/msdk/video/module/a/a;

    return-object p0
.end method

.method private a(II)Ljava/lang/String;
    .locals 3

    .line 789
    const-string v0, ""

    if-eqz p2, :cond_0

    .line 790
    int-to-float p1, p1

    int-to-float v1, p2

    div-float/2addr p1, v1

    float-to-double v1, p1

    .line 792
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 793
    :catchall_0
    move-exception p1

    .line 794
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 797
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 247
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    .line 248
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-nez v0, :cond_0

    .line 249
    const-string v0, "MBridgeBaseView"

    const-string v1, "MBridgeVideoView init fail"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c()V

    .line 252
    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->af:Lccsanandroid/view/animation/AlphaAnimation;

    .line 253
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 254
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ae:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->P:Z

    return p0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 4

    .line 1238
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1239
    return-object v1

    .line 1242
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1243
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Alert_window_status"

    if-nez v2, :cond_1

    .line 1244
    :try_start_1
    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->q:I

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1247
    :cond_1
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->aa:Z

    if-eqz v2, :cond_2

    .line 1248
    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->s:I

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1251
    :cond_2
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    if-eqz v2, :cond_3

    .line 1252
    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->r:I

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1255
    :cond_3
    const-string v2, "complete_info"

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1257
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 1259
    :catch_0
    move-exception p1

    .line 1260
    const-string p1, "MBridgeBaseView"

    const-string v0, "getIVRewardStatusString ERROR"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-object v1
.end method

.method private b()V
    .locals 7

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x2

    if-eqz v0, :cond_a

    :try_start_1
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v4, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v4, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v0, v4, :cond_a

    .line 322
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    if-eqz v0, :cond_2

    .line 323
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 326
    :cond_1
    return-void

    .line 328
    :cond_2
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v4, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ae:Z

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 330
    return-void

    .line 334
    :cond_3
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ab:Z

    if-eqz v0, :cond_9

    .line 335
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getCurPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 336
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getDuration()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getDuration()I

    move-result v4

    .line 337
    :goto_0
    int-to-float v5, v0

    int-to-float v4, v4

    div-float/2addr v5, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v5, v4

    float-to-int v4, v5

    .line 339
    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v6, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne v5, v6, :cond_7

    .line 340
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    .line 342
    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->T:I

    sget v6, Lccsancom/mbridge/msdk/foundation/same/a;->o:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->U:I

    if-lt v4, v5, :cond_5

    .line 343
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 344
    return-void

    .line 347
    :cond_5
    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->T:I

    sget v6, Lccsancom/mbridge/msdk/foundation/same/a;->p:I

    if-ne v5, v6, :cond_6

    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->U:I

    if-lt v0, v5, :cond_6

    .line 348
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 349
    return-void

    .line 352
    :cond_6
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v3, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 355
    :cond_7
    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v5, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v3, v5, :cond_9

    .line 356
    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->T:I

    sget v5, Lccsancom/mbridge/msdk/foundation/same/a;->o:I

    if-ne v3, v5, :cond_8

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->U:I

    if-lt v4, v3, :cond_8

    .line 357
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    .line 358
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 359
    return-void

    .line 362
    :cond_8
    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->T:I

    sget v4, Lccsancom/mbridge/msdk/foundation/same/a;->p:I

    if-ne v3, v4, :cond_9

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->U:I

    if-lt v0, v3, :cond_9

    .line 363
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    .line 364
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 365
    return-void

    .line 370
    :cond_9
    return-void

    .line 373
    :cond_a
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->w:I

    const/4 v4, -0x1

    if-le v0, v4, :cond_b

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->y:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_b

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->M:Z

    if-nez v0, :cond_b

    .line 374
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    .line 375
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 377
    :cond_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v0, v3, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    :goto_1
    goto :goto_2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_2
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a()V

    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsancom/mbridge/msdk/playercommon/PlayerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    return p1
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    return p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ad:Z

    return p1
.end method

.method private e()Z
    .locals 4

    .line 837
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mbridge_vfpv"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/PlayerView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    .line 838
    const-string v1, "mbridge_sound_switch"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    .line 839
    const-string v1, "mbridge_tv_count"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->q:Lccsanandroid/widget/TextView;

    .line 840
    const-string v1, "mbridge_rl_playing_close"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    .line 841
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 842
    const-string v1, "mbridge_top_control"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    .line 843
    new-array v1, v2, [Lccsanandroid/view/View;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->q:Lccsanandroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 844
    :catchall_0
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MBridgeBaseView"

    invoke-static {v3, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 847
    return v0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ab:Z

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->aa:Z

    return p1
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 893
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_0
    goto :goto_0

    .line 896
    :catchall_0
    move-exception v0

    .line 897
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 899
    :goto_0
    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 903
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->F:Z

    if-nez v0, :cond_1

    .line 904
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo()Z

    move-result v0

    .line 905
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 906
    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    if-eqz v0, :cond_0

    .line 908
    const-string v1, "play video failed"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->onPlayError(Ljava/lang/String;)V

    .line 912
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->F:Z

    .line 913
    goto :goto_0

    .line 914
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    goto :goto_1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 919
    :goto_1
    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    return p1
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)I
    .locals 0

    .line 53
    iget p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    return p0
.end method

.method private h()V
    .locals 12

    .line 958
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 959
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 960
    iget-wide v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_3

    iget-wide v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D

    cmpg-double v8, v6, v4

    if-lez v8, :cond_3

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-lez v5, :cond_3

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 964
    :cond_0
    div-double/2addr v2, v6

    .line 965
    div-float v4, v0, v1

    float-to-double v4, v4

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videoWHDivide:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "  screenWHDivide:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MBridgeBaseView"

    invoke-static {v7, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v8

    .line 969
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v4

    .line 970
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videoWHDivideFinal:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "  screenWHDivideFinal:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 974
    const/16 v7, 0x11

    const/4 v10, -0x1

    cmpl-double v11, v8, v4

    if-lez v11, :cond_1

    .line 975
    float-to-double v0, v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-wide v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    div-double/2addr v0, v2

    .line 976
    iput v10, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 977
    double-to-int v0, v0

    iput v0, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 978
    iput v7, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 979
    goto :goto_0

    :cond_1
    cmpg-double v0, v8, v4

    if-gez v0, :cond_2

    .line 980
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    .line 981
    double-to-int v0, v0

    iput v0, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 982
    iput v10, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 983
    iput v7, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 984
    goto :goto_0

    .line 985
    :cond_2
    iput v10, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 986
    iput v10, v6, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 988
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 989
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setMatchParent()V

    goto :goto_2

    .line 961
    :cond_3
    :goto_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i()V

    .line 991
    :goto_2
    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    return p1
.end method

.method private i()V
    .locals 3

    .line 995
    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0, v1, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setLayoutParam(IIII)V

    .line 997
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 999
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v2

    .line 1000
    iput v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1001
    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1002
    const/16 v1, 0x11

    iput v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    :cond_0
    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v0

    .line 1005
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1007
    :goto_0
    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g()V

    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->R:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    return p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->q:Lccsanandroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ad:Z

    return p0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    return p0
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/FrameLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/view/animation/AlphaAnimation;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->af:Lccsanandroid/view/animation/AlphaAnimation;

    return-object p0
.end method


# virtual methods
.method public alertWebViewShowed()V
    .locals 1

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    .line 424
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    .line 425
    return-void
.end method

.method protected final c()V
    .locals 2

    .line 279
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->c()V

    .line 280
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_1

    .line 282
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$2;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$3;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$3;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 317
    :cond_1
    return-void
.end method

.method public closeVideoOperate(II)V
    .locals 1

    .line 659
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 660
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ae:Z

    .line 661
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 662
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b()V

    .line 665
    :cond_0
    if-ne p2, v0, :cond_1

    .line 666
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->gonePlayingCloseView()V

    goto :goto_0

    .line 667
    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 668
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ad:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 669
    :cond_2
    nop

    .line 6922
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 6923
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 6924
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    .line 672
    :cond_3
    :goto_0
    return-void
.end method

.method public defaultShow()V
    .locals 12

    .line 517
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->defaultShow()V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->E:Z

    .line 519
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v5

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    .line 520
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v6

    .line 519
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showVideoLocation(IIIIIIIII)V

    .line 521
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    .line 522
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->w:I

    if-nez v0, :cond_0

    .line 523
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->closeVideoOperate(II)V

    .line 525
    :cond_0
    return-void
.end method

.method public dismissAllAlert()V
    .locals 3

    .line 429
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->dismiss()V

    .line 432
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x7d

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method public getBorderViewHeight()I
    .locals 1

    .line 753
    sget v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->n:I

    return v0
.end method

.method public getBorderViewLeft()I
    .locals 1

    .line 763
    sget v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->l:I

    return v0
.end method

.method public getBorderViewRadius()I
    .locals 1

    .line 773
    sget v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->j:I

    return v0
.end method

.method public getBorderViewTop()I
    .locals 1

    .line 768
    sget v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->k:I

    return v0
.end method

.method public getBorderViewWidth()I
    .locals 1

    .line 758
    sget v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->m:I

    return v0
.end method

.method public getCloseAlert()I
    .locals 1

    .line 812
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->y:I

    return v0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .locals 5

    .line 699
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a()I

    move-result v0

    .line 700
    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_0

    .line 702
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v1

    .line 704
    :cond_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 706
    const-string v3, "progress"

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 707
    const-string v3, "time"

    invoke-virtual {v2, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 708
    const-string v0, "duration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 709
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 710
    :catchall_0
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    const-string v0, "{}"

    return-object v0
.end method

.method public getMute()I
    .locals 1

    .line 1223
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->Q:I

    return v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkipTime()I
    .locals 1

    .line 820
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->w:I

    return v0
.end method

.method public gonePlayingCloseView()V
    .locals 4

    .line 929
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 930
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->r:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    .line 933
    :cond_0
    nop

    .line 6939
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ah:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6942
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ah:Z

    .line 6943
    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->w:I

    if-gez v1, :cond_2

    goto :goto_1

    .line 6944
    :cond_2
    if-nez v1, :cond_3

    .line 6945
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    goto :goto_1

    .line 6947
    :cond_3
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$6;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$6;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->w:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6940
    :cond_4
    :goto_0
    nop

    .line 934
    :goto_1
    return-void
.end method

.method public hideAlertView(I)V
    .locals 11

    .line 387
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    if-eqz v0, :cond_4

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    .line 389
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    .line 390
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    .line 391
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 392
    nop

    .line 3394
    sget-object v7, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 392
    nop

    .line 393
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v8, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    const/4 v9, 0x1

    move v10, p1

    invoke-static/range {v5 .. v10}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;II)V

    .line 394
    const-string v0, ""

    if-nez p1, :cond_1

    .line 395
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g()V

    .line 397
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-eq p1, v2, :cond_0

    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, v2, :cond_4

    .line 398
    :cond_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    .line 399
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x7c

    invoke-interface {p1, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 400
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ad:Z

    .line 401
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->gonePlayingCloseView()V

    goto :goto_0

    .line 404
    :cond_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->aa:Z

    .line 406
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne p1, v1, :cond_2

    .line 407
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g()V

    .line 408
    return-void

    .line 411
    :cond_2
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, v2, :cond_3

    .line 412
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ac:Z

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 413
    return-void

    .line 416
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 419
    :cond_4
    :goto_0
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 180
    return-void
.end method

.method public isH5Canvas()Z
    .locals 2

    .line 744
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 745
    const/4 v0, 0x0

    return v0

    .line 747
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMiniCardShowing()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    return v0
.end method

.method public isShowingAlertView()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    return v0
.end method

.method public isShowingTransparent()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->M:Z

    return v0
.end method

.method public isfront()Z
    .locals 7

    .line 874
    nop

    .line 875
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 876
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v2

    .line 878
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 879
    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-gt v2, v6, :cond_1

    .line 880
    nop

    .line 881
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    if-eqz v5, :cond_0

    .line 882
    nop

    .line 883
    goto :goto_1

    .line 879
    :cond_0
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 887
    :cond_2
    :goto_1
    return v1
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    .line 1205
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1206
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    .line 1207
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    goto :goto_0

    .line 1208
    :cond_0
    if-ne p1, v0, :cond_1

    .line 1209
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->K:Z

    .line 1211
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyVideoClose()V
    .locals 3

    .line 1219
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1220
    return-void
.end method

.method public onBackPress()V
    .locals 2

    .line 1183
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1187
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->W:Z

    if-eqz v0, :cond_1

    .line 1188
    return-void

    .line 1190
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->I:Z

    if-eqz v0, :cond_2

    .line 1191
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b()V

    .line 1192
    return-void

    .line 1194
    :cond_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->J:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->K:Z

    if-eqz v1, :cond_3

    .line 1195
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b()V

    .line 1196
    return-void

    .line 1198
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->L:Z

    if-eqz v0, :cond_4

    .line 1199
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b()V

    .line 1201
    :cond_4
    return-void

    .line 1184
    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 778
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 779
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 780
    return-void

    .line 782
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 783
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->E:Z

    if-eqz p1, :cond_1

    .line 784
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h()V

    .line 786
    :cond_1
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 8

    .line 505
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->v:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_5

    .line 506
    nop

    .line 4851
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4852
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object p1

    .line 4853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MBridgeBaseView videoResolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4854
    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4855
    array-length v1, p1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 4856
    aget-object v1, p1, v0

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v1, v6, v4

    if-lez v1, :cond_0

    .line 4857
    aget-object v1, p1, v0

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    .line 4859
    :cond_0
    const/4 v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-lez v3, :cond_1

    .line 4860
    aget-object p1, p1, v1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D

    .line 4862
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MBridgeBaseView mVideoW:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mVideoH:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4864
    :cond_2
    iget-wide v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    cmpg-double p1, v1, v4

    if-gtz p1, :cond_3

    .line 4865
    const-wide/high16 v1, 0x4094000000000000L    # 1280.0

    iput-wide v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    .line 4867
    :cond_3
    iget-wide v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D

    cmpg-double p1, v1, v4

    if-gtz p1, :cond_4

    .line 4868
    const-wide v1, 0x4086800000000000L    # 720.0

    iput-wide v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D

    .line 507
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->x:I

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->initBufferIngParam(I)V

    .line 508
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->v:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z

    .line 510
    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->Q:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(IILjava/lang/String;)V

    .line 512
    :cond_5
    sput-boolean v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->P:Z

    .line 513
    return-void
.end method

.method public progressOperate(II)V
    .locals 4

    .line 676
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_3

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progressOperate progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    nop

    .line 679
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v0

    goto :goto_0

    .line 679
    :cond_0
    const/4 v0, 0x0

    .line 682
    :goto_0
    if-lez p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 683
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_1

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->seekTo(I)V

    .line 688
    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 689
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->q:Lccsanandroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 690
    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 691
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->q:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 694
    :cond_3
    :goto_1
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    .line 1317
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->G:Z

    if-nez v1, :cond_0

    .line 1318
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->release()V

    .line 1321
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->b()V

    .line 1325
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lccsancom/mbridge/msdk/video/module/a/a;

    if-eqz v0, :cond_2

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lccsancom/mbridge/msdk/video/module/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :cond_2
    goto :goto_0

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :goto_0
    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    .line 832
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->x:I

    .line 833
    return-void
.end method

.method public setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 5

    .line 266
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 267
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 269
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    .line 3295
    nop

    .line 3296
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3297
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3298
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result p1

    goto :goto_0

    .line 3300
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    .line 3301
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->p()I

    move-result p1

    goto :goto_0

    .line 3304
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    .line 3305
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->p()I

    move-result p1

    .line 3307
    :goto_0
    nop

    .line 269
    nop

    .line 3311
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    .line 3312
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->q()I

    move-result v1

    .line 269
    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a(II)V

    .line 271
    :cond_2
    return-void
.end method

.method public setCloseAlert(I)V
    .locals 0

    .line 816
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->y:I

    .line 817
    return-void
.end method

.method public setContainerViewOnNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->t:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 80
    return-void
.end method

.method public setCover(Z)V
    .locals 1

    .line 728
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    .line 731
    :cond_0
    return-void
.end method

.method public setDialogRole(I)V
    .locals 1

    .line 1233
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ab:Z

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ab:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method public setIVRewardEnable(III)V
    .locals 0

    .line 1227
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    .line 1228
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->T:I

    .line 1229
    iput p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->U:I

    .line 1230
    return-void
.end method

.method public setIsIV(Z)V
    .locals 1

    .line 257
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    .line 258
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a(Z)V

    .line 261
    :cond_0
    return-void
.end method

.method public setMiniEndCardState(Z)V
    .locals 0

    .line 735
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    .line 736
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 8

    .line 1268
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i:Z

    if-nez v0, :cond_1

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTCH VideoView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 1271
    iget v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1272
    iget v2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1273
    iget v5, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1274
    iget v0, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1276
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1277
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1278
    if-le v0, v6, :cond_0

    const/4 v3, 0x1

    .line 1280
    :cond_0
    if-nez v3, :cond_1

    .line 1281
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    new-instance v7, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;IIII)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v7, p1, p2}, Lccsanandroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1292
    :cond_1
    return-void
.end method

.method public setPlayURL(Ljava/lang/String;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->v:Ljava/lang/String;

    .line 829
    return-void
.end method

.method public setScaleFitXY(I)V
    .locals 0

    .line 718
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->N:I

    .line 719
    return-void
.end method

.method public setShowingAlertViewCover(Z)V
    .locals 1

    .line 739
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    .line 740
    return-void
.end method

.method public setShowingTransparent(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->M:Z

    .line 141
    return-void
.end method

.method public setSoundState(I)V
    .locals 0

    .line 274
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->Q:I

    .line 275
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->ag:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setVideoLayout(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i:Z

    .line 189
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i:Z

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object p1

    .line 2213
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/i/c;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/i/c;-><init>()V

    const/4 v1, 0x2

    const-string v2, "ccsan_mbridge_reward_layer_floor"

    invoke-virtual {v0, p0, v2, v1, p1}, Lccsancom/mbridge/msdk/video/dynview/i/c;->a(Lccsanandroid/view/View;Ljava/lang/String;ILjava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b;

    move-result-object p1

    .line 2214
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/a;->a()Lccsancom/mbridge/msdk/video/dynview/a;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;

    invoke-direct {v1, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsanandroid/view/ViewGroup;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/dynview/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;)V

    .line 190
    goto :goto_0

    .line 192
    :cond_1
    nop

    .line 3201
    const-string p1, "ccsan_mbridge_reward_videoview_item"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 3202
    if-lez p1, :cond_2

    .line 3203
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 3204
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a()V

    .line 3206
    :cond_2
    const/4 p1, 0x0

    sput-boolean p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->P:Z

    .line 194
    :goto_0
    return-void
.end method

.method public setVideoSkipTime(I)V
    .locals 0

    .line 824
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->w:I

    .line 825
    return-void
.end method

.method public setVisible(I)V
    .locals 0

    .line 723
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVisibility(I)V

    .line 724
    return-void
.end method

.method public showAlertView()V
    .locals 5

    .line 437
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->H:Z

    if-eqz v0, :cond_0

    .line 438
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->A:Lccsancom/mbridge/msdk/widget/dialog/a;

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->A:Lccsancom/mbridge/msdk/widget/dialog/a;

    .line 482
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->A:Lccsancom/mbridge/msdk/widget/dialog/a;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/widget/dialog/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    .line 486
    :cond_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->O:Z

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->S:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->makeIVAlertView(ILjava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->makeRVAlertView(Ljava/lang/String;)V

    .line 492
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 493
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->z:Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->show()V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->V:Z

    .line 495
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    .line 496
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    .line 497
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 498
    nop

    .line 4394
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->R:Ljava/lang/String;

    .line 499
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->R:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->B:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;I)V

    .line 501
    :cond_4
    return-void
.end method

.method public showIVRewardAlertView(Ljava/lang/String;)V
    .locals 2

    .line 1215
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x8

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public showVideoLocation(IIIIIIIII)V
    .locals 5

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoLocation marginTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " marginLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_9

    .line 536
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Lccsanandroid/widget/FrameLayout;->setPadding(IIII)V

    .line 537
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->s:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 541
    :cond_0
    nop

    .line 5801
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v0

    .line 5802
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v3

    .line 5803
    const/4 v4, 0x1

    if-lez p3, :cond_1

    if-lez p4, :cond_1

    .line 5804
    if-lt v0, p3, :cond_1

    if-lt v3, p4, :cond_1

    .line 5805
    const/4 v0, 0x1

    goto :goto_0

    .line 5808
    :cond_1
    const/4 v0, 0x0

    .line 541
    :goto_0
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->E:Z

    if-nez v0, :cond_8

    .line 542
    sput p6, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->k:I

    .line 543
    sput p7, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->l:I

    .line 544
    add-int/lit8 p8, p8, 0x4

    sput p8, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->m:I

    .line 545
    add-int/lit8 p9, p9, 0x4

    sput p9, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->n:I

    .line 546
    int-to-float p6, p3

    int-to-float p7, p4

    div-float/2addr p6, p7

    .line 547
    const/4 p7, 0x0

    .line 549
    :try_start_0
    iget-wide p8, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->C:D

    iget-wide v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->D:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-double/2addr p8, v0

    double-to-float p7, p8

    .line 552
    goto :goto_1

    .line 550
    :catchall_0
    move-exception p8

    .line 551
    invoke-virtual {p8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p9

    invoke-static {v1, p9, p8}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    :goto_1
    if-lez p5, :cond_3

    .line 554
    sput p5, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->j:I

    .line 555
    nop

    .line 6580
    if-lez p5, :cond_3

    .line 6581
    new-instance p8, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {p8}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6582
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getContext()Lccsanandroid/content/Context;

    move-result-object p9

    int-to-float p5, p5

    invoke-static {p9, p5}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p8, p5}, Lccsanandroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 6583
    const/4 p5, -0x1

    invoke-virtual {p8, p5}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6584
    invoke-virtual {p8, v4, v2}, Lccsanandroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 6585
    sget p5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 p9, 0x10

    if-lt p5, p9, :cond_2

    .line 6586
    invoke-virtual {p0, p8}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 6587
    iget-object p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p5, p8}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 6589
    :cond_2
    invoke-virtual {p0, p8}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 6590
    iget-object p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p5, p8}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 6592
    :goto_2
    sget p5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 p8, 0x15

    if-lt p5, p8, :cond_3

    .line 6593
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setClipToOutline(Z)V

    .line 6594
    iget-object p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p5, v4}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setClipToOutline(Z)V

    .line 557
    :cond_3
    sub-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const p6, 0x3dcccccd    # 0.1f

    cmpg-float p5, p5, p6

    if-lez p5, :cond_5

    iget p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->N:I

    if-ne p5, v4, :cond_4

    goto :goto_3

    .line 570
    :cond_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h()V

    .line 571
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->videoOperate(I)V

    goto :goto_4

    .line 558
    :cond_5
    :goto_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h()V

    .line 559
    iget-boolean p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->M:Z

    if-eqz p5, :cond_7

    .line 560
    invoke-virtual {p0, p3, p4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setLayoutCenter(II)V

    .line 561
    sget-boolean p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->P:Z

    const-string p2, ""

    if-eqz p1, :cond_6

    .line 562
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p3, 0x72

    invoke-interface {p1, p3, p2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_4

    .line 564
    :cond_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p3, 0x74

    invoke-interface {p1, p3, p2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_4

    .line 567
    :cond_7
    invoke-virtual {p0, p2, p1, p3, p4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setLayoutParam(IIII)V

    .line 573
    :goto_4
    goto :goto_5

    .line 574
    :cond_8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h()V

    .line 577
    :cond_9
    :goto_5
    return-void
.end method

.method public soundOperate(II)V
    .locals 1

    .line 601
    const-string v0, "2"

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(IILjava/lang/String;)V

    .line 602
    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .locals 4

    .line 606
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_4

    .line 607
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->Q:I

    .line 608
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 609
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 610
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->closeSound()V

    goto :goto_0

    .line 611
    :cond_0
    if-ne p1, v0, :cond_1

    .line 612
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 613
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->openSound()V

    .line 616
    :cond_1
    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 617
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    goto :goto_1

    .line 619
    :cond_2
    if-ne p2, v2, :cond_3

    .line 620
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    goto :goto_1

    .line 621
    :cond_3
    if-ne p2, v0, :cond_4

    .line 622
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    .line 626
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    const-string p2, "2"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 627
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/4 p3, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 629
    :cond_5
    return-void
.end method

.method public videoOperate(I)V
    .locals 3

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoView videoOperate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_2

    .line 635
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isfront()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 637
    const-string p1, "VideoView videoOperate:play"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->u:Z

    if-nez p1, :cond_2

    .line 639
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g()V

    goto :goto_0

    .line 642
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 643
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isfront()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 644
    const-string p1, "VideoView videoOperate:pause"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f()V

    goto :goto_0

    .line 647
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 648
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->G:Z

    if-nez p1, :cond_2

    .line 649
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->release()V

    .line 650
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->G:Z

    .line 654
    :cond_2
    :goto_0
    return-void
.end method
