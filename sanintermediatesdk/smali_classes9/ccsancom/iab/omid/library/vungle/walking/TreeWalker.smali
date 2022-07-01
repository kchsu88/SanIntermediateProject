.class public Lccsancom/iab/omid/library/vungle/walking/TreeWalker;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/iab/omid/library/vungle/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerNanoTimeLogger;,
        Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerTimeLogger;
    }
.end annotation


# static fields
.field private static a:Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

.field private static b:Lccsanandroid/os/Handler;

.field private static c:Lccsanandroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerTimeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lccsancom/iab/omid/library/vungle/c/b;

.field private g:Lccsancom/iab/omid/library/vungle/walking/a;

.field private h:Lccsancom/iab/omid/library/vungle/walking/b;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;-><init>()V

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a:Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->b:Lccsanandroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    new-instance v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$2;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$2;-><init>()V

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->j:Ljava/lang/Runnable;

    new-instance v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$3;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$3;-><init>()V

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    new-instance v0, Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/walking/a;-><init>()V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    new-instance v0, Lccsancom/iab/omid/library/vungle/c/b;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/c/b;-><init>()V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->f:Lccsancom/iab/omid/library/vungle/c/b;

    new-instance v0, Lccsancom/iab/omid/library/vungle/walking/b;

    new-instance v1, Lccsancom/iab/omid/library/vungle/walking/a/c;

    invoke-direct {v1}, Lccsancom/iab/omid/library/vungle/walking/a/c;-><init>()V

    invoke-direct {v0, v1}, Lccsancom/iab/omid/library/vungle/walking/b;-><init>(Lccsancom/iab/omid/library/vungle/walking/a/c;)V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->h:Lccsancom/iab/omid/library/vungle/walking/b;

    return-void
.end method

