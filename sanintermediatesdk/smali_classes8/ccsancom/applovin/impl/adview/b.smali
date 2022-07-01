.class public Lccsancom/applovin/impl/adview/b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/b$a;,
        Lccsancom/applovin/impl/adview/b$b;,
        Lccsancom/applovin/impl/adview/b$c;
    }
.end annotation


# instance fields
.field private volatile A:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

.field private volatile B:Lccsancom/applovin/sdk/AppLovinAdClickListener;

.field private volatile C:Lccsancom/applovin/impl/adview/g;

.field private a:Lccsanandroid/content/Context;

.field private b:Lccsanandroid/view/ViewGroup;

.field private c:Lccsancom/applovin/impl/sdk/k;

.field private d:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private e:Lccsancom/applovin/impl/sdk/r;

.field private f:Lccsancom/applovin/communicator/AppLovinCommunicator;

.field private g:Lccsancom/applovin/sdk/AppLovinAdSize;

.field private h:Ljava/lang/String;

.field private i:Lccsancom/applovin/impl/sdk/d/d;

.field private j:Lccsancom/applovin/impl/adview/e;

.field private k:Lccsancom/applovin/impl/adview/b$c;

.field private l:Lccsancom/applovin/impl/adview/d;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Lccsancom/applovin/impl/sdk/network/i$a;

.field private volatile p:Lccsancom/applovin/impl/sdk/a/g;

.field private volatile q:Lccsancom/applovin/sdk/AppLovinAd;

.field private r:Lccsancom/applovin/impl/adview/m;

.field private s:Lccsancom/applovin/impl/adview/m;

.field private final t:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile v:Z

.field private volatile w:Z

.field private volatile x:Z

.field private volatile y:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->q:Lccsancom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->s:Lccsancom/applovin/impl/adview/m;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/b;->t:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    iput-boolean v1, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    iput-boolean v1, p0, Lccsancom/applovin/impl/adview/b;->x:Z

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->C:Lccsancom/applovin/impl/adview/g;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->s:Lccsancom/applovin/impl/adview/m;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/sdk/d/d;)Lccsancom/applovin/impl/sdk/d/d;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->i:Lccsancom/applovin/impl/sdk/d/d;

    return-object p1
.end method

