.class public Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.super Lccsanandroid/widget/LinearLayout;
.source "MBMediaView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
.implements Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$d;,
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;,
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$b;,
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$f;,
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$g;,
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;,
        Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;
    }
.end annotation


# static fields
.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_1_LANDING_PAGE:I = 0x1

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_2_NORMAL_FULLSCREEN:I = 0x2

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_3_NORMAL_FULLSCREEN_ENDCARD:I = 0x3

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_4_NORMAL_FULLSCREEN_LP:I = 0x4

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_6_SMALLVIDEO:I = 0x6

.field public static final TAG:Ljava/lang/String; = "MBMediaView"

.field public static final WHAT_VIEW_FULL_SCREEN:I = 0x2

.field public static final WHAT_VIEW_SMALL_SCREEN:I = 0x1

.field private static o:I

.field private static p:I


# instance fields
.field private A:Lccsanandroid/widget/ProgressBar;

.field private B:Lccsanandroid/view/View;

.field private C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

.field private D:Lccsanandroid/widget/RelativeLayout;

.field private E:Lccsanandroid/widget/RelativeLayout;

.field private F:Lccsanandroid/widget/TextView;

.field private G:Lccsanandroid/widget/ProgressBar;

.field private H:Lccsanandroid/widget/RelativeLayout;

.field private I:I

.field private J:Lccsanandroid/os/Handler;

.field private K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private L:I

.field private M:I

.field private N:D

.field private O:D

.field private P:I

.field private Q:I

.field private R:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

.field private S:Lccsanandroid/hardware/SensorManager;

.field private T:Lccsanandroid/hardware/Sensor;

.field private U:Lccsancom/mbridge/msdk/videocommon/download/a;

.field private V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

.field private W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

.field private a:Z

.field private aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

.field private ab:I

.field private ac:Z

.field private ad:Z

.field private ae:Lccsanandroid/widget/RelativeLayout;

.field private af:Lccsanandroid/widget/ImageView;

.field private ag:I

.field private ah:Z

.field private ai:Lccsanandroid/content/Context;

.field private aj:Z

.field private ak:Ljava/lang/Runnable;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

.field private u:Lccsanandroid/widget/RelativeLayout;

.field private v:Lccsanandroid/widget/RelativeLayout;

.field private w:Lccsanandroid/widget/RelativeLayout;

.field private x:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

.field private y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

.field private z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    const/4 v0, 0x2

    sput v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o:I

    .line 135
    const/4 v0, 0x1

    sput v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->p:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 196
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a:Z

    .line 118
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b:Z

    .line 119
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c:Z

    .line 120
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d:Z

    .line 121
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e:Z

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f:Z

    .line 123
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g:Z

    .line 125
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    .line 126
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    .line 127
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z

    .line 129
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k:Z

    .line 130
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n:Ljava/util/ArrayList;

    .line 136
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q:Z

    .line 137
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r:Z

    .line 142
    iput v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 179
    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 183
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ac:Z

    .line 184
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    .line 189
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ah:Z

    .line 193
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aj:Z

    .line 2718
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ak:Ljava/lang/Runnable;

    .line 197
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/content/Context;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 201
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 117
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a:Z

    .line 118
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b:Z

    .line 119
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c:Z

    .line 120
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d:Z

    .line 121
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e:Z

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f:Z

    .line 123
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g:Z

    .line 125
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    .line 126
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    .line 127
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z

    .line 129
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k:Z

    .line 130
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l:Z

    .line 131
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m:Ljava/util/ArrayList;

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n:Ljava/util/ArrayList;

    .line 136
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q:Z

    .line 137
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r:Z

    .line 142
    iput v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s:I

    .line 178
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 179
    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 183
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ac:Z

    .line 184
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    .line 189
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ah:Z

    .line 193
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aj:Z

    .line 2718
    new-instance p2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ak:Ljava/lang/Runnable;

    .line 202
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/content/Context;)V

    .line 203
    return-void
.end method

