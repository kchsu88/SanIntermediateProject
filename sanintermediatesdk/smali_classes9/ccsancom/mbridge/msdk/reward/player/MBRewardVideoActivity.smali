.class public Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;
.super Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;
.source "MBRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;
    }
.end annotation


# static fields
.field public static INTENT_EXTRADATA:Ljava/lang/String;

.field public static INTENT_ISBID:Ljava/lang/String;

.field public static INTENT_ISBIG_OFFER:Ljava/lang/String;

.field public static INTENT_ISIV:Ljava/lang/String;

.field public static INTENT_IVREWARD_MODETYPE:Ljava/lang/String;

.field public static INTENT_IVREWARD_VALUE:Ljava/lang/String;

.field public static INTENT_IVREWARD_VALUETYPE:Ljava/lang/String;

.field public static INTENT_MUTE:Ljava/lang/String;

.field public static INTENT_REWARD:Ljava/lang/String;

.field public static INTENT_UNITID:Ljava/lang/String;

.field public static INTENT_USERID:Ljava/lang/String;

.field public static SAVE_STATE_KEY_REPORT:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lccsancom/mbridge/msdk/videocommon/b/c;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

.field private m:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private n:Z

.field private o:Z

.field private p:Lccsancom/mbridge/msdk/videocommon/download/a;

.field private q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

.field private u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