.method static synthetic a(Lccsanandroid/view/View;Lccsancom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/applovin/impl/adview/b;->b(Lccsanandroid/view/View;Lccsancom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private a(Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->d:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    invoke-static {p5}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->f:Lccsancom/applovin/communicator/AppLovinCommunicator;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/b;->g:Lccsancom/applovin/sdk/AppLovinAdSize;

    iput-object p4, p0, Lccsancom/applovin/impl/adview/b;->h:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->b:Lccsanandroid/view/ViewGroup;

    new-instance p1, Lccsancom/applovin/impl/adview/e;

    invoke-direct {p1, p0, p2}, Lccsancom/applovin/impl/adview/e;-><init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->j:Lccsancom/applovin/impl/adview/e;

    new-instance p1, Lccsancom/applovin/impl/adview/b$a;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lccsancom/applovin/impl/adview/b$a;-><init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/b$1;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->n:Ljava/lang/Runnable;

    new-instance p1, Lccsancom/applovin/impl/adview/b$b;

    invoke-direct {p1, p0, p4}, Lccsancom/applovin/impl/adview/b$b;-><init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/b$1;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->m:Ljava/lang/Runnable;

    new-instance p1, Lccsancom/applovin/impl/adview/b$c;

    invoke-direct {p1, p0, p2}, Lccsancom/applovin/impl/adview/b$c;-><init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->k:Lccsancom/applovin/impl/adview/b$c;

    new-instance p1, Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-direct {p1}, Lccsancom/applovin/impl/sdk/network/i$a;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->o:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-virtual {p0, p3}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdSize;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad size specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    return-object p0
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    return-object p1
.end method

.method private static b(Lccsanandroid/view/View;Lccsancom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2}, Lccsancom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget v1, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v5}, Lccsancom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget v3, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1, v0}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v3, p1

    :goto_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_5
    iput v1, p1, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_6
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdSize;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->g:Lccsancom/applovin/sdk/AppLovinAdSize;

    return-object p0
.end method

.method static synthetic e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    return-object p0
.end method

.method static synthetic f(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/content/Context;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method static synthetic h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->b:Lccsanandroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic i(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/adview/AppLovinAdViewEventListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->A:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    return-object p0
.end method

.method static synthetic j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->i:Lccsancom/applovin/impl/sdk/d/d;

    return-object p0
.end method

.method static synthetic k(Lccsancom/applovin/impl/adview/b;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/adview/b;->x:Z

    return p0
.end method

.method static synthetic l(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->d:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object p0
.end method

.method static synthetic m(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/b;->v()V

    return-void
.end method

.method static synthetic n(Lccsancom/applovin/impl/adview/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic o(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->y:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method static synthetic p(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/b;->s:Lccsancom/applovin/impl/adview/m;

    return-object p0
.end method

.method static synthetic q(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/b;->x()V

    return-void
.end method

.method static synthetic r(Lccsancom/applovin/impl/adview/b;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    return p0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    if-eqz v0, :cond_0

    const-string v1, "AppLovinAdView"

    const-string v2, "Destroying..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->removeAllViews()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->onPause()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->destroyDrawingCache()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    return-void
.end method

.method private u()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/b$2;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/b$2;-><init>(Lccsancom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private v()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/b$8;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/b$8;-><init>(Lccsancom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->i:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->i:Lccsancom/applovin/impl/sdk/d/d;

    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    new-instance v1, Lccsancom/applovin/impl/sdk/utils/j;

    invoke-direct {v1}, Lccsancom/applovin/impl/sdk/utils/j;-><init>()V

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/j;->a()Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Lccsancom/applovin/impl/sdk/a/g;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/b;->r()Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/utils/j;->a(Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/impl/sdk/utils/j;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->isBML(Lccsancom/applovin/sdk/AppLovinAdSize;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/j;->a()Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v2

    const-string v3, "Fullscreen Ad Properties"

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/applovin/impl/sdk/utils/j;->b(Lccsancom/applovin/impl/sdk/a/g;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/utils/j;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/j;->a()Lccsancom/applovin/impl/sdk/utils/j;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/j;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->k:Lccsancom/applovin/impl/adview/b$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/d;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b;->o:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "viewport_width"

    invoke-virtual {v2, v3, v0}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viewport_height"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->d:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->h:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b;->g:Lccsancom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/b;->o:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/network/i$a;->a()Lccsancom/applovin/impl/sdk/network/i;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/adview/b;->k:Lccsancom/applovin/impl/adview/b$c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(I)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->n:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lccsancom/applovin/impl/adview/b$7;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/b$7;-><init>(Lccsancom/applovin/impl/adview/b;I)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lccsanandroid/graphics/PointF;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/b$4;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/b$4;-><init>(Lccsancom/applovin/impl/adview/b;Lccsanandroid/graphics/PointF;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;)V
    .locals 2

    new-instance v0, Lccsancom/applovin/impl/adview/b$3;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/b$3;-><init>(Lccsancom/applovin/impl/adview/b;Lccsanandroid/webkit/WebView;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->q:Lccsancom/applovin/sdk/AppLovinAd;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->q:Lccsancom/applovin/sdk/AppLovinAd;

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/n;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    const-string v0, "javascript:al_onAdViewRendered();"

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AppLovinAdView"

    const-string v1, "Exception while notifying ad display listener"

    invoke-static {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/util/AttributeSet;)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    const-string p1, "AppLovinAdView"

    const-string p2, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p6}, Lccsancom/applovin/impl/sdk/utils/b;->a(Lccsanandroid/util/AttributeSet;)Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p3, Lccsancom/applovin/sdk/AppLovinAdSize;->BANNER:Lccsancom/applovin/sdk/AppLovinAdSize;

    :cond_1
    move-object v3, p3

    if-nez p5, :cond_2

    invoke-static {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p5

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lccsancom/applovin/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object v2, p5, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V

    invoke-static {p6}, Lccsancom/applovin/impl/sdk/utils/b;->b(Lccsanandroid/util/AttributeSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/b;->a()V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->A:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    return-void
.end method

.method public a(Lccsancom/applovin/impl/adview/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->C:Lccsancom/applovin/impl/adview/g;

    return-void
.end method

.method a(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;)V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->B:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->d:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-boolean v7, p0, Lccsancom/applovin/impl/adview/b;->x:Z

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/adview/b;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "AppLovinAdView"

    const-string p3, "Unable to process ad click - AppLovinAdView destroyed prematurely"

    invoke-virtual {p1, p2, p3}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lccsancom/applovin/impl/sdk/d/d;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/d;->setStatsManagerHelper(Lccsancom/applovin/impl/sdk/d/d;)V

    :cond_0
    return-void
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_7

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->validateAdSdkKey(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/impl/sdk/k;)V

    iget-boolean p2, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    const-string v0, "AppLovinAdView"

    if-eqz p2, :cond_6

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->maybeRetrieveNonDummyAd(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/g;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {p2, v0}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object p2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p2, v0}, Lccsancom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object p2

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/b;->w()V

    :cond_0
    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->t:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->q:Lccsancom/applovin/sdk/AppLovinAd;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    iget-boolean p2, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->g:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->isBML(Lccsancom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lccsancom/applovin/impl/sdk/a/g;)V

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/b;->u()V

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->m:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Unable to render ad. Ad is null. Internal inconsistency error."

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is already showing, ignoring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->bS:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to display ad - ad can only be displayed once. Load the next ad."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/r;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->B:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b;->y:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method protected a(Lccsancom/applovin/sdk/AppLovinAdSize;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lccsancom/applovin/impl/adview/d;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b;->j:Lccsancom/applovin/impl/adview/e;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lccsancom/applovin/impl/adview/d;-><init>(Lccsancom/applovin/impl/adview/e;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/adview/d;->setBackgroundColor(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/adview/d;->setWillNotCacheDrawing(Z)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->b:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->b:Lccsanandroid/view/ViewGroup;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-static {v1, p1}, Lccsancom/applovin/impl/adview/b;->b(Lccsanandroid/view/View;Lccsancom/applovin/sdk/AppLovinAdSize;)V

    iget-boolean p1, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->n:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Lccsancom/applovin/impl/adview/b$1;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/adview/b$1;-><init>(Lccsancom/applovin/impl/adview/b;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "AppLovinAdView"

    const-string v2, "Failed to initialize AdWebView"

    invoke-static {v1, v2, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()Lccsancom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->g:Lccsancom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method b(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 3

    const-string v0, "AppLovinAdView"

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->t:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Ad view has paused when an ad was received, ad saved for later"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lccsancom/applovin/impl/adview/b$6;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/b$6;-><init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "No provided when to the view controller"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/b;->a(I)V

    :goto_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->t:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->w:Z

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/b;->k()V

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/b;->t()V

    return-void
.end method

.method public g()Lccsancom/applovin/adview/AppLovinAdViewEventListener;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->A:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lccsancom/applovin/impl/adview/g;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->C:Lccsancom/applovin/impl/adview/g;

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/b;->a(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->m:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    const-string v1, "AppLovinAdView"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "onDetachedFromWindowCalled with expanded ad present"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/b;->u()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "onDetachedFromWindowCalled without an expanded ad present"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/b$5;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/b$5;-><init>(Lccsancom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method l()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->r:Lccsancom/applovin/impl/adview/m;

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->s:Lccsancom/applovin/impl/adview/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->e:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->n:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->z:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/b;->k()V

    :goto_1
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->x:Z

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/b;->x:Z

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    instance-of v0, v0, Lccsancom/applovin/impl/adview/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->I()Lccsancom/applovin/impl/sdk/a/g$a;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/a/g$a;->b:Lccsancom/applovin/impl/sdk/a/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->a:Lccsanandroid/content/Context;

    check-cast v0, Lccsancom/applovin/impl/adview/l;

    invoke-interface {v0}, Lccsancom/applovin/impl/adview/l;->dismiss()V

    :cond_1
    return-void
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 1

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash_applovin_ad_webview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lccsancom/applovin/impl/adview/b$9;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/adview/b$9;-><init>(Lccsancom/applovin/impl/adview/b;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p()Lccsancom/applovin/impl/sdk/a/g;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->p:Lccsancom/applovin/impl/sdk/a/g;

    return-object v0
.end method

.method public q()Lccsancom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->c:Lccsancom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public r()Lccsancom/applovin/adview/AppLovinAdView;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->b:Lccsanandroid/view/ViewGroup;

    check-cast v0, Lccsancom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public s()Lccsancom/applovin/impl/adview/d;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b;->l:Lccsancom/applovin/impl/adview/d;

    return-object v0
.end method
