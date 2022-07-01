.class public Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.super Lccsanandroid/widget/LinearLayout;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;,
        Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;
    }
.end annotation


# static fields
.field private static F:Lccsanandroid/os/Handler;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private D:Lccsancom/mbridge/msdk/nativex/listener/a;

.field private E:Ljava/util/Timer;

.field private G:Lccsancom/mbridge/msdk/videocommon/download/a;

.field private H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

.field private I:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;

.field private J:Z

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private volatile l:I

.field private m:Z

.field private n:Z

.field private o:Lccsanandroid/view/TextureView;

.field private p:Lccsanandroid/widget/LinearLayout;

.field private q:Lccsanandroid/view/Surface;

.field private r:Lccsanandroid/widget/ProgressBar;

.field private s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

.field private t:Lccsanandroid/widget/ImageView;

.field private u:Lccsanandroid/widget/ImageView;

.field private v:Lccsanandroid/widget/ImageView;

.field private w:Lccsanandroid/widget/ImageView;

.field private x:Lccsanandroid/view/View;

.field private y:Lccsanandroid/graphics/drawable/AnimationDrawable;

.field private z:Lccsanandroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lccsanandroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 101
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    .line 55
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    .line 56
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 57
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 58
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 60
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    .line 62
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    .line 63
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    .line 64
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l:I

    .line 67
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    .line 68
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    .line 94
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Z

    .line 102
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a()V

    .line 103
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    .line 55
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    .line 56
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 57
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 58
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 60
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    .line 61
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    .line 62
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    .line 63
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    .line 64
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l:I

    .line 67
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    .line 68
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    .line 94
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Z

    .line 107
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a()V

    .line 108
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Lccsanandroid/view/Surface;)Lccsanandroid/view/Surface;
    .locals 0

    .line 48
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Lccsanandroid/view/Surface;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 112
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c()V

    .line 113
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 120
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    .line 121
    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->setSelfVideoFeedsPlayerListener(Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V

    .line 122
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsanandroid/widget/ImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 126
    const-string v0, "id"

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_playerview"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v4, "mbridge_ll_loading"

    invoke-static {v2, v4, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/LinearLayout;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->p:Lccsanandroid/widget/LinearLayout;

    .line 130
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v4, "mbridge_textureview"

    invoke-static {v2, v4, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/TextureView;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->o:Lccsanandroid/view/TextureView;

    .line 131
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lccsanandroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 132
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->o:Lccsanandroid/view/TextureView;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;

    invoke-direct {v4, p0, v3}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;)V

    invoke-virtual {v2, v4}, Lccsanandroid/view/TextureView;->setSurfaceTextureListener(Lccsanandroid/view/TextureView$SurfaceTextureListener;)V

    .line 133
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_progress"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ProgressBar;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Lccsanandroid/widget/ProgressBar;

    .line 134
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_playend_pic"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    .line 135
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_play"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ImageView;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    .line 136
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_pause"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ImageView;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Lccsanandroid/widget/ImageView;

    .line 137
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_sound"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ImageView;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Lccsanandroid/widget/ImageView;

    .line 138
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_view_cover"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Lccsanandroid/view/View;

    .line 139
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_iv_sound_animation"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Lccsanandroid/widget/ImageView;

    .line 140
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->y:Lccsanandroid/graphics/drawable/AnimationDrawable;

    .line 141
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimationDrawable;->start()V

    .line 142
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V

    .line 143
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0, v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->addView(Lccsanandroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    return p1
.end method

.method private d()V
    .locals 2

    .line 414
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$3;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$3;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 459
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i()V

    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    return p1
.end method

.method private e()V
    .locals 2

    .line 556
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 558
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i()V

    .line 559
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k()V

    .line 560
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Lccsanandroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k()V

    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    return p1
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsanandroid/widget/ImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 568
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 570
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j()V

    .line 571
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 578
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 582
    :cond_0
    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 3

    .line 48
    nop

    .line 3757
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l()V

    .line 3758
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    .line 3759
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$7;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$7;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    .line 3769
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 48
    return-void
.end method

.method private h()V
    .locals 2

    .line 585
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->w:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 588
    :cond_0
    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j()V

    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 607
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 608
    return-void
.end method

.method private j()V
    .locals 2

    .line 611
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 614
    :cond_0
    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    return p0
.end method

.method private k()V
    .locals 2

    .line 617
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 618
    return-void
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 774
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 775
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 777
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_1
    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :goto_0
    return-void
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    return p0
.end method

.method private m()Ljava/lang/String;
    .locals 5

    .line 787
    const-string v0, "MediaViewPlayerView"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 788
    return-object v1

    .line 791
    :cond_0
    :try_start_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-nez v3, :cond_3

    .line 793
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v3, 0x11f

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 796
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 794
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 798
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lccsancom/mbridge/msdk/videocommon/download/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 802
    :cond_3
    goto :goto_2

    .line 800
    :catch_0
    move-exception v2

    .line 801
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v2, :cond_4

    .line 804
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v2

    .line 805
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 806
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 807
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 808
    if-eqz v3, :cond_4

    .line 809
    return-object v2

    .line 813
    :cond_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_5

    .line 815
    return-object v2

    .line 819
    :cond_5
    goto :goto_3

    .line 817
    :catch_1
    move-exception v2

    .line 818
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :goto_3
    return-object v1
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    return p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return p0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    return p0
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    return-object p0
.end method


# virtual methods
.method public closeSound()V
    .locals 4

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 325
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_sound_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_0
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void
.end method

.method public curIsFullScreen()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    return v0
.end method

.method public getCampaign()Lccsancom/mbridge/msdk/out/Campaign;
    .locals 1

    .line 402
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getIsActiviePause()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return v0
.end method

.method public gonePauseView()V
    .locals 2

    .line 539
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->F:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 540
    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$5;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$5;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    :cond_0
    return-void
.end method

.method public halfLoadingViewisVisible()Z
    .locals 2

    .line 346
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->loadingViewIsVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_0
    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrepare()Z
    .locals 2

    .line 279
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hasPrepare()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 284
    :cond_0
    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public initPlayerViewData(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZLccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)Z
    .locals 11

    .line 153
    move-object v1, p0

    move-object v0, p2

    const-string v2, "MediaViewPlayerView"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    return v4

    .line 156
    :cond_0
    if-nez v0, :cond_1

    .line 157
    return v4

    .line 159
    :cond_1
    move-object v5, p1

    iput-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    .line 160
    move v5, p3

    iput-boolean v5, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b:Z

    .line 161
    iput-object v0, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 162
    move-object/from16 v5, p5

    iput-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->G:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 163
    move-object/from16 v5, p6

    iput-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    .line 164
    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-boolean v8, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    iget-object v9, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->initParameter(Ljava/lang/String;ZZLccsanandroid/view/View;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    nop

    .line 1718
    :try_start_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_2

    .line 1719
    goto :goto_1

    .line 1721
    :cond_2
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1723
    goto :goto_1

    .line 1725
    :cond_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1726
    goto :goto_1

    .line 1728
    :cond_4
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1729
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 1730
    iget-object v6, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 1731
    invoke-virtual {v6, v0}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1732
    iget-object v0, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 1733
    iget-object v0, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 1735
    :cond_5
    goto :goto_0

    .line 1736
    :cond_6
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v5

    new-instance v6, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;

    invoke-direct {v6, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v5, v0, v6}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1753
    :goto_0
    goto :goto_1

    .line 1751
    :catchall_0
    move-exception v0

    .line 1752
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_1
    iput-boolean v3, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    .line 171
    :goto_2
    return v3
.end method

.method public isComplete()Z
    .locals 2

    .line 290
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->isComplete()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 295
    :cond_0
    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 306
    :cond_0
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBufferingEnd()V
    .locals 0

    .line 672
    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 0

    .line 668
    return-void
.end method

.method public onClickPlayButton()V
    .locals 4

    .line 463
    const-string v0, "MediaViewPlayerView"

    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    .line 464
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j()V

    .line 465
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsComplete(Z)V

    .line 467
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    if-nez v2, :cond_1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOrPlayVideo() hasPrepare():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsNeedToRepeatPrepare:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_0

    .line 474
    :cond_1
    const-string v2, "\u70b9\u51fb\u64ad\u653e playVideo()"

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->playVideo()V

    .line 479
    :goto_0
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v2, :cond_2

    .line 480
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    if-eqz v2, :cond_2

    .line 481
    invoke-interface {v2}, Lccsancom/mbridge/msdk/nativex/listener/a;->d()V

    .line 484
    :cond_2
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    goto :goto_1

    .line 485
    :catchall_0
    move-exception v1

    .line 486
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    :goto_1
    return-void
.end method

.method public onClickPlayerView()V
    .locals 3

    .line 492
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->s:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->u:Lccsanandroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 499
    return-void

    .line 501
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 502
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V

    .line 503
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l()V

    goto :goto_0

    .line 505
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Lccsanandroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_4

    .line 506
    invoke-virtual {v0}, Lccsanandroid/view/animation/AlphaAnimation;->cancel()V

    .line 508
    :cond_4
    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Lccsanandroid/view/animation/AlphaAnimation;

    .line 509
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 510
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Lccsanandroid/view/animation/AlphaAnimation;

    new-instance v1, Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Lccsanandroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lccsanandroid/view/animation/AlphaAnimation;->setInterpolator(Lccsanandroid/view/animation/Interpolator;)V

    .line 511
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Lccsanandroid/view/animation/AlphaAnimation;

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$4;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/animation/AlphaAnimation;->setAnimationListener(Lccsanandroid/view/animation/Animation$AnimationListener;)V

    .line 526
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i()V

    .line 527
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->x:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->z:Lccsanandroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->startAnimation(Lccsanandroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_0
    goto :goto_1

    .line 529
    :catchall_0
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_1
    return-void
.end method

.method public onPlayCompleted()V
    .locals 2

    .line 649
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/nativex/listener/a;->b(Ljava/lang/String;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->I:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    goto :goto_0

    .line 657
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    if-nez v0, :cond_2

    .line 658
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_2
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 4

    .line 677
    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 678
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    .line 679
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Z

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Lccsanandroid/view/Surface;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/view/Surface;)V

    .line 681
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_0
    goto :goto_0

    .line 683
    :catch_0
    move-exception p1

    .line 684
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 1

    .line 630
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    .line 631
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g()V

    .line 632
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 633
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 636
    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    goto :goto_0

    .line 637
    :catchall_0
    move-exception p1

    .line 638
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 640
    :goto_0
    return-void
.end method

.method public onPlayProgressMS(II)V
    .locals 1

    .line 644
    nop

    .line 2700
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2701
    if-lez p2, :cond_0

    .line 2702
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    .line 2704
    :cond_0
    if-ltz p1, :cond_1

    .line 2705
    add-int/lit8 p1, p1, 0x1

    .line 2706
    iget-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2712
    :cond_1
    goto :goto_0

    .line 2710
    :catchall_0
    move-exception p1

    .line 2711
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaViewPlayerView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 2

    .line 691
    const-string p1, "MediaViewPlayerView"

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    nop

    .line 2826
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    goto :goto_0

    .line 2829
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->C:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 2830
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2831
    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2835
    :cond_1
    goto :goto_0

    .line 2833
    :catchall_0
    move-exception v0

    .line 2834
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 695
    :goto_0
    goto :goto_1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :goto_1
    return-void
.end method

.method public onPlayStarted(I)V
    .locals 1

    .line 622
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 623
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/nativex/listener/a;->a(Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method

.method public openSound()V
    .locals 4

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 313
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_sound_open"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->openSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 245
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->pause()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 249
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void
.end method

.method public playVideo()V
    .locals 4

    .line 176
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a:Z

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-nez v0, :cond_1

    .line 180
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    if-nez v0, :cond_2

    .line 183
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    .line 184
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    :cond_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    .line 189
    :cond_5
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    .line 190
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Lccsanandroid/view/Surface;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/view/Surface;)V

    .line 191
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v0, :cond_7

    .line 192
    :cond_6
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 195
    :cond_7
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k:Z

    if-eqz v0, :cond_8

    .line 196
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->openSound()V

    goto :goto_0

    .line 198
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V

    .line 201
    :goto_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 268
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void
.end method

.method public setAllowLoopPlay(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j:Z

    .line 407
    return-void
.end method

.method public setEnterFullScreen()V
    .locals 3

    .line 367
    const-string v0, "MediaViewPlayerView"

    :try_start_0
    const-string v1, "setEnterFullScreen"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 369
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h:Z

    .line 370
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Lccsanandroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 371
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    goto :goto_0

    .line 372
    :catchall_0
    move-exception v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :goto_0
    return-void
.end method

.method public setExitFullScreen()V
    .locals 3

    .line 379
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 380
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 381
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->v:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g()V

    .line 383
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaViewPlayerView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    :goto_0
    return-void
.end method

.method public setIsActivePause(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 395
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 1

    .line 357
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->setIsComplete(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_0
    goto :goto_0

    .line 360
    :catchall_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 1

    .line 336
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->setIsFrontDesk(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_0
    goto :goto_0

    .line 339
    :catchall_0
    move-exception p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void
.end method

.method public setMediaViewPlayListener(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->I:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;

    .line 98
    return-void
.end method

.method public setOnMediaViewPlayerViewListener(Lccsancom/mbridge/msdk/nativex/listener/a;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->D:Lccsancom/mbridge/msdk/nativex/listener/a;

    .line 411
    return-void
.end method

.method public showPlayView()V
    .locals 2

    .line 535
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->t:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 536
    return-void
.end method

.method public showProgressView(Z)V
    .locals 1

    .line 591
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n:Z

    .line 592
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->r:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 593
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 595
    :cond_1
    return-void
.end method

.method public showSoundIndicator(Z)V
    .locals 0

    .line 598
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m:Z

    .line 599
    if-eqz p1, :cond_0

    .line 600
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g()V

    goto :goto_0

    .line 602
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h()V

    .line 604
    :goto_0
    return-void
.end method

.method public startOrPlayVideo()V
    .locals 4

    .line 209
    const-string v0, "MediaViewPlayerView"

    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g:Z

    if-nez v1, :cond_0

    .line 210
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e()V

    .line 211
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->playVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :cond_1
    nop

    .line 2225
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-nez v1, :cond_2

    .line 2226
    goto :goto_1

    .line 2228
    :cond_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f()V

    .line 2229
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2230
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->q:Lccsanandroid/view/Surface;

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->start(Lccsanandroid/view/Surface;)V

    .line 2231
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i:Z

    goto :goto_0

    .line 2233
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->start()V

    .line 2235
    :goto_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v1, :cond_5

    .line 2236
    :cond_4
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2240
    :cond_5
    goto :goto_1

    .line 2238
    :catchall_0
    move-exception v1

    .line 2239
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :goto_1
    goto :goto_2

    .line 218
    :catch_0
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 257
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->H:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->stop()V

    .line 260
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void
.end method
