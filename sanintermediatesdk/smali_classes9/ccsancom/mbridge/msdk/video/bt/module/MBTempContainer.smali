.class public Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.super Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;
.source "MBTempContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;,
        Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;,
        Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;,
        Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;,
        Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;
    }
.end annotation


# static fields
.field private static final y:Ljava/lang/String;


# instance fields
.field private A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private B:Lccsancom/mbridge/msdk/videocommon/download/a;

.field private C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

.field private D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

.field private E:Ljava/lang/String;

.field private F:Lccsancom/mbridge/msdk/video/signal/factory/b;

.field private G:I

.field private H:I

.field private I:Z

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Lccsanandroid/view/LayoutInflater;

.field private R:I

.field private S:I

.field private T:Lccsanandroid/view/View;

.field private U:Z

.field private V:Z

.field private W:Z

.field protected a:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;

.field private ai:Ljava/lang/Runnable;

.field protected b:Z

.field protected c:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;

.field protected d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field protected e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

.field protected f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

.field protected g:Lccsanandroid/os/Handler;

.field protected h:Ljava/lang/Runnable;

.field protected i:Ljava/lang/Runnable;

.field private z:Lccsanandroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;-><init>(Lccsanandroid/content/Context;)V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    .line 78
    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->q:I

    iput v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Z

    .line 84
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a:Z

    .line 131
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b:Z

    .line 132
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    .line 202
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    .line 203
    iput v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->R:I

    .line 205
    iput v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->S:I

    .line 207
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    .line 218
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i:Ljava/lang/Runnable;

    .line 366
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->U:Z

    .line 367
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    .line 368
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Z

    .line 371
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    .line 372
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ac:Z

    .line 374
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ad:Z

    .line 375
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ae:Z

    .line 376
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->af:Z

    .line 377
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ag:Z

    .line 381
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$3;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$3;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ai:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Lccsanandroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 75
    const-string p2, ""

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    .line 78
    sget v0, Lccsancom/mbridge/msdk/foundation/same/a;->q:I

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Z

    .line 84
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    .line 97
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a:Z

    .line 131
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b:Z

    .line 132
    new-instance p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    .line 202
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-direct {p2}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    .line 203
    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->R:I

    .line 205
    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->S:I

    .line 207
    new-instance p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    .line 218
    new-instance p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i:Ljava/lang/Runnable;

    .line 366
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->U:Z

    .line 367
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    .line 368
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Z

    .line 371
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    .line 372
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ac:Z

    .line 374
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ad:Z

    .line 375
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ae:Z

    .line 376
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->af:Z

    .line 377
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ag:Z

    .line 381
    new-instance p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$3;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$3;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ai:Ljava/lang/Runnable;

    .line 94
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Lccsanandroid/content/Context;)V

    .line 95
    return-void
.end method