.method static synthetic a(Lccsancom/iab/omid/library/vungle/walking/TreeWalker;)Lccsancom/iab/omid/library/vungle/walking/b;
    .locals 0

    iget-object p0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->h:Lccsancom/iab/omid/library/vungle/walking/b;

    return-object p0
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerTimeLogger;

    iget v2, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->e:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerTimeLogger;->onTreeProcessed(IJ)V

    instance-of v2, v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerNanoTimeLogger;

    if-eqz v2, :cond_0

    check-cast v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerNanoTimeLogger;

    iget v2, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->e:I

    invoke-interface {v1, v2, p1, p2}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerNanoTimeLogger;->onTreeProcessedNano(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/c/a;Lccsanorg/json/JSONObject;Lccsancom/iab/omid/library/vungle/walking/c;)V
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/c;->a:Lccsancom/iab/omid/library/vungle/walking/c;

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2, p1, p3, p0, p4}, Lccsancom/iab/omid/library/vungle/c/a;->a(Lccsanandroid/view/View;Lccsanorg/json/JSONObject;Lccsancom/iab/omid/library/vungle/c/a$a;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lccsanandroid/view/View;Lccsanorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->f:Lccsancom/iab/omid/library/vungle/c/b;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/c/b;->b()Lccsancom/iab/omid/library/vungle/c/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v1, p1}, Lccsancom/iab/omid/library/vungle/walking/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Lccsancom/iab/omid/library/vungle/c/a;->a(Lccsanandroid/view/View;)Lccsanorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, p1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lccsancom/iab/omid/library/vungle/d/b;->b(Lccsanorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private a(Lccsanandroid/view/View;Lccsanorg/json/JSONObject;)Z
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/walking/a;->a(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2, p1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {p1}, Lccsancom/iab/omid/library/vungle/walking/a;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lccsanandroid/view/View;Lccsanorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/walking/a;->b(Lccsanandroid/view/View;)Lccsancom/iab/omid/library/vungle/walking/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2, p1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Lccsancom/iab/omid/library/vungle/walking/a$a;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lccsancom/iab/omid/library/vungle/walking/TreeWalker;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->h()V

    return-void
.end method

.method static synthetic e()Lccsanandroid/os/Handler;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getInstance()Lccsancom/iab/omid/library/vungle/walking/TreeWalker;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a:Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    return-object v0
.end method

.method private h()V
    .locals 0

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->i()V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d()V

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->j()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->e:I

    invoke-static {}, Lccsancom/iab/omid/library/vungle/d/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->i:J

    return-void
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lccsancom/iab/omid/library/vungle/d/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->i:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a(J)V

    return-void
.end method

.method private k()V
    .locals 4

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    sget-object v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    sget-object v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c:Lccsanandroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->k()V

    return-void
.end method

.method public a(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/c/a;Lccsanorg/json/JSONObject;)V
    .locals 2

    invoke-static {p1}, Lccsancom/iab/omid/library/vungle/d/f;->d(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/walking/a;->c(Lccsanandroid/view/View;)Lccsancom/iab/omid/library/vungle/walking/c;

    move-result-object v0

    sget-object v1, Lccsancom/iab/omid/library/vungle/walking/c;->c:Lccsancom/iab/omid/library/vungle/walking/c;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p2, p1}, Lccsancom/iab/omid/library/vungle/c/a;->a(Lccsanandroid/view/View;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {p3, v1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;)V

    invoke-direct {p0, p1, v1}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a(Lccsanandroid/view/View;Lccsanorg/json/JSONObject;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0, p1, v1}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->b(Lccsanandroid/view/View;Lccsanorg/json/JSONObject;)V

    invoke-direct {p0, p1, p2, v1, v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/c/a;Lccsanorg/json/JSONObject;Lccsancom/iab/omid/library/vungle/walking/c;)V

    :cond_2
    iget p1, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->e:I

    return-void
.end method

.method public addTimeLogger(Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerTimeLogger;)V
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c()V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->b:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$1;

    invoke-direct {v1, p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker$1;-><init>(Lccsancom/iab/omid/library/vungle/walking/TreeWalker;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->l()V

    return-void
.end method

.method d()V
    .locals 8

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/walking/a;->c()V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/d/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->f:Lccsancom/iab/omid/library/vungle/c/b;

    invoke-virtual {v2}, Lccsancom/iab/omid/library/vungle/c/b;->a()Lccsancom/iab/omid/library/vungle/c/a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v3}, Lccsancom/iab/omid/library/vungle/walking/a;->b()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    iget-object v3, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v3}, Lccsancom/iab/omid/library/vungle/walking/a;->b()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Lccsancom/iab/omid/library/vungle/c/a;->a(Lccsanandroid/view/View;)Lccsanorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v7, v5}, Lccsancom/iab/omid/library/vungle/walking/a;->b(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v7

    invoke-direct {p0, v5, v7, v6}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a(Ljava/lang/String;Lccsanandroid/view/View;Lccsanorg/json/JSONObject;)V

    invoke-static {v6}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->h:Lccsancom/iab/omid/library/vungle/walking/b;

    invoke-virtual {v5, v6, v7, v0, v1}, Lccsancom/iab/omid/library/vungle/walking/b;->b(Lccsanorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v3}, Lccsancom/iab/omid/library/vungle/walking/a;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, v4}, Lccsancom/iab/omid/library/vungle/c/a;->a(Lccsanandroid/view/View;)Lccsanorg/json/JSONObject;

    move-result-object v3

    sget-object v5, Lccsancom/iab/omid/library/vungle/walking/c;->a:Lccsancom/iab/omid/library/vungle/walking/c;

    invoke-direct {p0, v4, v2, v3, v5}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/c/a;Lccsanorg/json/JSONObject;Lccsancom/iab/omid/library/vungle/walking/c;)V

    invoke-static {v3}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;)V

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->h:Lccsancom/iab/omid/library/vungle/walking/b;

    iget-object v4, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v4}, Lccsancom/iab/omid/library/vungle/walking/a;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lccsancom/iab/omid/library/vungle/walking/b;->a(Lccsanorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->h:Lccsancom/iab/omid/library/vungle/walking/b;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/walking/b;->a()V

    :goto_1
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->g:Lccsancom/iab/omid/library/vungle/walking/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/walking/a;->d()V

    return-void
.end method

.method public removeTimeLogger(Lccsancom/iab/omid/library/vungle/walking/TreeWalker$TreeWalkerTimeLogger;)V
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
