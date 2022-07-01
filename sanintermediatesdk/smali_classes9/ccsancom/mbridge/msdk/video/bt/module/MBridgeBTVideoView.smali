.class public Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;
.super Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;
.source "MBridgeBTVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;
    }
.end annotation


# static fields
.field private static F:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lccsanandroid/widget/FrameLayout;

.field private p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

.field private q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

.field private r:Lccsanandroid/widget/TextView;

.field private s:Lccsanandroid/view/View;

.field private t:Lccsanandroid/webkit/WebView;

.field private u:Lccsancom/mbridge/msdk/videocommon/download/a;

.field private v:I

.field private w:I

.field private x:I

.field private y:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->F:Z

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 53
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->v:I

    .line 54
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->w:I

    .line 55
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->x:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    .line 61
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->B:Z

    .line 62
    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->C:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->D:I

    .line 72
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->G:Z

    .line 74
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->H:Z

    .line 76
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->I:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 53
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->v:I

    .line 54
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->w:I

    .line 55
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->x:I

    .line 59
    const/4 p2, 0x2

    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    .line 61
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->B:Z

    .line 62
    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->C:I

    .line 63
    const/4 p2, 0x1

    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->D:I

    .line 72
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->G:Z

    .line 74
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->H:Z

    .line 76
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->I:Z

    .line 86
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsancom/mbridge/msdk/playercommon/PlayerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    return-object p0
.end method

.method static synthetic a(II)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 38
    sput-boolean p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->F:Z

    return p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    return-object p0
.end method