.method private A()F
    .locals 2

    .line 1852
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->i(Lccsanandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 1853
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    if-eqz v1, :cond_0

    .line 1854
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->k(Lccsanandroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1857
    :cond_0
    return v0

    .line 1858
    :catchall_0
    move-exception v0

    .line 1859
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic A(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ah:Z

    return p0
.end method

.method private B()F
    .locals 2

    .line 1866
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->j(Lccsanandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 1867
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    if-nez v1, :cond_0

    .line 1868
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->k(Lccsanandroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1871
    :cond_0
    return v0

    .line 1872
    :catchall_0
    move-exception v0

    .line 1873
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic B(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)F
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A()F

    move-result p0

    return p0
.end method

.method private C()V
    .locals 4

    .line 1970
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E:Lccsanandroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1971
    :cond_0
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1972
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1973
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1974
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1975
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1976
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E:Lccsanandroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 1977
    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1980
    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1982
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->updateViewManger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    :cond_3
    goto :goto_0

    .line 1984
    :catchall_0
    move-exception v0

    .line 1985
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    :goto_0
    return-void
.end method

.method static synthetic C(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z

    return p0
.end method

.method private D()V
    .locals 4

    .line 1991
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E:Lccsanandroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1992
    :cond_0
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1993
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1994
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1995
    iget v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ab:I

    const/high16 v2, 0x41000000    # 8.0f

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1996
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->k(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1998
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2000
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2001
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E:Lccsanandroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 2002
    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2004
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2005
    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->updateViewManger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    :cond_4
    goto :goto_1

    .line 2009
    :catchall_0
    move-exception v0

    .line 2010
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    :goto_1
    return-void
.end method

.method static synthetic D(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D()V

    return-void
.end method

.method private E()V
    .locals 12

    .line 2209
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2210
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->c()[Ljava/lang/String;

    move-result-object v0

    .line 2211
    nop

    .line 2212
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    if-eqz v1, :cond_0

    .line 2213
    sget v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o:I

    goto :goto_0

    .line 2215
    :cond_0
    sget v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->p:I

    .line 2217
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2218
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&orienation="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2220
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2226
    :cond_2
    goto :goto_2

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :goto_2
    return-void
.end method

.method static synthetic E(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h()V

    return-void
.end method

.method private F()Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 2

    .line 2385
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    if-eqz v1, :cond_0

    .line 2386
    return-object v0

    .line 2388
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    if-nez v0, :cond_1

    .line 2389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2393
    :cond_1
    goto :goto_0

    .line 2391
    :catch_0
    move-exception v0

    .line 2392
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic F(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f()V

    return-void
.end method

.method static synthetic G(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g()V

    return-void
.end method

.method static synthetic H(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/os/Handler;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic I(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C()V

    return-void
.end method

.method static synthetic J(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    nop

    .line 20465
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l()V

    .line 97
    return-void
.end method

.method static synthetic K(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e()V

    return-void
.end method

.method static synthetic L(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 8

    .line 97
    nop

    .line 21045
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 21046
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 21047
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->e()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21048
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->b:Z

    .line 21049
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->e()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic M(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 8

    .line 97
    nop

    .line 21055
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 21056
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 21057
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->f()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21058
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->c:Z

    .line 21059
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->f()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic N(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 8

    .line 97
    nop

    .line 21065
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 21066
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 21067
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->h()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21068
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->e:Z

    .line 21069
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->h()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic O(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 8

    .line 97
    nop

    .line 21075
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 21076
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 21077
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->i()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21078
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->f:Z

    .line 21079
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->i()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic P(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)I
    .locals 0

    .line 97
    iget p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ag:I

    return p0
.end method

.method static synthetic Q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 2

    .line 97
    const-string v0, "MBMediaView"

    .line 21103
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21104
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 21105
    nop

    .line 21727
    :try_start_1
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz p0, :cond_0

    .line 21728
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21732
    :cond_0
    goto :goto_0

    .line 21730
    :catchall_0
    move-exception p0

    .line 21731
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21110
    :cond_1
    :goto_0
    goto :goto_1

    .line 21108
    :catchall_1
    move-exception p0

    .line 21109
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_1
    return-void
.end method

.method static synthetic R(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 97
    nop

    .line 22081
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_0

    .line 22082
    goto :goto_0

    .line 22084
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22085
    goto :goto_0

    .line 22087
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22088
    goto :goto_0

    .line 22090
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22091
    goto :goto_0

    .line 22093
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22094
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22098
    :cond_4
    goto :goto_0

    .line 22096
    :catchall_0
    move-exception p0

    .line 22097
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBMediaView"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;I)I
    .locals 0

    .line 97
    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->P:I

    return p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;
    .locals 0

    .line 97
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    return-object p1
.end method

.method private a(Z)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;
    .locals 3

    .line 956
    const/4 v0, 0x0

    .line 957
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_7

    .line 958
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 960
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 963
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 964
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 965
    sget-object p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->c:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-object v0, p1

    .line 967
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$g;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$g;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 968
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 969
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n()V

    .line 970
    goto :goto_1

    .line 972
    :cond_2
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v1, :cond_6

    .line 973
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 974
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    goto :goto_1

    .line 975
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 977
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s()I

    move-result v0

    .line 978
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    .line 979
    if-eqz v0, :cond_4

    .line 980
    sget-object p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-object v0, p1

    goto :goto_0

    .line 982
    :cond_4
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 983
    if-eqz p1, :cond_5

    .line 984
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a:Z

    if-eqz p1, :cond_5

    .line 985
    new-instance p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$f;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$f;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 986
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 990
    :cond_5
    :goto_0
    goto :goto_1

    .line 992
    :cond_6
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    :cond_7
    :goto_1
    return-object v0

    .line 998
    :catchall_0
    move-exception p1

    .line 999
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    sget-object p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 2912
    const-string v0, ""

    .line 2914
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2915
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2916
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2917
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2918
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 2923
    :cond_0
    goto :goto_0

    .line 2921
    :catchall_0
    move-exception p1

    .line 2922
    const-string p1, "MBMediaView"

    const-string v1, "code to string is error"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    :goto_0
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2929
    nop

    .line 2931
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2932
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 2933
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2934
    const-string v2, "campaignList"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2935
    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2936
    const-string p1, "sdk_info"

    invoke-virtual {v1, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2938
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 2940
    :catch_0
    move-exception p1

    .line 2941
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2942
    :cond_0
    :goto_0
    nop

    .line 2943
    :goto_1
    return-object v0
.end method

.method private a()V
    .locals 2

    .line 226
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 229
    :cond_0
    return-void
.end method

.method private a(Lccsanandroid/content/Context;)V
    .locals 1

    .line 207
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c()V

    .line 208
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b()V

    .line 209
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ai:Lccsanandroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    goto :goto_0

    .line 210
    :catchall_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/view/View;FF)V
    .locals 12

    .line 1886
    if-nez p1, :cond_0

    .line 1887
    return-void

    .line 1889
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->N:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_9

    iget-wide v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->O:D

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_1

    goto/16 :goto_4

    .line 1893
    :cond_1
    div-double/2addr v0, v4

    .line 1894
    nop

    .line 1895
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-lez v5, :cond_2

    cmpl-float v4, p3, v4

    if-lez v4, :cond_2

    .line 1896
    div-float v2, p2, p3

    float-to-double v2, v2

    .line 1898
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v4

    .line 1899
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v2

    .line 1900
    iget-object v6, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v6}, Lccsanandroid/widget/RelativeLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 1901
    nop

    .line 1902
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 1903
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsanandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 1904
    :goto_0
    const/16 v9, 0xd

    const/4 v10, -0x1

    cmpl-double v11, v4, v2

    if-lez v11, :cond_5

    .line 1905
    float-to-double p2, p2

    iget-wide v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->O:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    :try_start_1
    iget-wide v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->N:D

    div-double/2addr p2, v0

    .line 1906
    iput v10, v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1907
    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    double-to-int v10, p2

    :goto_1
    iput v10, v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1908
    invoke-virtual {v7, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1910
    iget v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    iput v0, v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1911
    double-to-int p2, p2

    iput p2, v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1912
    invoke-virtual {v6, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1914
    goto :goto_3

    :cond_5
    cmpg-double p2, v4, v2

    if-gez p2, :cond_7

    .line 1916
    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    .line 1917
    if-eqz v8, :cond_6

    const/4 v0, -0x1

    goto :goto_2

    :cond_6
    double-to-int v0, p2

    :goto_2
    :try_start_2
    iput v0, v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1918
    iput v10, v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1919
    invoke-virtual {v7, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1921
    double-to-int p2, p2

    iput p2, v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1922
    iget p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    iput p2, v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1923
    invoke-virtual {v6, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1925
    goto :goto_3

    .line 1926
    :cond_7
    iput v10, v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1927
    iput v10, v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1929
    iget p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    iput p2, v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1930
    iget p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    iput p2, v6, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1931
    invoke-virtual {v6, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1933
    :goto_3
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    if-nez p2, :cond_8

    .line 1934
    iget-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {p2, v6}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1936
    :cond_8
    invoke-virtual {p1, v7}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1939
    goto :goto_5

    .line 1890
    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsanandroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1891
    return-void

    .line 1937
    :catchall_0
    move-exception p1

    .line 1938
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    :goto_5
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q()V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 97
    nop

    .line 17639
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 17640
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 17642
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p0, :cond_1

    .line 17643
    invoke-interface {p0, p1, p2}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17647
    :cond_1
    goto :goto_0

    .line 17645
    :catch_0
    move-exception p0

    .line 17646
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MBMediaView"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/view/View;)Z
    .locals 9

    .line 1170
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1173
    :cond_0
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 1174
    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->getLocalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1175
    return v0

    .line 1177
    :cond_1
    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    mul-int v2, v2, v1

    int-to-long v1, v2

    .line 1178
    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result p1

    mul-int v3, v3, p1

    int-to-long v3, v3

    .line 1179
    long-to-float p1, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float p1, p1, v5

    float-to-long v5, p1

    .line 1180
    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-gtz p1, :cond_2

    .line 1181
    return v0

    .line 1183
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->l(Lccsanandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1184
    return v0

    .line 1186
    :cond_3
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e:Z

    if-nez p1, :cond_4

    .line 1187
    return v0

    .line 1189
    :cond_4
    cmp-long p1, v1, v5

    if-ltz p1, :cond_5

    .line 1190
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->isShown()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 1191
    const/4 p1, 0x1

    return p1

    .line 1196
    :cond_5
    goto :goto_0

    .line 1194
    :catchall_0
    move-exception p1

    .line 1195
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MBMediaView"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :goto_0
    return v0

    .line 1171
    :cond_6
    :goto_1
    return v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/view/View;)Z
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;I)I
    .locals 0

    .line 97
    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->Q:I

    return p1
.end method

.method private b()V
    .locals 5

    .line 243
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_nativex_mbmediaview"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 244
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 245
    const-string v0, "MBMediaView"

    const-string v1, "can not find mediaview resource"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_rl_mediaview_root"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->v:Lccsanandroid/widget/RelativeLayout;

    .line 250
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_ll_playerview_container"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    .line 251
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_my_big_img"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    .line 252
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_native_pb"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ProgressBar;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A:Lccsanandroid/widget/ProgressBar;

    .line 253
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_nativex_webview_layout"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    .line 254
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_nativex_webview_layout_webview"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    iput-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 255
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->v:Lccsanandroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsanandroid/widget/RelativeLayout;->setClickable(Z)V

    .line 256
    invoke-virtual {p0, v0, v1, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->addView(Lccsanandroid/view/View;II)V

    .line 257
    return-void
.end method

.method private b(Lccsanandroid/content/Context;)V
    .locals 7

    .line 830
    const-string p1, "MBMediaView"

    .line 6835
    nop

    .line 7678
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 7679
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onVideoAdClicked(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 7681
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 7682
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoAdClicked(Lccsancom/mbridge/msdk/out/Campaign;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7686
    :cond_1
    goto :goto_0

    .line 7684
    :catch_0
    move-exception v0

    .line 7685
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6836
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6839
    :cond_2
    nop

    .line 8034
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8035
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    .line 8036
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->g()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8037
    nop

    .line 8038
    nop

    .line 8039
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->g()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 6840
    :cond_3
    new-instance v0, Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 6841
    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 6897
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6900
    goto :goto_2

    .line 6837
    :cond_4
    :goto_1
    goto :goto_2

    .line 6898
    :catch_1
    move-exception v0

    .line 6899
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :goto_2
    return-void
.end method

.method private b(Lccsanandroid/view/View;)V
    .locals 3

    .line 1944
    if-nez p1, :cond_0

    .line 1945
    return-void

    .line 1947
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 1948
    const/4 v1, -0x1

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1949
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    if-eqz v2, :cond_1

    .line 1950
    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1952
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A()F

    move-result v1

    .line 1953
    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1954
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1956
    :goto_0
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    goto :goto_1

    .line 1957
    :catch_0
    move-exception p1

    .line 1958
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    :goto_1
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 7

    .line 97
    nop

    .line 13097
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13099
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/e/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/mbnative/d/a;)V

    .line 13101
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 13102
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13103
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Z

    .line 13104
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    .line 13105
    const-string v1, "is_video=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13107
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13108
    const-string v0, "&is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13110
    :cond_0
    const-string v0, "?is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13112
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 13105
    :cond_1
    move-object v4, v0

    .line 13114
    :goto_1
    const/4 v5, 0x0

    .line 13115
    const/4 v6, 0x1

    .line 13116
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 97
    :cond_2
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 97
    nop

    .line 18665
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 18666
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 18668
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p0, :cond_1

    .line 18669
    invoke-interface {p0, p1, p2}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18673
    :cond_1
    goto :goto_0

    .line 18671
    :catch_0
    move-exception p0

    .line 18672
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MBMediaView"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 9

    .line 2399
    const-string p1, "MBMediaView"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    .line 2400
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    if-nez v1, :cond_0

    .line 2401
    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 2402
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setObject(Ljava/lang/Object;)V

    .line 2403
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$5;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$5;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lccsancom/mbridge/msdk/nativex/listener/b;)V

    .line 2409
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$6;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$6;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 2424
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 2425
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    .line 2426
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2427
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    .line 2428
    const-string v0, ".zip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "md5filename"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2429
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2430
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2431
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    .line 2432
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->loadUrl(Ljava/lang/String;)V

    .line 2434
    :cond_1
    goto :goto_0

    .line 2435
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2436
    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2437
    const-string v0, "load html..."

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    .line 2439
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2444
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2446
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ad:Z

    .line 2447
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    .line 2448
    new-instance v0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 2449
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;->setTitle(Ljava/lang/String;)V

    .line 2450
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    .line 2451
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$d;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;)V

    .line 2452
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setFilter(Lccsancom/mbridge/msdk/mbsignalcommon/base/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2444
    :cond_4
    :goto_0
    nop

    .line 2459
    :cond_5
    :goto_1
    goto :goto_2

    .line 2457
    :catch_0
    move-exception v0

    .line 2458
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    :goto_2
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    return p1
.end method

.method private c()V
    .locals 1

    .line 260
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    .line 289
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 97
    nop

    .line 19652
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 19653
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 19655
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p0, :cond_1

    .line 19656
    invoke-interface {p0, p1, p2}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19660
    :cond_1
    goto :goto_0

    .line 19658
    :catch_0
    move-exception p0

    .line 19659
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MBMediaView"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private c(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1879
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Lccsanandroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z

    return p1
.end method

.method private d()V
    .locals 3

    .line 442
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Z)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 443
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->changeNoticeURL()V

    .line 444
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_0

    .line 445
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j()V

    .line 446
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m()V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_1

    .line 448
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e()V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->c:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_2

    .line 450
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n()V

    .line 451
    nop

    .line 6465
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l()V

    .line 453
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    goto :goto_1

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBMediaView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    :goto_1
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 8

    .line 97
    nop

    .line 14085
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 14086
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 14087
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->n()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14088
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->g:Z

    .line 14089
    const/4 v6, 0x0

    .line 14090
    const/4 v7, 0x0

    .line 14091
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->n()[Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ac:Z

    return p1
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    return-object p0
.end method

.method private e()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z()V

    .line 461
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k()V

    .line 462
    return-void
.end method

.method private f()V
    .locals 3

    .line 533
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v0, v1, :cond_0

    .line 534
    iget v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    if-eqz v0, :cond_0

    iget v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->Q:I

    if-eqz v1, :cond_0

    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->P:I

    if-eqz v2, :cond_0

    .line 535
    mul-int v0, v0, v1

    div-int/2addr v0, v2

    .line 536
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 538
    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    iput v2, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 539
    iput v0, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 540
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_0
    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_0
    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d:Z

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/view/View;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 551
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->c:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v0, v1, :cond_1

    .line 552
    iget v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->Q:I

    if-eqz v2, :cond_0

    iget v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->P:I

    if-eqz v3, :cond_0

    .line 553
    mul-int v0, v0, v2

    div-int/2addr v0, v3

    .line 554
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v2}, Lccsanandroid/widget/RelativeLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 556
    iget v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    iput v3, v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 557
    iput v0, v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 558
    invoke-virtual {v2, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 559
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 561
    :cond_0
    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Lccsanandroid/widget/RelativeLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 564
    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    iput v2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 565
    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    mul-int/lit16 v2, v2, 0x273

    div-int/lit16 v2, v2, 0x4b0

    iput v2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 566
    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 567
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 573
    :cond_1
    :goto_0
    goto :goto_1

    .line 571
    :catchall_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_1
    return-void
.end method

.method private h()V
    .locals 5

    .line 578
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 579
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A()F

    move-result v0

    float-to-int v0, v0

    .line 580
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->j(Lccsanandroid/content/Context;)I

    move-result v1

    .line 581
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    const/16 v3, 0xd

    if-nez v2, :cond_0

    .line 582
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/RelativeLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 583
    iget v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    iput v4, v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 584
    iget v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    iput v4, v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 585
    invoke-virtual {v2, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 586
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 587
    goto :goto_0

    .line 588
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/RelativeLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 589
    iput v0, v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 590
    iput v1, v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 591
    invoke-virtual {v2, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 592
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 595
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q()V

    .line 597
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    if-nez v2, :cond_1

    .line 598
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    int-to-float v1, v1

    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/view/View;FF)V

    goto :goto_1

    .line 600
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v2, v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/view/View;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_2
    :goto_1
    goto :goto_2

    .line 603
    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :goto_2
    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 11

    .line 97
    const-string v0, "MBMediaView"

    .line 14377
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 14381
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->handleViewStyleResult(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    move-result-object v1

    .line 14382
    if-nez v1, :cond_1

    .line 14383
    goto/16 :goto_a

    .line 14385
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getFullScreenViewByStyle(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 14386
    if-nez v1, :cond_2

    .line 14387
    goto/16 :goto_a

    .line 14390
    :cond_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x()Z

    move-result v1

    .line 14391
    if-nez v1, :cond_3

    .line 14392
    goto/16 :goto_a

    .line 14394
    :cond_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    .line 14395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    .line 14396
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r:Z

    .line 14397
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v3, :cond_4

    .line 14398
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setEnterFullScreen()V

    .line 14399
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsActivePause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 14401
    :cond_4
    nop

    .line 14610
    :try_start_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v3, :cond_5

    .line 14611
    invoke-interface {v3}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onEnterFullscreen()V

    .line 14613
    :cond_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v3, :cond_6

    .line 14614
    invoke-interface {v3}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onEnterFullscreen()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14618
    :cond_6
    goto :goto_0

    .line 14616
    :catch_0
    move-exception v3

    .line 14617
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14402
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/FrameLayout;

    .line 14403
    new-instance v4, Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 14404
    iput-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    .line 14405
    invoke-virtual {v4, v1}, Lccsanandroid/view/View;->setClickable(Z)V

    .line 14406
    iget-object v5, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/ViewGroup;

    .line 14407
    nop

    .line 14408
    invoke-virtual {v5}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 14409
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    .line 14410
    invoke-virtual {v5, v7}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-ne v8, v9, :cond_7

    .line 14411
    goto :goto_2

    .line 14409
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14413
    :cond_8
    :goto_2
    iput v7, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->I:I

    .line 14414
    new-instance v6, Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 14415
    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lccsanandroid/widget/FrameLayout;->setId(I)V

    .line 14416
    new-instance v8, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getWidth()I

    move-result v9

    .line 14417
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14418
    invoke-virtual {v5, v6, v7, v8}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 14419
    iget-object v6, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5, v6}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 14420
    new-instance v5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14423
    const/16 v7, 0x65

    invoke-virtual {v4, v7}, Lccsanandroid/widget/RelativeLayout;->setId(I)V

    .line 14424
    new-instance v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14427
    new-instance v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14428
    iget-object v8, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->H:Lccsanandroid/widget/RelativeLayout;

    iget-object v9, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v8, v9, v7}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 14429
    invoke-virtual {v3, v4, v5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 14430
    const/high16 v5, -0x1000000

    .line 14431
    sget-object v7, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$9;->a:[I

    iget-object v8, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-object v8, v8, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 14435
    :pswitch_0
    nop

    .line 14436
    const/4 v5, -0x1

    goto :goto_3

    .line 14433
    :pswitch_1
    nop

    .line 14440
    :goto_3
    iget v7, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s:I

    if-eqz v7, :cond_9

    .line 14441
    invoke-virtual {v4, v7}, Lccsanandroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_4

    .line 14443
    :cond_9
    invoke-virtual {v4, v5}, Lccsanandroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 14445
    :goto_4
    iget-object v5, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    const/16 v7, 0x67

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->setId(I)V

    .line 14446
    new-instance v5, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14447
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 14448
    invoke-virtual {v3, v6}, Lccsanandroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 14449
    aget v3, v6, v1

    iput v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ab:I

    .line 14450
    if-nez v3, :cond_c

    .line 14452
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_b

    .line 14453
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v3

    .line 14454
    if-eqz v3, :cond_a

    .line 14455
    invoke-virtual {v3}, Lccsanandroid/view/WindowInsets;->getStableInsetTop()I

    move-result v3

    invoke-virtual {v5, v2, v3, v2, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14457
    :cond_a
    goto :goto_5

    .line 14458
    :cond_b
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->e(Lccsanandroid/content/Context;)I

    move-result v3

    invoke-virtual {v5, v2, v3, v2, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14462
    :cond_c
    :goto_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v4, v3, v5}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 14463
    nop

    .line 14805
    :try_start_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y()V

    .line 14806
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D:Lccsanandroid/widget/RelativeLayout;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A()F

    move-result v4

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B()F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/view/View;FF)V

    .line 14807
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V

    .line 14808
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    if-eqz v3, :cond_d

    .line 14809
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D()V

    goto :goto_6

    .line 14811
    :cond_d
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C()V

    .line 14813
    :goto_6
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;

    invoke-direct {v4, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14823
    goto :goto_7

    .line 14821
    :catchall_0
    move-exception v3

    .line 14822
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 14464
    :goto_7
    nop

    .line 15737
    :try_start_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v3, v1}, Lccsanandroid/view/View;->setFocusableInTouchMode(Z)V

    .line 15738
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->requestFocus()Z

    .line 15739
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$16;

    invoke-direct {v4, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$16;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->setOnKeyListener(Lccsanandroid/view/View$OnKeyListener;)V

    .line 15753
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$17;

    invoke-direct {v4, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$17;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 15759
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E:Lccsanandroid/widget/RelativeLayout;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$2;

    invoke-direct {v4, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$2;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v3, v4}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 15765
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->F:Lccsanandroid/widget/TextView;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$3;

    invoke-direct {v4, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$3;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v3, v4}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 15778
    goto :goto_8

    .line 15776
    :catch_1
    move-exception v3

    .line 15777
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14465
    :goto_8
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v3, :cond_e

    .line 14466
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 14468
    :cond_e
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance v4, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;

    invoke-direct {v4, p0, v3}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setMediaViewPlayListener(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;)V

    .line 14507
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Z)V

    .line 14508
    nop

    .line 16199
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v2

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->k:Z

    if-nez v2, :cond_f

    .line 16200
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->c()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 16201
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v2

    iput-boolean v1, v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->k:Z

    .line 16202
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E()V

    .line 14511
    :cond_f
    goto :goto_a

    .line 14378
    :cond_10
    :goto_9
    const-string p0, "rootView is null"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 14379
    goto :goto_a

    .line 14509
    :catch_2
    move-exception p0

    .line 14510
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i()V
    .locals 2

    .line 623
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 624
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 626
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v0}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onExitFullscreen()V

    .line 629
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 630
    invoke-interface {v0}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onExitFullscreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_1
    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :goto_0
    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 97
    nop

    .line 16783
    :try_start_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez p0, :cond_0

    .line 16784
    goto :goto_0

    .line 16786
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayerView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16789
    goto :goto_0

    .line 16787
    :catchall_0
    move-exception p0

    .line 16788
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBMediaView"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ai:Lccsanandroid/content/Context;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 720
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/widget/ImageView;)V

    .line 721
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    .line 725
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :goto_0
    return-void
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 731
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :goto_0
    return-void
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 741
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z:Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    goto :goto_0

    .line 745
    :catchall_0
    move-exception v0

    .line 746
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 752
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    .line 753
    return-void

    .line 755
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 760
    return-void

    .line 762
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v1

    new-instance v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :goto_0
    return-void
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 97
    nop

    .line 16905
    :try_start_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A:Lccsanandroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 16906
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16910
    :cond_0
    goto :goto_0

    .line 16908
    :catch_0
    move-exception p0

    .line 16909
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBMediaView"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private n()V
    .locals 9

    .line 798
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    .line 799
    return-void

    .line 801
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    return-void

    .line 805
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 806
    return-void

    .line 808
    :cond_2
    const-string v1, "<!DOCTYPE html><html lang=\"en\"><head>  <meta charset=\"UTF-8\">  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">  <title>Document</title>  <style>  *{    margin: 0;    padding: 0;  }  html, body{    width: 100%;    height: 100%;  }  body{    background-image: url(\'gifUrl\');    background-position: center;    background-size: contain;    background-repeat: no-repeat;  }  </style></head><body></body></html>"

    .line 809
    const-string v2, "gifUrl"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 810
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setInterceptTouch(Z)V

    .line 812
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w:Lccsanandroid/widget/RelativeLayout;

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    goto :goto_0

    .line 824
    :catchall_0
    move-exception v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :goto_0
    return-void
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 97
    nop

    .line 16925
    :try_start_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->G:Lccsanandroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 16926
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16930
    :cond_0
    goto :goto_0

    .line 16928
    :catch_0
    move-exception p0

    .line 16929
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBMediaView"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .line 945
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 950
    :cond_0
    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 97
    nop

    .line 17915
    :try_start_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A:Lccsanandroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 17916
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17920
    :cond_0
    goto :goto_0

    .line 17918
    :catch_0
    move-exception p0

    .line 17919
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBMediaView"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private p()V
    .locals 10

    .line 1015
    const-string v0, "MBMediaView"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    .line 1016
    const-string v1, "campaign is null addPlayerView return"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 1020
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1022
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k()V

    .line 1023
    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 1024
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k:Z

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 1025
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l:Z

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 1026
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f:Z

    if-eqz v1, :cond_2

    .line 1027
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 1032
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b:Z

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setAllowLoopPlay(Z)V

    .line 1033
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u()Z

    move-result v6

    iget-object v8, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v9

    move-object v7, p0

    invoke-virtual/range {v3 .. v9}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->initPlayerViewData(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZLccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)Z

    .line 1034
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setOnMediaViewPlayerViewListener(Lccsancom/mbridge/msdk/nativex/listener/a;)V

    .line 1035
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u:Lccsanandroid/widget/RelativeLayout;

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1036
    nop

    .line 8470
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v1, :cond_3

    .line 8471
    goto :goto_1

    .line 8473
    :cond_3
    new-instance v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8508
    goto :goto_1

    .line 8506
    :catchall_0
    move-exception v1

    .line 8507
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1039
    :goto_1
    goto :goto_2

    .line 1037
    :catchall_1
    move-exception v1

    .line 1038
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :goto_2
    return-void
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 97
    nop

    .line 17935
    :try_start_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->G:Lccsanandroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 17936
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17940
    :cond_0
    goto :goto_0

    .line 17938
    :catch_0
    move-exception p0

    .line 17939
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBMediaView"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private q()V
    .locals 5

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    invoke-direct {p0, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsanandroid/view/View;)Z

    move-result v0

    .line 1048
    if-eqz v0, :cond_2

    .line 1049
    const/4 v0, 0x0

    .line 1050
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t()Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->d()I

    move-result v0

    .line 1054
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    invoke-virtual {v1}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v1

    .line 1055
    const/4 v2, 0x3

    iput v2, v1, Lccsanandroid/os/Message;->what:I

    .line 1056
    iput-object p0, v1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 1057
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 1059
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v0, v1, :cond_5

    .line 1060
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_3

    .line 1061
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->p()V

    goto :goto_0

    .line 1063
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getCampaign()Lccsancom/mbridge/msdk/out/Campaign;

    move-result-object v0

    if-eq v1, v0, :cond_5

    .line 1064
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->release()V

    .line 1065
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->p()V

    .line 1066
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1067
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 1069
    :cond_4
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_5
    :goto_0
    goto :goto_1

    .line 1074
    :catchall_0
    move-exception v0

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :goto_1
    return-void
.end method

.method static synthetic r(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->F()Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object p0

    return-object p0
.end method

.method private r()Ljava/lang/String;
    .locals 7

    .line 1115
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    .line 1116
    return-object v0

    .line 1118
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v1, :cond_1

    .line 1119
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v1

    .line 1120
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1121
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 1122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->e()J

    move-result-wide v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 1123
    return-object v1

    .line 1127
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    .line 1128
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 1129
    return-object v1

    .line 1133
    :cond_2
    goto :goto_0

    .line 1131
    :catch_0
    move-exception v1

    .line 1132
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBMediaView"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :goto_0
    return-object v0
.end method

.method private s()I
    .locals 1

    .line 1201
    nop

    .line 1202
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t()Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t()Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->f()I

    move-result v0

    goto :goto_0

    .line 1202
    :cond_0
    const/16 v0, 0x64

    .line 1205
    :goto_0
    return v0
.end method

.method static synthetic s(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/view/View;
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->v()Lccsanandroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private t()Lccsancom/mbridge/msdk/b/d;
    .locals 4

    .line 1218
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1221
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    .line 1222
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 1223
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1226
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v2

    .line 1227
    if-eqz v2, :cond_2

    .line 1228
    return-object v2

    .line 1230
    :cond_2
    invoke-static {v1}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_3
    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1219
    :cond_4
    :goto_1
    return-object v0

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBMediaView"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    return-object v0
.end method

.method static synthetic t(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ac:Z

    return p0
.end method

.method static synthetic u(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    return-object p0
.end method

.method private u()Z
    .locals 4

    .line 1241
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t()Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    .line 1242
    if-nez v1, :cond_0

    .line 1243
    return v0

    .line 1245
    :cond_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->j()I

    move-result v1

    .line 1246
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1247
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    return v2

    .line 1250
    :cond_1
    return v0

    .line 1252
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1253
    return v0

    .line 1254
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 1255
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1256
    return v2

    .line 1267
    :cond_4
    goto :goto_0

    .line 1259
    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 1260
    return v2

    .line 1262
    :cond_6
    return v0

    .line 1265
    :catchall_0
    move-exception v1

    .line 1266
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBMediaView"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :goto_0
    return v0
.end method

.method private v()Lccsanandroid/view/View;
    .locals 5

    .line 1516
    :try_start_0
    new-instance v0, Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    .line 1517
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1518
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1520
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    .line 1521
    sget-object v2, Lccsanandroid/widget/ImageView$ScaleType;->FIT_XY:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 1522
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1523
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1524
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1525
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1526
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1527
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_nativex_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1529
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    new-instance v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$15;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$15;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1535
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1536
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;)V

    .line 1539
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;)V

    .line 1540
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic v(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    return-object p0
.end method

.method private w()V
    .locals 12

    .line 1573
    const-string v0, "mbridge_full_player_parent"

    const-string v1, "mbridge_full_rl_playcontainer"

    const-string v2, "id"

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/FrameLayout;

    .line 1575
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/FrameLayout;

    .line 1577
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v5

    check-cast v5, Lccsanandroid/widget/RelativeLayout;

    .line 1579
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v6

    const/16 v7, 0x67

    invoke-virtual {v6, v7}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/RelativeLayout;

    .line 1580
    if-nez v6, :cond_0

    .line 1581
    if-eqz v5, :cond_0

    .line 1582
    invoke-virtual {v5, v7}, Lccsanandroid/widget/RelativeLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/RelativeLayout;

    .line 1585
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v7

    .line 1586
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1585
    invoke-virtual {v7, v8}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v7

    check-cast v7, Lccsanandroid/widget/RelativeLayout;

    .line 1587
    if-nez v7, :cond_1

    .line 1588
    if-eqz v6, :cond_1

    .line 1589
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lccsanandroid/widget/RelativeLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lccsanandroid/widget/RelativeLayout;

    .line 1592
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    .line 1593
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1592
    invoke-virtual {v1, v8}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    .line 1594
    if-nez v1, :cond_2

    .line 1595
    if-eqz v7, :cond_2

    .line 1596
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lccsanandroid/widget/RelativeLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    .line 1599
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    const-string v9, "mbridge_full_pb_loading"

    invoke-static {v8, v9, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    .line 1600
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    const-string v10, "mbridge_full_rl_install"

    invoke-static {v9, v10, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v8

    check-cast v8, Lccsanandroid/widget/RelativeLayout;

    .line 1601
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getRootView()Lccsanandroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    const-string v11, "mbridge_full_ll_pro_dur"

    invoke-static {v10, v11, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/LinearLayout;

    .line 1602
    nop

    .line 1603
    const/4 v9, 0x0

    if-eqz v4, :cond_3

    .line 1604
    invoke-virtual {v4}, Lccsanandroid/widget/FrameLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lccsanandroid/view/ViewGroup;

    goto :goto_0

    .line 1603
    :cond_3
    move-object v10, v9

    .line 1606
    :goto_0
    if-eqz v6, :cond_4

    .line 1607
    invoke-virtual {v6, v2}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 1609
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1610
    invoke-virtual {v2}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1613
    :cond_5
    :goto_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    .line 1614
    if-eqz v6, :cond_6

    .line 1615
    invoke-virtual {v6, v2}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_2

    .line 1617
    :cond_6
    invoke-virtual {v2}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1618
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/ViewGroup;

    iget-object v11, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1621
    :cond_7
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v9}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lccsancom/mbridge/msdk/nativex/listener/b;)V

    .line 1622
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v9}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setObject(Ljava/lang/Object;)V

    .line 1623
    iput-object v9, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y:Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 1624
    iput-object v9, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ae:Lccsanandroid/widget/RelativeLayout;

    .line 1626
    :cond_8
    if-eqz v6, :cond_9

    .line 1627
    invoke-virtual {v6, v8}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_3

    .line 1629
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1630
    invoke-virtual {v8}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1633
    :cond_a
    :goto_3
    if-eqz v6, :cond_b

    .line 1634
    invoke-virtual {v6, v0}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_4

    .line 1636
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1637
    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1640
    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    .line 1641
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    .line 1643
    :cond_d
    if-eqz v7, :cond_e

    .line 1644
    invoke-virtual {v7, v1}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_5

    .line 1646
    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1647
    invoke-virtual {v1}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1650
    :cond_f
    :goto_5
    if-eqz v6, :cond_10

    .line 1651
    invoke-virtual {v6, v7}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_6

    .line 1653
    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1654
    invoke-virtual {v7}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    goto :goto_6

    .line 1656
    :cond_11
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    if-eqz v0, :cond_12

    .line 1657
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->removeView(Lccsanandroid/view/View;)V

    .line 1661
    :cond_12
    :goto_6
    if-eqz v5, :cond_13

    .line 1662
    invoke-virtual {v5, v6}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_7

    .line 1664
    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1665
    invoke-virtual {v6}, Lccsanandroid/widget/RelativeLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    goto :goto_7

    .line 1667
    :cond_14
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    if-eqz v0, :cond_15

    .line 1668
    check-cast v0, Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1669
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1673
    :cond_15
    :goto_7
    if-eqz v3, :cond_17

    .line 1674
    if-eqz v5, :cond_16

    .line 1675
    invoke-virtual {v3, v5}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_8

    .line 1677
    :cond_16
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v3, v0}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 1678
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1679
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1680
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 1685
    :cond_17
    :goto_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->setVisibility(I)V

    .line 1686
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->requestLayout()V

    .line 1687
    if-eqz v10, :cond_19

    .line 1688
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v10, :cond_18

    .line 1689
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1691
    :cond_18
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->I:I

    invoke-virtual {v10, v1, v2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;I)V

    .line 1692
    invoke-virtual {v10, v4}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 1693
    invoke-virtual {v10}, Lccsanandroid/view/ViewGroup;->invalidate()V

    .line 1695
    :cond_19
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i()V

    .line 1696
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    .line 1697
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1b

    .line 1698
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setExitFullScreen()V

    .line 1699
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f:Z

    if-eqz v0, :cond_1a

    .line 1700
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_9

    .line 1702
    :cond_1a
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 1704
    :goto_9
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    :cond_1b
    goto :goto_a

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :goto_a
    return-void
.end method

.method private x()Z
    .locals 2

    .line 1713
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPlayContainer()Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->D:Lccsanandroid/widget/RelativeLayout;

    .line 1714
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPlayerParent()Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->H:Lccsanandroid/widget/RelativeLayout;

    .line 1715
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullClose()Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E:Lccsanandroid/widget/RelativeLayout;

    .line 1716
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullTvInstall()Lccsanandroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->F:Lccsanandroid/widget/TextView;

    .line 1717
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPb()Lccsanandroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->G:Lccsanandroid/widget/ProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    const/4 v0, 0x1

    return v0

    .line 1719
    :catchall_0
    move-exception v0

    .line 1720
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic x(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    return p0
.end method

.method private y()V
    .locals 2

    .line 1794
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->i(Lccsanandroid/content/Context;)I

    move-result v0

    .line 1795
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->j(Lccsanandroid/content/Context;)I

    move-result v1

    .line 1796
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    .line 1797
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    goto :goto_1

    .line 1798
    :catchall_0
    move-exception v0

    .line 1799
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    :goto_1
    return-void
.end method

.method static synthetic y(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w()V

    return-void
.end method

.method static synthetic z(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/widget/TextView;
    .locals 0

    .line 97
    iget-object p0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->F:Lccsanandroid/widget/TextView;

    return-object p0
.end method

.method private z()V
    .locals 7

    .line 1829
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1832
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 1834
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1835
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1836
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1837
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 1838
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)D

    move-result-wide v1

    .line 1839
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)D

    move-result-wide v3

    .line 1840
    const-wide/16 v5, 0x0

    cmpl-double v0, v1, v5

    if-lez v0, :cond_1

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    .line 1841
    iput-wide v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->N:D

    .line 1842
    iput-wide v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->O:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    :cond_1
    goto :goto_1

    .line 1830
    :cond_2
    :goto_0
    return-void

    .line 1845
    :catchall_0
    move-exception v0

    .line 1846
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    :goto_1
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 691
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz p1, :cond_0

    .line 694
    invoke-interface {p1}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;->onVideoStart()V

    .line 696
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p1, :cond_1

    .line 697
    invoke-interface {p1}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_1
    goto :goto_0

    .line 700
    :catch_0
    move-exception p1

    .line 701
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :goto_0
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    .line 707
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p1, :cond_0

    .line 710
    invoke-interface {p1}, Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_0
    goto :goto_0

    .line 713
    :catch_0
    move-exception p1

    .line 714
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_0
    return-void
.end method

.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 2741
    const-string v0, "cai"

    const-string v1, "exception: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cai:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MBMediaView"

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2743
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2744
    return-void

    .line 2746
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2748
    nop

    .line 2749
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2750
    const-string p2, "packageName"

    invoke-virtual {v2, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2751
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2752
    const-string v2, "packageName is empty"

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2754
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    const/4 v2, 0x2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 2757
    :goto_0
    :try_start_1
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2758
    const-string v5, "code"

    sget v6, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->b:I

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2759
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2760
    const-string v6, "result"

    invoke-virtual {v5, v6, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2761
    const-string p2, "data"

    invoke-virtual {v4, p2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2762
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2766
    goto :goto_1

    .line 2763
    :catch_0
    move-exception p2

    .line 2764
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2765
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2770
    :catchall_0
    move-exception p2

    .line 2771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2772
    invoke-static {v3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2767
    :catch_1
    move-exception p2

    .line 2768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2769
    invoke-static {v3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2775
    :cond_3
    :goto_1
    return-void
.end method

.method public canShowVideo()Z
    .locals 3

    .line 2279
    nop

    .line 2280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Z)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object v1

    .line 2281
    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_0

    .line 2282
    const/4 v0, 0x1

    .line 2284
    :cond_0
    return v0
.end method

.method public changeNoticeURL()V
    .locals 5

    .line 2230
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_6

    .line 2231
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 2232
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2233
    const-string v1, "is_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2234
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    const-string v3, "is_video=1"

    const-string v4, "is_video=2"

    if-ne v1, v2, :cond_0

    .line 2235
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2236
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2238
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_5

    .line 2239
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2240
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2244
    :cond_1
    nop

    .line 2245
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_2

    .line 2246
    const-string v1, "1"

    goto :goto_0

    .line 2247
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_3

    .line 2248
    const-string v1, "2"

    goto :goto_0

    .line 2247
    :cond_3
    const-string v1, ""

    .line 2250
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2251
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2252
    const-string v0, "&is_video="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2254
    :cond_4
    const-string v0, "?is_video="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2258
    :cond_5
    :goto_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 2261
    :cond_6
    return-void
.end method

.method public destory()V
    .locals 2

    .line 431
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->release()V

    .line 434
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :goto_0
    return-void
.end method

.method public exitFullScreen()V
    .locals 2

    .line 1549
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w()V

    .line 1550
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b:Z

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    :cond_0
    goto :goto_0

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :goto_0
    return-void
.end method

.method public getAddNVT2ToNoticeURL()Ljava/lang/String;
    .locals 2

    .line 2264
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 2265
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 2266
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2267
    const-string v1, "nv_t2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2269
    const-string v0, "&nv_t2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2273
    :cond_0
    return-object v0

    .line 2275
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2780
    const-string p2, "MBMediaView"

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2781
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v1

    .line 2783
    const-string v2, "MAL_15.7.41,3.0.1"

    .line 2784
    invoke-direct {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2785
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2786
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2788
    :cond_0
    const-string v0, ""

    .line 2790
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEndScreenInfo-mCampaign.name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    goto :goto_1

    .line 2792
    :catchall_0
    move-exception p1

    .line 2793
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    :goto_1
    return-void
.end method

.method public getFullScreenViewByStyle(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;
    .locals 2

    .line 2654
    nop

    .line 2655
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$9;->a:[I

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2657
    :pswitch_0
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;-><init>(Lccsanandroid/content/Context;)V

    .line 2658
    goto :goto_0

    .line 2661
    :pswitch_1
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeFullView;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeFullView;-><init>(Lccsanandroid/content/Context;)V

    .line 2664
    :goto_0
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->setStytle(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)V

    .line 2665
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleViewStyleResult(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;
    .locals 1

    .line 2585
    nop

    .line 2586
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    .line 2587
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2597
    :pswitch_1
    sget-object p1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    .line 2598
    goto :goto_1

    .line 2594
    :pswitch_2
    sget-object p1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    .line 2595
    goto :goto_1

    .line 2589
    :pswitch_3
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsanandroid/content/Context;)V

    .line 2590
    nop

    .line 2602
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2909
    return-void
.end method

.method public hideEndCardWebViewCloseBtn()V
    .locals 2

    .line 1566
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 1569
    :cond_0
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2800
    :try_start_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ai:Lccsanandroid/content/Context;

    if-eqz p2, :cond_0

    .line 2801
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsanandroid/content/Context;)V

    .line 2802
    return-void

    .line 2804
    :cond_0
    instance-of p2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz p2, :cond_1

    .line 2805
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2806
    if-eqz p1, :cond_1

    .line 2807
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 2808
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2813
    :cond_1
    goto :goto_0

    .line 2811
    :catch_0
    move-exception p1

    .line 2812
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    :goto_0
    return-void
.end method

.method public ismCurIsFullScreen()Z
    .locals 1

    .line 2715
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    return v0
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2858
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 293
    const-string v0, "MBMediaView"

    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 295
    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 296
    nop

    .line 3233
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/hardware/SensorManager;

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->S:Lccsanandroid/hardware/SensorManager;

    .line 3234
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/hardware/SensorManager;->getDefaultSensor(I)Lccsanandroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->T:Lccsanandroid/hardware/Sensor;

    .line 3235
    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->R:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    .line 3236
    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->S:Lccsanandroid/hardware/SensorManager;

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->T:Lccsanandroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroid/hardware/SensorManager;->registerListener(Lccsanandroid/hardware/SensorEventListener;Lccsanandroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3239
    goto :goto_0

    .line 3237
    :catchall_0
    move-exception v1

    .line 3238
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 299
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->isHardwareAccelerated()Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g:Z

    .line 301
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getOrientation()I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ag:I

    .line 302
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d()V

    .line 303
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ak:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    goto :goto_1

    .line 304
    :catchall_1
    move-exception v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_1
    return-void
.end method

.method public onBufferingEnd()V
    .locals 1

    .line 1366
    const-string v0, "bufferend"

    invoke-static {v0, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 1

    .line 1361
    const-string v0, "bufferMsg"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method protected onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 3

    .line 2678
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 2680
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ah:Z

    if-eqz v0, :cond_3

    .line 2682
    iget v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ag:I

    iget v1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 2683
    return-void

    .line 2685
    :cond_0
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ag:I

    .line 2687
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    .line 2688
    iget p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ag:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z

    .line 2690
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$7;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$7;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2712
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 311
    const-string v0, "MBMediaView"

    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 313
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ak:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    nop

    .line 4163
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J:Lccsanandroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4164
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    :cond_0
    nop

    .line 4217
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->S:Lccsanandroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->R:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    if-eqz v2, :cond_1

    .line 4218
    invoke-virtual {v1, v2}, Lccsanandroid/hardware/SensorManager;->unregisterListener(Lccsanandroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4222
    :cond_1
    goto :goto_0

    .line 4220
    :catchall_0
    move-exception v1

    .line 4221
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    goto :goto_1

    .line 317
    :catchall_1
    move-exception v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 340
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getHeight()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    .line 343
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getWidth()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    .line 344
    if-nez p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    .line 347
    :cond_0
    iget p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    if-nez p1, :cond_1

    .line 348
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    .line 350
    :cond_1
    iget p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    if-nez p1, :cond_2

    iget p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    if-nez p1, :cond_2

    .line 351
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    .line 353
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object p2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne p1, p2, :cond_6

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    if-nez p1, :cond_6

    .line 354
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 355
    iget p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    iget p2, p1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    iget p1, p1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5

    .line 359
    :cond_4
    iget p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M:I

    int-to-double p1, p1

    iget-wide v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->O:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    :try_start_1
    iget-wide v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->N:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L:I

    .line 361
    :cond_5
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h()V

    .line 362
    goto :goto_0

    :cond_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object p2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne p1, p2, :cond_7

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    if-nez p1, :cond_7

    .line 363
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f()V

    goto :goto_0

    .line 364
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object p2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->c:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne p1, p2, :cond_8

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    if-nez p1, :cond_8

    .line 365
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :cond_8
    :goto_0
    goto :goto_1

    .line 367
    :catchall_0
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_1
    return-void
.end method

.method public onPlayCompleted()V
    .locals 0

    .line 1279
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 9

    .line 1284
    const-string v0, "MBMediaView"

    :try_start_0
    const-string v1, "error"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    nop

    .line 9189
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v1

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->d:Z

    if-nez v1, :cond_0

    .line 9190
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->j()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9191
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->d:Z

    .line 9192
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->j()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :cond_0
    nop

    .line 9295
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v1

    .line 9296
    const/4 v2, 0x0

    .line 9297
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9298
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v5

    .line 9299
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v4, "2000021"

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9300
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9301
    goto :goto_0

    .line 9302
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9303
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v5

    .line 9304
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v4, "2000021"

    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9305
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9308
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 9309
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 9310
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->e(Ljava/lang/String;)V

    .line 9311
    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 9312
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 9313
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 9314
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 9315
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9319
    :cond_3
    goto :goto_1

    .line 9317
    :catch_0
    move-exception p1

    .line 9318
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1290
    goto :goto_2

    .line 1288
    :catchall_0
    move-exception p1

    .line 1289
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :goto_2
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 19

    .line 1324
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "MBMediaView"

    .line 10123
    const/4 v4, 0x1

    :try_start_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 10124
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 10125
    if-eqz v0, :cond_2

    iget-boolean v5, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->h:Z

    if-nez v5, :cond_2

    iget-object v5, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Ljava/util/Map;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 10126
    iget-object v5, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Ljava/util/Map;

    .line 10127
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 10128
    const/4 v13, 0x0

    .line 10129
    const/4 v14, 0x0

    .line 10130
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 10132
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 10133
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 10134
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v2, v7, :cond_0

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 10135
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v9

    move v11, v13

    move v12, v14

    invoke-static/range {v7 .. v12}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 10136
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 10138
    :cond_0
    goto :goto_0

    .line 10139
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 10140
    iput-boolean v4, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10146
    :cond_2
    goto :goto_1

    .line 10144
    :catch_0
    move-exception v0

    .line 10145
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :goto_1
    nop

    .line 10151
    const/4 v5, 0x0

    const/16 v6, 0x64

    :try_start_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_6

    .line 10152
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 10153
    if-eqz v0, :cond_6

    iget-boolean v7, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->i:Z

    if-nez v7, :cond_6

    if-eqz p2, :cond_6

    .line 10154
    iget-object v7, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/i;->d()Ljava/util/List;

    move-result-object v7

    .line 10155
    add-int/lit8 v8, v2, 0x1

    mul-int/lit8 v8, v8, 0x64

    div-int v8, v8, p2

    .line 10156
    if-eqz v7, :cond_6

    .line 10157
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 10158
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 10159
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 10160
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 10161
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 10162
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 10163
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 10164
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 10165
    if-gt v12, v8, :cond_3

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 10166
    new-array v12, v4, [Ljava/lang/String;

    aput-object v11, v12, v5

    .line 10167
    const/16 v17, 0x0

    .line 10168
    const/16 v18, 0x1

    .line 10169
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v13

    iget-object v14, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    invoke-static/range {v13 .. v18}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 10170
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 10171
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10172
    add-int/lit8 v9, v9, -0x1

    .line 10174
    :cond_3
    goto :goto_3

    .line 10157
    :cond_4
    add-int/2addr v9, v4

    goto :goto_2

    .line 10177
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_6

    .line 10178
    iput-boolean v4, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10185
    :cond_6
    goto :goto_4

    .line 10183
    :catchall_0
    move-exception v0

    .line 10184
    const-string v0, "reportPlayPercentageData error"

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :goto_4
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s()I

    move-result v0

    if-eq v0, v6, :cond_b

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aj:Z

    if-nez v0, :cond_b

    .line 1328
    nop

    .line 10209
    nop

    .line 10210
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t()Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10211
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t()Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->g()I

    move-result v5

    .line 10213
    :cond_7
    nop

    .line 1328
    nop

    .line 1330
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s()I

    move-result v0

    if-nez v0, :cond_8

    .line 1331
    return-void

    .line 1333
    :cond_8
    if-ltz v5, :cond_b

    .line 1334
    mul-int v0, p2, v5

    div-int/2addr v0, v6

    .line 1336
    if-lt v2, v0, :cond_b

    .line 1338
    iget-object v2, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v5, 0x5e

    if-eq v2, v5, :cond_a

    iget-object v2, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v5, 0x11f

    if-ne v2, v5, :cond_9

    goto :goto_5

    .line 1341
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1339
    :cond_a
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1343
    :goto_6
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    .line 1344
    if-eqz v2, :cond_b

    .line 1345
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->j()V

    .line 1346
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aj:Z

    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDRate is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and start download !"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :cond_b
    return-void
.end method

.method public onPlayProgressMS(II)V
    .locals 0

    .line 1357
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 1

    .line 1371
    const-string v0, "errorstr"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method public onPlayStarted(I)V
    .locals 0

    .line 1274
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 324
    const-string v0, "MBMediaView"

    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 326
    :try_start_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e:Z

    .line 327
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->V:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_0

    .line 328
    nop

    .line 4963
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_0

    .line 4964
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsFrontDesk(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    :cond_0
    nop

    .line 5139
    :try_start_1
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    if-nez p1, :cond_1

    .line 5140
    goto :goto_1

    .line 5142
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz p1, :cond_4

    .line 5143
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e:Z

    if-eqz v1, :cond_3

    .line 5144
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5145
    const-string p1, "fullscreen windowfocuse true isPlaying do nothing return"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5147
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getIsActiviePause()Z

    move-result p1

    if-nez p1, :cond_5

    .line 5148
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V

    goto :goto_0

    .line 5152
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V

    goto :goto_0

    .line 5155
    :cond_4
    const-string p1, "fullscreen playerview is null return"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5159
    :cond_5
    :goto_0
    goto :goto_1

    .line 5157
    :catchall_0
    move-exception p1

    .line 5158
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->requestLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    goto :goto_2

    .line 332
    :catchall_1
    move-exception p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_2
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2820
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2821
    return-void

    .line 2823
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 2824
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2826
    if-nez v0, :cond_1

    :try_start_0
    instance-of v2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v2, :cond_1

    .line 2827
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2828
    if-eqz p1, :cond_1

    .line 2829
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 2832
    :catch_0
    move-exception p1

    .line 2833
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2834
    :cond_1
    :goto_0
    nop

    .line 2835
    :goto_1
    if-nez v0, :cond_2

    .line 2836
    return-void

    .line 2839
    :cond_2
    :try_start_1
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2840
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2841
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 2842
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 2843
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 2844
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 2845
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2849
    :catchall_0
    move-exception p1

    .line 2850
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2847
    :catch_1
    move-exception p1

    .line 2848
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    :cond_4
    :goto_2
    return-void
.end method

.method public setAllowLoopPlay(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b:Z

    .line 423
    return-void
.end method

.method public setAllowScreenChange(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c:Z

    .line 427
    return-void
.end method

.method public setAllowVideoRefresh(Z)V
    .locals 0

    .line 418
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a:Z

    .line 419
    return-void
.end method

.method public setFollowActivityOrientation(Z)V
    .locals 0

    .line 2673
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ah:Z

    .line 2674
    return-void
.end method

.method public setFullScreenViewBackgroundColor(I)V
    .locals 0

    .line 2669
    iput p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s:I

    .line 2670
    return-void
.end method

.method public setIsAllowFullScreen(Z)V
    .locals 0

    .line 414
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d:Z

    .line 415
    return-void
.end method

.method public setNativeAd(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2

    .line 374
    if-nez p1, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 378
    return-void

    .line 380
    :cond_1
    nop

    .line 6005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e:Z

    .line 6006
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g:Z

    .line 6007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h:Z

    .line 6008
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i:Z

    .line 6009
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j:Z

    .line 6010
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r:Z

    .line 381
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y()V

    .line 382
    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 383
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object p1

    if-nez p1, :cond_2

    .line 384
    new-instance p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;-><init>()V

    .line 385
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Ljava/util/Map;

    .line 386
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMediaViewHolder(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;)V

    .line 390
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 393
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 391
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->U:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 397
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q:Z

    if-eqz p1, :cond_5

    .line 398
    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_5
    goto :goto_2

    .line 400
    :catchall_0
    move-exception p1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_2
    return-void
.end method

.method public setOnMediaViewListener(Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->W:Lccsancom/mbridge/msdk/out/OnMBMediaViewListener;

    .line 407
    return-void
.end method

.method public setOnMediaViewListener(Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->aa:Lccsancom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    .line 411
    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2904
    return-void
.end method

.method public setProgressVisibility(Z)V
    .locals 1

    .line 2628
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k:Z

    .line 2629
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    .line 2630
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 2632
    :cond_0
    return-void
.end method

.method public setSoundIndicatorVisibility(Z)V
    .locals 1

    .line 2635
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l:Z

    .line 2636
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    .line 2637
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 2639
    :cond_0
    return-void
.end method

.method public setVideoSoundOnOff(Z)V
    .locals 1

    .line 2642
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f:Z

    .line 2643
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1

    .line 2644
    if-eqz p1, :cond_0

    .line 2645
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_0

    .line 2647
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 2651
    :cond_1
    :goto_0
    return-void
.end method

.method public showEndCardWebViewCloseBtn()V
    .locals 2

    .line 1560
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->af:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 1563
    :cond_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2863
    const-string v0, "MBMediaView"

    .line 2864
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 2866
    :try_start_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2867
    nop

    .line 2868
    const-string p2, "state"

    invoke-virtual {v2, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2872
    goto :goto_0

    .line 2870
    :catch_0
    move-exception p2

    .line 2871
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    :cond_0
    :goto_0
    nop

    .line 2878
    const-string p2, "SHOW CLOSE BTN "

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->showEndCardWebViewCloseBtn()V

    .line 2881
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2882
    return-void

    .line 2883
    :catch_1
    move-exception p2

    .line 2884
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2887
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 2892
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->exitFullScreen()V

    .line 2893
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2894
    return-void

    .line 2895
    :catch_0
    move-exception p2

    .line 2896
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MBMediaView"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2899
    return-void
.end method

.method public updateViewManger(Z)V
    .locals 5

    .line 2015
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    .line 2017
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2018
    :try_start_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 11191
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/widget/LinearLayout;->clearAnimation()V

    .line 2019
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2020
    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0, p1, v3, v4}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZZLccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    .line 2021
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->ab:I

    invoke-virtual {v0, p1, v3, v4}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZLccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;I)V

    .line 2023
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    instance-of v4, v3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    if-eqz v4, :cond_4

    .line 2024
    if-eqz v0, :cond_4

    .line 2025
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 12097
    :goto_1
    instance-of p1, v3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    if-eqz p1, :cond_4

    .line 12098
    check-cast v3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    .line 12099
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 12100
    :goto_2
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getMBridgeFullViewDisplayIcon()Lccsanandroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 12101
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getMBridgeFullViewDisplayTitle()Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 12102
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getMBridgeFullViewDisplayDscription()Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 12103
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getStarLevelLayoutView()Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2030
    :cond_4
    goto :goto_3

    .line 2028
    :catch_0
    move-exception p1

    .line 2029
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2031
    :goto_3
    return-void
.end method