.method static synthetic A(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    return p0
.end method

.method static synthetic B(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method static synthetic C(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    .line 67
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->R:I

    return p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .line 915
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 916
    const-string v1, "2000037"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",desc="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    .line 918
    nop

    .line 919
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 922
    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 923
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 924
    nop

    .line 925
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 926
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p2

    .line 928
    :cond_1
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 929
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 930
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 932
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 933
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 935
    :cond_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result p1

    .line 936
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 937
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->r(Ljava/lang/String;)V

    .line 938
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->e(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p1

    .line 939
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    goto :goto_1

    .line 940
    :catchall_0
    move-exception p1

    .line 941
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 943
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ad:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    .line 67
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    return p1
.end method

.method private c()I
    .locals 1

    .line 231
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/video/signal/a/j;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->j()I

    move-result v0

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    .line 67
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ae:Z

    return p1
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private d()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/video/signal/a/j;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->m()Z

    move-result v0

    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->af:Z

    return p1
.end method

.method private e()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isShowingAlertView()Z

    move-result v0

    return v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ac:Z

    return p1
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    return-object p0
.end method

.method private f()V
    .locals 7

    .line 596
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 597
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 599
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/c;->b(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->aa:Z

    .line 602
    :cond_0
    return-void
.end method

.method private g()I
    .locals 3

    .line 946
    nop

    .line 948
    const/4 v0, 0x5

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    .line 949
    if-nez v1, :cond_0

    .line 950
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->c()Lccsancom/mbridge/msdk/videocommon/d/a;

    .line 952
    :cond_0
    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->f()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    .line 957
    :cond_1
    goto :goto_0

    .line 955
    :catchall_0
    move-exception v1

    .line 956
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 958
    :goto_0
    return v0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 4

    .line 67
    nop

    .line 6576
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_3

    .line 6577
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v0, v1, :cond_2

    .line 6579
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    invoke-interface {v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(ZI)V

    .line 6582
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(Ljava/lang/String;ZLccsancom/mbridge/msdk/videocommon/b/c;)V

    goto :goto_1

    .line 6584
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_4

    .line 6585
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6592
    :cond_4
    :goto_1
    goto :goto_2

    .line 6588
    :catch_0
    move-exception v0

    .line 6589
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_5

    .line 6590
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 67
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    return p0
.end method

.method static synthetic s(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ai:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic t(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 2

    .line 67
    nop

    .line 6962
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6963
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$6;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$6;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic y(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 2

    .line 67
    nop

    .line 6975
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6976
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$7;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$7;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic z(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public canBackPress()Z
    .locals 1

    .line 832
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .locals 19

    .line 733
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->superDefaultLoad(ILjava/lang/String;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 735
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 736
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 737
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setUnitID(Ljava/lang/String;)V

    .line 738
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setCloseDelayTime(I)V

    .line 739
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setPlayCloseBtnTm(I)V

    .line 740
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v2, Lccsancom/mbridge/msdk/video/module/a/a/h;

    iget-object v5, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    iget-object v7, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    new-instance v10, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;

    invoke-direct {v10, v0, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v11

    iget-boolean v12, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/video/module/a/a/h;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 741
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 742
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showPlayableView()V

    goto/16 :goto_1

    .line 744
    :cond_0
    invoke-direct/range {p0 .. p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(ILjava/lang/String;)V

    .line 745
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Lccsanandroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->loadModuleDatas()V

    .line 747
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->f()I

    move-result v1

    .line 748
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c()I

    move-result v2

    .line 749
    if-eqz v2, :cond_1

    .line 750
    move v12, v2

    goto :goto_0

    .line 749
    :cond_1
    move v12, v1

    .line 752
    :goto_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    iget-object v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    iget-object v5, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2, v0, v4, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setContainerViewOnNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 755
    :cond_2
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v2, Lccsancom/mbridge/msdk/video/module/a/a/m;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v7, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v8, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    iget-object v9, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    iget-object v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->e()I

    move-result v13

    new-instance v14, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;

    invoke-direct {v14, v0, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->x()D

    move-result-wide v15

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v17

    iget-boolean v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    move-object v4, v2

    move-object v5, v1

    move/from16 v18, v3

    invoke-direct/range {v4 .. v18}, Lccsancom/mbridge/msdk/video/module/a/a/m;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILccsancom/mbridge/msdk/video/module/a/a;DIZ)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 756
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->defaultShow()V

    .line 758
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v13, Lccsancom/mbridge/msdk/video/module/a/a/b;

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v5, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    iget-object v7, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    new-instance v10, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    iget-object v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v10, v0, v2, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v11

    iget-boolean v12, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    move-object v2, v13

    move-object v4, v1

    invoke-direct/range {v2 .. v12}, Lccsancom/mbridge/msdk/video/module/a/a/b;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    invoke-virtual {v1, v13}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 759
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->defaultShow()V

    .line 760
    goto :goto_1

    .line 762
    :cond_3
    invoke-direct/range {p0 .. p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(ILjava/lang/String;)V

    .line 763
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v1, :cond_4

    .line 764
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v1}, Lccsanandroid/app/Activity;->finish()V

    .line 767
    :cond_4
    :goto_1
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 139
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 143
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findMBridgeContainerView()Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;
    .locals 1

    .line 816
    const-string v0, "mbridge_video_templete_container"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    return-object v0
.end method

.method public findMBridgeVideoView()Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;
    .locals 1

    .line 812
    const-string v0, "mbridge_video_templete_videoview"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    return-object v0
.end method

.method public findWindVaneWebView()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 4

    .line 775
    const-string v0, "_"

    .line 776
    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    return-object v0

    .line 783
    :cond_0
    goto :goto_2

    .line 785
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    const/16 v1, 0x11f

    const/16 v2, 0x5e

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v0

    .line 790
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 791
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    if-eqz v3, :cond_3

    .line 792
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_1

    .line 794
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 796
    :goto_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    .line 797
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    if-eqz v1, :cond_4

    .line 798
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewTransparent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_4
    return-object v0

    .line 807
    :cond_5
    :goto_2
    goto :goto_3

    .line 803
    :catch_0
    move-exception v0

    .line 804
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 805
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 808
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 1227
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1273
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutID()I
    .locals 1

    .line 770
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    if-eqz v0, :cond_0

    const-string v0, "ccsan_ccsan_mbridge_reward_activity_video_templete_transparent"

    goto :goto_0

    :cond_0
    const-string v0, "ccsan_mbridge_reward_activity_video_templete"

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 102
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lccsanandroid/view/LayoutInflater;

    .line 103
    return-void
.end method

.method public initViews()Z
    .locals 1

    .line 820
    const-string v0, "mbridge_video_templete_progressbar"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Lccsanandroid/view/View;

    .line 821
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b:Z

    return v0
.end method

.method public loadModuleDatas()V
    .locals 18

    .line 678
    move-object/from16 v0, p0

    .line 5246
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/video/signal/a/j;

    move-result-object v1

    .line 5247
    if-eqz v1, :cond_0

    .line 5248
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->k()I

    move-result v1

    goto :goto_0

    .line 5250
    :cond_0
    const/4 v1, 0x0

    .line 678
    :goto_0
    nop

    .line 679
    if-eqz v1, :cond_1

    .line 680
    iput v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->q:I

    .line 682
    :cond_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->f()I

    move-result v1

    .line 683
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c()I

    move-result v2

    .line 684
    if-eqz v2, :cond_2

    .line 685
    move v10, v2

    goto :goto_1

    .line 684
    :cond_2
    move v10, v1

    .line 688
    :goto_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->q:I

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setSoundState(I)V

    .line 689
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 691
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setPlayURL(Ljava/lang/String;)V

    .line 692
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoSkipTime(I)V

    .line 693
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCloseAlert(I)V

    .line 694
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setBufferTimeout(I)V

    .line 695
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v2, Lccsancom/mbridge/msdk/video/module/a/a/n;

    iget-object v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    iget-object v5, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    iget-object v7, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->e()I

    move-result v11

    new-instance v12, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;

    const/4 v15, 0x0

    invoke-direct {v12, v0, v15}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->x()D

    move-result-wide v13

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v16

    iget-boolean v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    move/from16 v17, v3

    move-object v3, v2

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lccsancom/mbridge/msdk/video/module/a/a/n;-><init>(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILccsancom/mbridge/msdk/video/module/a/a;DIZ)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 696
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingTransparent(Z)V

    .line 697
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-eq v1, v2, :cond_3

    iget v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v1, v2, :cond_5

    .line 698
    :cond_3
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    iget v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->u:I

    iget v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->v:I

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setIVRewardEnable(III)V

    .line 699
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 6239
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6240
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/c;->h()I

    move-result v2

    goto :goto_2

    .line 6242
    :cond_4
    const/4 v2, 0x1

    .line 699
    :goto_2
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setDialogRole(I)V

    .line 701
    :cond_5
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 702
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setUnitID(Ljava/lang/String;)V

    .line 703
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setCloseDelayTime(I)V

    .line 704
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setPlayCloseBtnTm(I)V

    .line 706
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setVideoInteractiveType(I)V

    .line 707
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setEndscreenType(I)V

    .line 708
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setVideoSkipTime(I)V

    .line 709
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-boolean v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setShowingTransparent(Z)V

    .line 710
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setJSFactory(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 711
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 712
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v11, Lccsancom/mbridge/msdk/video/module/a/a/h;

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    iget-object v5, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    new-instance v8, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v9

    iget-boolean v10, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lccsancom/mbridge/msdk/video/module/a/a/h;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 713
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 714
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showPlayableView()V

    goto :goto_3

    .line 716
    :cond_6
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    new-instance v12, Lccsancom/mbridge/msdk/video/module/a/a/c;

    iget-object v3, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    iget-object v4, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    new-instance v9, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    iget-object v10, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v9, v0, v2, v10}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v10

    iget-boolean v11, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lccsancom/mbridge/msdk/video/module/a/a/c;-><init>(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    invoke-virtual {v1, v12}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 717
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 718
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 720
    :goto_3
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    if-eqz v1, :cond_7

    .line 721
    iget-object v1, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMBridgeClickMiniCardViewTransparent()V

    .line 723
    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 836
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->notifyVideoClose()V

    .line 838
    return-void

    .line 840
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ad:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_3

    .line 841
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onMiniEndcardBackPress()V

    .line 845
    :cond_1
    return-void

    .line 847
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->onBackPress()V

    .line 848
    return-void

    .line 850
    :cond_3
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->af:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_4

    .line 851
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onPlayableBackPress()V

    .line 852
    return-void

    .line 854
    :cond_4
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ae:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_5

    .line 855
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onEndcardBackPress()V

    .line 858
    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 859
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->miniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 862
    :cond_6
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->g()V

    goto :goto_0

    .line 865
    :cond_7
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 866
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ag:Z

    if-nez v0, :cond_9

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ag:Z

    .line 868
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 871
    :cond_8
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    const-string v1, "onBackPressed can\'t excute"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_9
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 392
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 393
    return-void
.end method

.method public onCreate()V
    .locals 15

    .line 396
    const-string v0, "mbridge_video_templete_webview_parent"

    const-string v1, "id"

    .line 1444
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-nez v2, :cond_0

    .line 1445
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    invoke-virtual {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 397
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ag:Z

    .line 399
    :try_start_0
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-eqz v3, :cond_2

    .line 400
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    new-instance v3, Lccsancom/mbridge/msdk/video/bt/module/b/d;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    iget-object v8, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lccsancom/mbridge/msdk/video/bt/module/b/d;-><init>(Lccsanandroid/content/Context;ZLccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    goto :goto_0

    .line 403
    :cond_1
    new-instance v3, Lccsancom/mbridge/msdk/video/bt/module/b/c;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lccsancom/mbridge/msdk/video/bt/module/b/c;-><init>(Lccsancom/mbridge/msdk/video/bt/module/a/b;Ljava/lang/String;)V

    iput-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    goto :goto_0

    .line 406
    :cond_2
    new-instance v11, Lccsancom/mbridge/msdk/video/bt/module/b/d;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v8, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lccsancom/mbridge/msdk/video/bt/module/b/d;-><init>(Lccsanandroid/content/Context;ZLccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 408
    :goto_0
    new-instance v3, Lccsancom/mbridge/msdk/video/bt/module/b/e;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-direct {v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/b/e;-><init>(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->registerErrorListener(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;)V

    .line 409
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 410
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowingTransparent()V

    .line 412
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getLayoutID()I

    move-result v3

    .line 413
    if-gtz v3, :cond_3

    .line 414
    const-string v0, "layoutID not found"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 416
    :cond_3
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lccsanandroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lccsanandroid/view/View;

    .line 417
    nop

    .line 2109
    new-instance v4, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 417
    invoke-virtual {p0, v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 418
    nop

    .line 2113
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a:Z

    if-eqz v3, :cond_4

    .line 2114
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setMatchParent()V

    .line 419
    :cond_4
    nop

    .line 2349
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findWindVaneWebView()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2350
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findMBridgeVideoView()Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 2351
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoLayout(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 2352
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setIsIV(Z)V

    .line 2353
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setUnitId(Ljava/lang/String;)V

    .line 2354
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-eqz v3, :cond_5

    .line 2355
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->K:I

    iget v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    iget v8, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->M:I

    iget v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->N:I

    invoke-virtual {v3, v4, v7, v8, v9}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V

    .line 2357
    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->findMBridgeContainerView()Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 2358
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-eqz v3, :cond_6

    .line 2359
    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget v8, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->J:I

    iget v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->K:I

    iget v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    iget v11, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->M:I

    iget v12, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->N:I

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setNotchPadding(IIIII)V

    .line 2361
    :cond_6
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->initViews()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 419
    :goto_1
    nop

    .line 420
    if-nez v3, :cond_8

    .line 421
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    const-string v1, "not found View IDS"

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;->a(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_16

    .line 423
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 426
    :cond_8
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b:Z

    .line 427
    nop

    .line 2615
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2616
    new-instance v14, Lccsancom/mbridge/msdk/video/signal/factory/b;

    iget-object v8, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v11, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v12, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v13, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;

    invoke-direct {v13, p0, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    move-object v7, v14

    move-object v9, v3

    invoke-direct/range {v7 .. v13}, Lccsancom/mbridge/msdk/video/signal/factory/b;-><init>(Lccsanandroid/app/Activity;Lccsanandroid/webkit/WebView;Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/signal/c$a;)V

    iput-object v14, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    .line 2617
    invoke-virtual {p0, v14}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->registerJsFactory(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    const-string v7, "preload template webview is null or load error"

    if-eqz v3, :cond_15

    .line 2619
    :try_start_1
    iget-object v8, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lccsanandroid/view/View;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v8

    check-cast v8, Lccsanandroid/view/ViewGroup;

    .line 2620
    iget-object v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v3, v9}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 2621
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 2622
    invoke-virtual {p0, v2, v7}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    .line 2623
    goto/16 :goto_7

    .line 2625
    :cond_9
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v7, :cond_13

    .line 2626
    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {v7, v9}, Lccsancom/mbridge/msdk/video/signal/factory/b;->a(Lccsancom/mbridge/msdk/video/signal/a/j;)V

    .line 2627
    nop

    .line 2652
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v7

    iget v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->q:I

    invoke-interface {v7, v9}, Lccsancom/mbridge/msdk/video/signal/c;->a(I)V

    .line 2653
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v7

    iget-object v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-interface {v7, v9}, Lccsancom/mbridge/msdk/video/signal/c;->a(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v7

    iget-object v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-interface {v7, v9}, Lccsancom/mbridge/msdk/video/signal/c;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 2655
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v7

    new-instance v9, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;

    invoke-direct {v9, p0, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    invoke-interface {v7, v9}, Lccsancom/mbridge/msdk/video/signal/c;->a(Lccsancom/mbridge/msdk/video/signal/c$a;)V

    .line 2657
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2658
    :cond_a
    new-instance v5, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;-><init>(Lccsanandroid/content/Context;)V

    iput-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ah:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;

    .line 2659
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->c()V

    .line 2660
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ah:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->a()D

    .line 2661
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ah:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;

    new-instance v7, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;

    invoke-direct {v7, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->a(Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;)V

    .line 2628
    :cond_b
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/video/signal/a/j;->o()I

    move-result v5

    .line 2629
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v7

    invoke-interface {v7, v5}, Lccsancom/mbridge/msdk/video/signal/e;->readyStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2630
    nop

    .line 3270
    :try_start_2
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_11

    .line 3271
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 3274
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3275
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->i(Lccsanandroid/content/Context;)I

    move-result v7

    .line 3276
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lccsancom/mbridge/msdk/foundation/tools/u;->j(Lccsanandroid/content/Context;)I

    move-result v9

    .line 3277
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3278
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lccsancom/mbridge/msdk/foundation/tools/u;->k(Lccsanandroid/content/Context;)I

    move-result v10

    .line 3279
    const/4 v11, 0x2

    if-ne v5, v11, :cond_c

    .line 3280
    add-int/2addr v7, v10

    goto :goto_2

    .line 3282
    :cond_c
    add-int/2addr v9, v10

    .line 3284
    :goto_2
    goto :goto_3

    .line 3286
    :cond_d
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v7

    .line 3287
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v9

    .line 3289
    :cond_e
    :goto_3
    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v10

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result v10

    .line 3290
    iget-object v11, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v11}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v11

    if-ne v11, v4, :cond_f

    .line 3291
    move v10, v5

    .line 3293
    :cond_f
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v11

    invoke-interface {v11, v5, v10, v7, v9}, Lccsancom/mbridge/msdk/video/signal/f;->a(IIII)V

    .line 3294
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 3295
    sget-object v7, Lccsancom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v5, v7, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3297
    :try_start_3
    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    if-eqz v7, :cond_10

    .line 3298
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7}, Lccsanorg/json/JSONObject;-><init>()V

    .line 3299
    const-string v9, "name"

    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3300
    const-string v9, "amount"

    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/b/c;->b()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 3301
    iget-object v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->p:Ljava/lang/String;

    invoke-virtual {v7, v1, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3302
    const-string v9, "userId"

    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3303
    const-string v9, "reward"

    invoke-virtual {v5, v9, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3304
    const-string v7, "playVideoMute"

    iget v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->q:I

    invoke-virtual {v5, v7, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 3305
    const-string v7, "extra"

    iget-object v9, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3311
    :cond_10
    :goto_4
    goto :goto_5

    .line 3309
    :catch_0
    move-exception v7

    .line 3310
    :try_start_4
    sget-object v9, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3307
    :catch_1
    move-exception v7

    .line 3308
    sget-object v9, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v7}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3312
    :goto_5
    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3313
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v7

    invoke-interface {v7, v5}, Lccsancom/mbridge/msdk/video/signal/f;->a(Ljava/lang/Object;)V

    .line 3314
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v5

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v9, "oncutoutfetched"

    iget-object v10, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v9, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    invoke-interface {v2, v4}, Lccsancom/mbridge/msdk/video/signal/c;->b(Z)V

    .line 3316
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->loadModuleDatas()V

    .line 3317
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v2, v5, v9, v10}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3323
    :cond_11
    goto :goto_6

    .line 3319
    :catch_2
    move-exception v2

    .line 3320
    :try_start_5
    sget-boolean v5, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v5, :cond_12

    .line 3321
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2631
    :cond_12
    :goto_6
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/c$a;->a()V

    .line 2632
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-eqz v2, :cond_13

    .line 2633
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    iget v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->S:I

    invoke-interface {v2, v5}, Lccsancom/mbridge/msdk/video/signal/c;->e(I)V

    .line 2637
    :cond_13
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/c;->a()I

    move-result v2

    if-ne v2, v4, :cond_14

    .line 2638
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lccsanandroid/view/View;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 2639
    if-eqz v0, :cond_14

    .line 2640
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lccsanandroid/view/View;

    check-cast v1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 2641
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lccsanandroid/view/View;

    check-cast v1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1, v0, v4}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;I)V

    .line 2645
    :cond_14
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2646
    goto :goto_7

    .line 2647
    :cond_15
    invoke-virtual {p0, v2, v7}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 432
    :cond_16
    :goto_7
    goto :goto_8

    .line 430
    :catchall_0
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Ljava/lang/String;)V

    .line 433
    :goto_8
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 502
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Z

    if-eqz v0, :cond_0

    .line 503
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Z

    .line 506
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDestroy()V

    .line 508
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->releasePlayer()V

    .line 512
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_3

    .line 513
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 514
    if-eqz v1, :cond_2

    .line 515
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 517
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    .line 518
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 520
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v1, :cond_4

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    .line 523
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/c;->e()V

    .line 528
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    if-eqz v1, :cond_5

    .line 529
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;)V

    .line 532
    :cond_5
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_12

    .line 533
    nop

    .line 3878
    :try_start_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->U:Z

    .line 3880
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 3881
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    .line 3884
    :cond_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v1, :cond_b

    .line 3885
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    sget v3, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-eq v1, v3, :cond_7

    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->t:I

    sget v3, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v1, v3, :cond_9

    .line 3887
    :cond_7
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    if-ne v3, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    invoke-interface {v1, v0, v3}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZI)V

    .line 3889
    :cond_9
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    if-nez v0, :cond_a

    .line 3890
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(I)V

    .line 3892
    :cond_a
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 3894
    :cond_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ai:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3895
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3896
    :cond_d
    nop

    .line 4825
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->V:Z

    if-eqz v0, :cond_e

    .line 4826
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    const-string v1, "sendToServerRewardInfo"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4827
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->n:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    :cond_e
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-nez v0, :cond_10

    .line 3899
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Z

    if-eqz v0, :cond_f

    .line 3900
    const/16 v0, 0x11f

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_1

    .line 3902
    :cond_f
    const/16 v0, 0x5e

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 3905
    :cond_10
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_11

    .line 3906
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3910
    :cond_11
    goto :goto_2

    .line 3908
    :catchall_0
    move-exception v0

    .line 3909
    :try_start_2
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    :cond_12
    :goto_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->aa:Z

    if-nez v0, :cond_13

    .line 536
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f()V

    .line 539
    :cond_13
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ah:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;

    if-eqz v0, :cond_14

    .line 540
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->d()V

    .line 543
    :cond_14
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Z

    if-nez v0, :cond_16

    .line 544
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 545
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$4;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 554
    :cond_15
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_16

    .line 555
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    .line 560
    :cond_16
    :goto_3
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->aa:Z

    if-nez v0, :cond_17

    .line 561
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f()V

    .line 563
    :cond_17
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    goto :goto_4

    .line 565
    :catchall_1
    move-exception v0

    .line 566
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :goto_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 489
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDetachedFromWindow()V

    .line 490
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 451
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onPause()V

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Z

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    .line 457
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 463
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onResume()V

    .line 465
    nop

    .line 3327
    nop

    .line 3328
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->R:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 3329
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    goto :goto_0

    .line 3330
    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 3331
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i:Ljava/lang/Runnable;

    goto :goto_0

    .line 3330
    :cond_1
    const/4 v0, 0x0

    .line 3333
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3335
    iput v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->R:I

    .line 468
    :cond_2
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 471
    :cond_3
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 472
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 474
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_5

    .line 475
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/view/View;)V

    .line 477
    :cond_5
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ac:Z

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_6

    .line 479
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_6
    goto :goto_1

    .line 482
    :catchall_0
    move-exception v0

    .line 483
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 494
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStop()V

    .line 495
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_0

    .line 496
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 498
    :cond_0
    return-void
.end method

.method public preload()V
    .locals 0

    .line 572
    return-void
.end method

.method public receiveSuccess()V
    .locals 4

    .line 727
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    const-string v1, "receiveSuccess ,start hybrid"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 729
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ai:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    return-void
.end method

.method public registerErrorListener(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    .line 136
    return-void
.end method

.method public setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1224
    return-void
.end method

.method public setCampaignDownLoadTask(Lccsancom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 1254
    return-void
.end method

.method public setCampaignExpired(Z)V
    .locals 2

    .line 1232
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 1233
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1234
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 1235
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_2

    .line 1236
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1237
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_0

    .line 1239
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_0

    .line 1243
    :cond_1
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 1244
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :cond_2
    :goto_0
    goto :goto_1

    .line 1247
    :catch_0
    move-exception p1

    .line 1248
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :goto_1
    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Ljava/lang/String;

    .line 1310
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->E:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public setJSFactory(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 1265
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->F:Lccsancom/mbridge/msdk/video/signal/factory/b;

    .line 1266
    return-void
.end method

.method public setMBridgeTempCallback(Lccsancom/mbridge/msdk/video/bt/module/a/b;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    .line 1262
    return-void
.end method

.method public setMatchParent()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 124
    :cond_0
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    :goto_0
    return-void
.end method

.method public setMediaPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .line 106
    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 7

    .line 1281
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->J:I

    .line 1282
    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->K:I

    .line 1283
    iput p3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    .line 1284
    iput p4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->M:I

    .line 1285
    iput p5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->N:I

    .line 1287
    invoke-static {p1, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    .line 1289
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/c;->b(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oncutoutfetched"

    invoke-virtual {v0, v1, v3, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_1

    .line 1300
    invoke-virtual {v0, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V

    .line 1303
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v1, :cond_2

    .line 1304
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setNotchPadding(IIIII)V

    .line 1306
    :cond_2
    return-void
.end method

.method public setShowRewardListener(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 1258
    return-void
.end method

.method public setShowingTransparent()V
    .locals 3

    .line 605
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->ab:Z

    .line 606
    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_reward_theme"

    const-string v2, "style"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 608
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v1, v0}, Lccsanandroid/app/Activity;->setTheme(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    .line 1277
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->S:I

    .line 1278
    return-void
.end method

.method public superDefaultLoad(ILjava/lang/String;)V
    .locals 0

    .line 340
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;->a(Z)V

    .line 343
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_0

    .line 344
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 346
    :cond_0
    return-void
.end method