.method private static b(II)Ljava/lang/String;
    .locals 3

    .line 650
    const-string v0, ""

    if-eqz p1, :cond_0

    .line 651
    int-to-float p0, p0

    int-to-float v1, p1

    div-float/2addr p0, v1

    float-to-double v1, p0

    .line 653
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 654
    :catchall_0
    move-exception p0

    .line 655
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 658
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Z
    .locals 4

    .line 315
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mbridge_vfpv"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/PlayerView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    .line 316
    const-string v1, "mbridge_sound_switch"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    .line 317
    const-string v1, "mbridge_tv_count"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->r:Lccsanandroid/widget/TextView;

    .line 318
    const-string v1, "mbridge_rl_playing_close"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->s:Lccsanandroid/view/View;

    .line 319
    const-string v1, "mbridge_top_control"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->J:Lccsanandroid/widget/FrameLayout;

    .line 320
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setIsBTVideo(Z)V

    .line 321
    const/4 v1, 0x4

    new-array v1, v1, [Lccsanandroid/view/View;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    aput-object v3, v1, v0

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->r:Lccsanandroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->s:Lccsanandroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 322
    :catchall_0
    move-exception v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BTBaseView"

    invoke-static {v3, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    return v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)I
    .locals 0

    .line 38
    iget p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    return p0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 342
    const-string v0, ""

    .line 344
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->u:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 346
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->u:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 348
    move-object v0, v1

    .line 353
    :cond_0
    goto :goto_0

    .line 351
    :catchall_0
    move-exception v1

    .line 352
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BTBaseView"

    invoke-static {v3, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    :goto_0
    return-object v0
.end method

.method private d()I
    .locals 4

    .line 358
    nop

    .line 360
    const/4 v0, 0x5

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    .line 361
    if-nez v1, :cond_0

    .line 362
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->c()Lccsancom/mbridge/msdk/videocommon/d/a;

    .line 364
    :cond_0
    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->f()J

    move-result-wide v0

    long-to-int v0, v0

    .line 367
    :cond_1
    const-string v1, "BTBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MBridgeBaseView buffetTimeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    :goto_0
    return v0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->r:Lccsanandroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 390
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a()V

    .line 391
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->h:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->s:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 423
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 443
    :cond_0
    return-void
.end method

.method public getMute()I
    .locals 1

    .line 185
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    return v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 1

    .line 116
    const-string p1, "mbridge_reward_videoview_item"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 117
    if-lez p1, :cond_1

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 119
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b()Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->h:Z

    .line 120
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->h:Z

    if-nez p1, :cond_0

    .line 121
    const-string p1, "BTBaseView"

    const-string v0, "MBridgeVideoView init fail"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a()V

    .line 125
    :cond_1
    const/4 p1, 0x0

    sput-boolean p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->F:Z

    .line 126
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 154
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->onAttachedToWindow()V

    .line 155
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->I:Z

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->C:I

    .line 158
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->s:Lccsanandroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 159
    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->w:I

    if-nez v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 161
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    if-eqz v0, :cond_4

    .line 162
    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->x:I

    if-nez v3, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    .line 164
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->r:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 165
    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->v:I

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 167
    :cond_6
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 91
    return-void
.end method

.method public onDestory()V
    .locals 2

    .line 292
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->release()V

    .line 295
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    .line 297
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->s:Lccsanandroid/view/View;

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 304
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    .line 307
    :cond_3
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isPlayIng()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->H:Z

    .line 141
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setIsBTVideoPlaying(Z)V

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->onPause()V

    .line 144
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setDesk(Z)V

    .line 132
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->H:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->start(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 257
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->pause()V

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 261
    const-string v1, "onPlayerPause"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :goto_0
    return-void
.end method

.method public play()V
    .locals 4

    .line 205
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->I:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "onPlayerPlay"

    if-nez v0, :cond_3

    .line 206
    :try_start_1
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->C:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->playMute()Z

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->playUnMute()Z

    .line 211
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo()Z

    move-result v0

    .line 212
    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->y:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;

    if-eqz v0, :cond_1

    .line 214
    const-string v3, "play video failed"

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->onPlayError(Ljava/lang/String;)V

    .line 217
    :cond_1
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->I:Z

    .line 218
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 219
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    goto :goto_2

    .line 222
    :cond_3
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->B:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo(I)Z

    .line 224
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->B:Z

    goto :goto_1

    .line 226
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->start(Z)V

    .line 228
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 229
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :cond_5
    :goto_2
    goto :goto_3

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :goto_3
    return-void
.end method

.method public playMute()Z
    .locals 5

    .line 171
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->closeSound()V

    .line 173
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 174
    const/4 v1, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    .line 175
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    const-string v3, "onPlayerMute"

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return v1

    .line 180
    :cond_0
    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTBaseView"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return v0
.end method

.method public playUnMute()Z
    .locals 4

    .line 190
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->openSound()V

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 193
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    .line 194
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    const-string v2, "onUnmute"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return v1

    .line 199
    :cond_0
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public preLoadData()V
    .locals 7

    .line 375
    nop

    .line 1329
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_1

    .line 1331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 1332
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->u:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 1334
    goto :goto_1

    .line 1336
    :cond_0
    goto :goto_0

    .line 376
    :cond_1
    :goto_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->A:I

    .line 377
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->E:Ljava/lang/String;

    .line 378
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->E:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_4

    .line 379
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;Lccsanandroid/webkit/WebView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->y:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;

    .line 380
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1696
    nop

    .line 1697
    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 1698
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 1699
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v2

    goto :goto_2

    .line 1701
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    .line 1702
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->p()I

    move-result v2

    goto :goto_2

    .line 1705
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    .line 1706
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->p()I

    move-result v2

    .line 1708
    :goto_2
    nop

    .line 380
    nop

    .line 1712
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v4

    .line 1713
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->q()I

    move-result v4

    .line 380
    invoke-virtual {v0, v2, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a(II)V

    .line 381
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    iget v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->A:I

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->initBufferIngParam(I)V

    .line 382
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->E:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->y:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;

    invoke-virtual {v0, v2, v4, v5}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z

    .line 383
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->soundOperate(IILjava/lang/String;)V

    .line 385
    :cond_4
    sput-boolean v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->F:Z

    .line 386
    return-void
.end method

.method public resume()V
    .locals 3

    .line 239
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_1

    .line 240
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->B:Z

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo(I)Z

    .line 242
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->B:Z

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->onResume()V

    .line 246
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 247
    const-string v1, "onPlayerResume"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_1
    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_1
    return-void
.end method

.method public setCloseViewVisable(I)V
    .locals 1

    .line 634
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->s:Lccsanandroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 635
    return-void
.end method

.method public setCountDownTextViewVisable(I)V
    .locals 1

    .line 630
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->r:Lccsanandroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 631
    return-void
.end method

.method public setCreateWebView(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    .line 48
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 4

    .line 674
    if-gtz p1, :cond_0

    .line 675
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->J:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p1}, Lccsanandroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    .line 678
    :cond_0
    if-gtz p2, :cond_1

    .line 679
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->J:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p2}, Lccsanandroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    .line 682
    :cond_1
    if-gtz p3, :cond_2

    .line 683
    iget-object p3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->J:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p3}, Lccsanandroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    .line 686
    :cond_2
    if-gtz p4, :cond_3

    .line 687
    iget-object p4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->J:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p4}, Lccsanandroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p4

    .line 690
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTCH BTVideoView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->J:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p3, p2, p4}, Lccsanandroid/widget/FrameLayout;->setPadding(IIII)V

    .line 693
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 66
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->D:I

    .line 67
    return-void
.end method

.method public setPlaybackParams(F)V
    .locals 1

    .line 668
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setPlaybackParams(F)V

    .line 671
    :cond_0
    return-void
.end method

.method public setShowClose(I)V
    .locals 0

    .line 638
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->w:I

    .line 639
    return-void
.end method

.method public setShowMute(I)V
    .locals 0

    .line 642
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->x:I

    .line 643
    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 646
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->v:I

    .line 647
    return-void
.end method

.method public setSoundImageViewVisble(I)V
    .locals 1

    .line 626
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    .line 627
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 662
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setVolume(FF)V

    .line 665
    :cond_0
    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .locals 2

    .line 96
    iget-boolean p3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->h:Z

    if-eqz p3, :cond_3

    .line 97
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->z:I

    .line 98
    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 99
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 100
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->closeSound()V

    goto :goto_0

    .line 101
    :cond_0
    if-ne p1, v0, :cond_1

    .line 102
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 103
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->openSound()V

    .line 106
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    .line 107
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    goto :goto_1

    .line 108
    :cond_2
    if-ne p2, v0, :cond_3

    .line 109
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->q:Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setVisibility(I)V

    .line 112
    :cond_3
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 271
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->pause()V

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->prepare()V

    .line 276
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->p:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->justSeekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->t:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 281
    const-string v1, "onPlayerStop"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    :cond_0
    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    :goto_1
    return-void
.end method