.field private v:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private w:Lccsancom/mbridge/msdk/video/bt/module/a/a;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lccsancom/mbridge/msdk/video/dynview/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "unitId"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_UNITID:Ljava/lang/String;

    .line 46
    const-string v0, "userId"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_USERID:Ljava/lang/String;

    .line 47
    const-string v0, "reward"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_REWARD:Ljava/lang/String;

    .line 48
    const-string v0, "mute"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_MUTE:Ljava/lang/String;

    .line 49
    const-string v0, "isIV"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISIV:Ljava/lang/String;

    .line 50
    const-string v0, "isBid"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBID:Ljava/lang/String;

    .line 51
    const-string v0, "isBigOffer"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBIG_OFFER:Ljava/lang/String;

    .line 52
    const-string v0, "hasRelease"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->SAVE_STATE_KEY_REPORT:Ljava/lang/String;

    .line 53
    const-string v0, "ivRewardMode"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_MODETYPE:Ljava/lang/String;

    .line 54
    const-string v0, "ivRewardValueType"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUETYPE:Ljava/lang/String;

    .line 55
    const-string v0, "ivRewardValue"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUE:Ljava/lang/String;

    .line 56
    const-string v0, "extraData"

    sput-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_EXTRADATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;-><init>()V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    .line 63
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    .line 67
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 71
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->n:Z

    .line 72
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->o:Z

    .line 86
    new-instance v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;-><init>(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lccsancom/mbridge/msdk/video/dynview/d/a;

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 42
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
    .locals 0

    .line 42
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/videocommon/download/a;
    .locals 0

    .line 42
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    return-object p1
.end method

.method private a()V
    .locals 10

    .line 287
    const-string v0, "mbridge_temp_container"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    .line 288
    if-gez v0, :cond_0

    .line 289
    const-string v1, "no id mbridge_bt_container in mbridge_more_offer_activity layout"

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 292
    if-nez v0, :cond_1

    .line 293
    const-string v0, "env error"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 296
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/dynview/g/b;->c(Lccsanandroid/view/View;J)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setVisibility(I)V

    .line 302
    :cond_3
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setActivity(Lccsanandroid/app/Activity;)V

    .line 303
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setBidCampaign(Z)V

    .line 304
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setBigOffer(Z)V

    .line 305
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 306
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaignDownLoadTask(Lccsancom/mbridge/msdk/videocommon/download/a;)V

    .line 307
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setIV(Z)V

    .line 308
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h:I

    iget v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:I

    iget v3, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setIVRewardEnable(III)V

    .line 309
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setMute(I)V

    .line 310
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setReward(Lccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 311
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 312
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setUnitId(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setPlacementId(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setUserId(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowRewardListener(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V

    .line 316
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Lccsanandroid/content/Context;)V

    .line 318
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onCreate()V

    .line 320
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "showBTOld"

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    const-string v6, ""

    const-string v7, ""

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 324
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 279
    const-string v0, "MBRewardVideoActivity"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->finish()V

    .line 284
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 10

    .line 328
    const-string v0, "mbridge_bt_container"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    .line 329
    if-gez v0, :cond_0

    .line 330
    const-string v1, "no mbridge_webview_framelayout in mbridge_more_offer_activity layout"

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 332
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 333
    if-nez v0, :cond_1

    .line 334
    const-string v0, "env error"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setVisibility(I)V

    .line 337
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c()Lccsancom/mbridge/msdk/video/bt/module/a/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    .line 338
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setBTContainerCallback(Lccsancom/mbridge/msdk/video/bt/module/a/a;)V

    .line 339
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setShowRewardVideoListener(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V

    .line 340
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lccsancom/mbridge/msdk/video/dynview/d/a;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setChoiceOneCallback(Lccsancom/mbridge/msdk/video/dynview/d/a;)V

    .line 341
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setCampaigns(Ljava/util/List;)V

    .line 342
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setCampaignDownLoadTasks(Ljava/util/List;)V

    .line 343
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 344
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setUnitId(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setPlacementId(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setUserId(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setActivity(Lccsanandroid/app/Activity;)V

    .line 348
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setReward(Lccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 349
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h:I

    iget v3, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:I

    iget v4, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    invoke-virtual {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setIVRewardEnable(III)V

    .line 350
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setIV(Z)V

    .line 351
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e:I

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setMute(I)V

    .line 352
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    check-cast v2, Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setJSFactory(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->init(Lccsanandroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onCreate()V

    .line 356
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 358
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "showMoreOffer"

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    const-string v6, ""

    const-string v7, ""

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 363
    :cond_2
    :goto_0
    return-void
.end method

.method private c()Lccsancom/mbridge/msdk/video/bt/module/a/a;
    .locals 1

    .line 366
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$2;-><init>(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    .line 425
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    return-object v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a()V

    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lccsancom/mbridge/msdk/video/bt/module/b/h;
    .locals 0

    .line 42
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 611
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 615
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    .line 581
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->finish()V

    .line 582
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(I)V

    .line 583
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 585
    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 587
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onDestroy()V

    .line 589
    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 591
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 478
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onBackPressed()V

    .line 479
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onBackPressed()V

    .line 482
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onBackPressed()V

    .line 485
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 466
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 467
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 473
    :cond_1
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 21

    .line 125
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "_"

    const-string v3, ""

    const-string v4, "anim"

    const-string v5, "DynamicViewCampaignResourceDownloader"

    invoke-super/range {p0 .. p1}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 126
    const/4 v6, 0x1

    sput-boolean v6, Lccsancom/mbridge/msdk/MBridgeConstans;->isRewardActivityShowing:Z

    .line 129
    :try_start_0
    const-string v7, "mbridge_more_offer_activity"

    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findLayout(Ljava/lang/String;)I

    move-result v7

    .line 130
    if-gez v7, :cond_0

    .line 131
    const-string v0, "no mbridge_more_offer_activity layout"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->setContentView(I)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v7

    .line 137
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_UNITID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    .line 138
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "data empty error"

    if-eqz v8, :cond_1

    .line 139
    :try_start_1
    invoke-direct {v1, v9}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_1
    sget-object v8, Lccsancom/mbridge/msdk/reward/a/a;->b:Ljava/util/Map;

    iget-object v10, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsancom/mbridge/msdk/video/bt/module/b/h;

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 143
    sget-object v8, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b:Ljava/lang/String;

    .line 144
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_REWARD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-static {v8}, Lccsancom/mbridge/msdk/videocommon/b/c;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/b/c;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    .line 146
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_USERID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c:Ljava/lang/String;

    .line 147
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_MUTE:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v7, v8, v10}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e:I

    .line 148
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISIV:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    .line 149
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v8

    iget-boolean v12, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    const/16 v14, 0x5e

    if-eqz v12, :cond_2

    const/16 v12, 0x11f

    goto :goto_0

    :cond_2
    const/16 v12, 0x5e

    :goto_0
    invoke-virtual {v8, v12}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(I)V

    .line 150
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBID:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    .line 151
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_EXTRADATA:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/lang/String;

    .line 152
    iget-boolean v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    if-eqz v8, :cond_3

    .line 153
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_MODETYPE:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h:I

    .line 154
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUETYPE:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:I

    .line 155
    sget-object v8, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUE:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    .line 158
    :cond_3
    new-instance v8, Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-direct {v8, v1}, Lccsancom/mbridge/msdk/video/signal/factory/b;-><init>(Lccsanandroid/app/Activity;)V

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 159
    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->jsFactory:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->registerJsFactory(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;)V

    .line 161
    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-nez v8, :cond_4

    .line 162
    const-string v0, "showRewardListener is null"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 163
    return-void

    .line 166
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;->getInstance()Lccsancom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;

    move-result-object v8

    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b:Ljava/lang/String;

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lccsancom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;->get(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 167
    if-nez v8, :cond_5

    .line 168
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v8

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 169
    if-nez v8, :cond_5

    .line 170
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v8

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    iget-boolean v13, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    invoke-virtual {v8, v12, v15, v13}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v8

    iput-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 173
    :cond_5
    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v8, :cond_6

    .line 174
    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/videocommon/d/c;->k()I

    move-result v8

    invoke-virtual {v12, v8}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(I)V

    .line 175
    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/videocommon/d/c;->l()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(Ljava/lang/String;)V

    .line 177
    :cond_6
    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/videocommon/b/c;->b()I

    move-result v8

    if-gtz v8, :cond_7

    .line 178
    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v8, v6}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(I)V

    .line 180
    :cond_7
    const-string v8, "mbridge_reward_activity_open"

    invoke-static {v1, v8, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 181
    const-string v12, "mbridge_reward_activity_stay"

    invoke-static {v1, v12, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 182
    if-le v8, v6, :cond_8

    if-le v4, v6, :cond_8

    .line 183
    invoke-virtual {v1, v8, v4}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_8
    if-eqz v0, :cond_9

    .line 188
    :try_start_2
    sget-object v4, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->SAVE_STATE_KEY_REPORT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->o:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :cond_9
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/download/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    .line 194
    sget-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBIG_OFFER:Ljava/lang/String;

    invoke-virtual {v7, v0, v11}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fdb\u5165 show\uff0c\u5927\u6a21\u677f "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    if-nez v0, :cond_e

    .line 198
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 199
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/a;

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 201
    :cond_a
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_b

    .line 202
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 203
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Z)V

    .line 204
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, v11}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Z)V

    .line 205
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_b

    .line 206
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;ILjava/lang/String;)V

    .line 209
    :cond_b
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    if-nez v0, :cond_d

    .line 210
    :cond_c
    invoke-direct {v1, v9}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 212
    :cond_d
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a()V

    .line 213
    return-void

    .line 216
    :cond_e
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    .line 217
    nop

    .line 218
    iput-object v3, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/lang/String;

    .line 219
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 220
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 221
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/lang/String;

    .line 223
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v4

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;ILjava/lang/String;)V

    .line 225
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    .line 1272
    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 1273
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    goto :goto_2

    .line 1275
    :cond_10
    move-object v0, v2

    .line 225
    :goto_2
    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 226
    if-nez v0, :cond_1c

    .line 227
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-nez v0, :cond_11

    .line 228
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 229
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/a;

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 232
    :cond_11
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-nez v0, :cond_14

    .line 233
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-boolean v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Z

    if-eqz v4, :cond_12

    const/16 v13, 0x11f

    goto :goto_3

    :cond_12
    const/16 v13, 0x5e

    :goto_3
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    iget-boolean v7, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    .line 2103
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/download/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/k;

    move-result-object v0

    .line 2104
    if-eqz v0, :cond_13

    .line 2105
    invoke-virtual {v0, v13, v7}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(IZ)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    goto :goto_4

    .line 2107
    :cond_13
    nop

    .line 233
    :goto_4
    iput-object v2, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 235
    :cond_14
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_15

    .line 236
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 237
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Z)V

    .line 238
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, v11}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Z)V

    .line 241
    :cond_15
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_16

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_16

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d:Lccsancom/mbridge/msdk/videocommon/b/c;

    if-nez v0, :cond_17

    .line 242
    :cond_16
    invoke-direct {v1, v9}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 244
    :cond_17
    iput-boolean v11, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    iget-object v12, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v13

    const-string v14, "showMoreOffer showBTOld"

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Z

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, 0x0

    move/from16 v16, v0

    invoke-static/range {v12 .. v20}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    goto :goto_5

    .line 247
    :catch_1
    move-exception v0

    .line 249
    :goto_5
    :try_start_5
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 250
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3027
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 3028
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result v0

    .line 3029
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_19

    .line 3030
    const/4 v2, 0x6

    const/4 v3, 0x7

    packed-switch v0, :pswitch_data_0

    .line 3041
    nop

    .line 3049
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/h/b;->a(Lccsanandroid/content/Context;)Z

    move-result v0

    goto :goto_6

    .line 3033
    :pswitch_0
    invoke-virtual {v1, v2}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    .line 3034
    goto :goto_7

    .line 3037
    :pswitch_1
    invoke-virtual {v1, v3}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    .line 3038
    goto :goto_7

    .line 3049
    :goto_6
    if-eqz v0, :cond_18

    .line 3050
    invoke-virtual {v1, v2}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7

    .line 3052
    :cond_18
    invoke-virtual {v1, v3}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    .line 251
    :cond_19
    :goto_7
    const-string v0, "\u5c55\u793a\u65b0\u4e1a\u52a1"

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Ljava/util/List;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v10, :cond_1a

    .line 254
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b()V

    goto :goto_8

    .line 256
    :cond_1a
    const-string v0, "no available campaign,timeout"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 258
    :goto_8
    goto :goto_9

    .line 259
    :cond_1b
    const-string v0, "\u5c55\u793a\u8001\u4e1a\u52a1"

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a()V

    goto :goto_9

    .line 263
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    :goto_9
    goto :goto_a

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 268
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    .line 501
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onDestroy()V

    .line 502
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 505
    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 507
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onDestroy()V

    .line 509
    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 512
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Ljava/util/List;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 455
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onPause()V

    .line 456
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onPause()V

    .line 459
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onPause()V

    .line 462
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 517
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onRestart()V

    .line 518
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onRestart()V

    .line 521
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onRestart()V

    .line 524
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 430
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onResume()V

    .line 432
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;-><init>(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onResume()V

    .line 448
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onResume()V

    .line 451
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 595
    sget-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->SAVE_STATE_KEY_REPORT:Ljava/lang/String;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 597
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 528
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onStart()V

    .line 529
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onStart()V

    .line 532
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onStart()V

    .line 535
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 489
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->isRewardActivityShowing:Z

    .line 490
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onStop()V

    .line 491
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onStop()V

    .line 494
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onStop()V

    .line 497
    :cond_1
    return-void
.end method

.method public setTopControllerPadding(IIIII)V
    .locals 7

    .line 601
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_0

    .line 602
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 605
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v1, :cond_1

    .line 606
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setNotchPadding(IIIII)V

    .line 608
    :cond_1
    return-void
.end method
