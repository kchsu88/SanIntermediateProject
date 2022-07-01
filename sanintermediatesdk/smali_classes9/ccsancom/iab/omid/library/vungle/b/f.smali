.class public Lccsancom/iab/omid/library/vungle/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/iab/omid/library/vungle/a/c;
.implements Lccsancom/iab/omid/library/vungle/b/b$a;


# static fields
.field private static a:Lccsancom/iab/omid/library/vungle/b/f;


# instance fields
.field private b:F

.field private final c:Lccsancom/iab/omid/library/vungle/a/e;

.field private final d:Lccsancom/iab/omid/library/vungle/a/b;

.field private e:Lccsancom/iab/omid/library/vungle/a/d;

.field private f:Lccsancom/iab/omid/library/vungle/b/a;


# direct methods
.method public constructor <init>(Lccsancom/iab/omid/library/vungle/a/e;Lccsancom/iab/omid/library/vungle/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->b:F

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/b/f;->c:Lccsancom/iab/omid/library/vungle/a/e;

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/b/f;->d:Lccsancom/iab/omid/library/vungle/a/b;

    return-void
.end method

.method public static a()Lccsancom/iab/omid/library/vungle/b/f;
    .locals 3

    sget-object v0, Lccsancom/iab/omid/library/vungle/b/f;->a:Lccsancom/iab/omid/library/vungle/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lccsancom/iab/omid/library/vungle/a/b;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/a/b;-><init>()V

    new-instance v1, Lccsancom/iab/omid/library/vungle/a/e;

    invoke-direct {v1}, Lccsancom/iab/omid/library/vungle/a/e;-><init>()V

    new-instance v2, Lccsancom/iab/omid/library/vungle/b/f;

    invoke-direct {v2, v1, v0}, Lccsancom/iab/omid/library/vungle/b/f;-><init>(Lccsancom/iab/omid/library/vungle/a/e;Lccsancom/iab/omid/library/vungle/a/b;)V

    sput-object v2, Lccsancom/iab/omid/library/vungle/b/f;->a:Lccsancom/iab/omid/library/vungle/b/f;

    :cond_0
    sget-object v0, Lccsancom/iab/omid/library/vungle/b/f;->a:Lccsancom/iab/omid/library/vungle/b/f;

    return-object v0
.end method

.method private e()Lccsancom/iab/omid/library/vungle/b/a;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->f:Lccsancom/iab/omid/library/vungle/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->f:Lccsancom/iab/omid/library/vungle/b/a;

    :cond_0
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->f:Lccsancom/iab/omid/library/vungle/b/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iput p1, p0, Lccsancom/iab/omid/library/vungle/b/f;->b:F

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/b/f;->e()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lccsanandroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->d:Lccsancom/iab/omid/library/vungle/a/b;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/a/b;->a()Lccsancom/iab/omid/library/vungle/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/b/f;->c:Lccsancom/iab/omid/library/vungle/a/e;

    new-instance v2, Lccsanandroid/os/Handler;

    invoke-direct {v2}, Lccsanandroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lccsancom/iab/omid/library/vungle/a/e;->a(Lccsanandroid/os/Handler;Lccsanandroid/content/Context;Lccsancom/iab/omid/library/vungle/a/a;Lccsancom/iab/omid/library/vungle/a/c;)Lccsancom/iab/omid/library/vungle/a/d;

    move-result-object p1

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/b/f;->e:Lccsancom/iab/omid/library/vungle/a/d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->getInstance()Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->getInstance()Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->c()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/b;->a()Lccsancom/iab/omid/library/vungle/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/iab/omid/library/vungle/b/b;->a(Lccsancom/iab/omid/library/vungle/b/b$a;)V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/b;->a()Lccsancom/iab/omid/library/vungle/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b/b;->b()V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->getInstance()Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->a()V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->e:Lccsancom/iab/omid/library/vungle/a/d;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/a/d;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->getInstance()Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->b()V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/b;->a()Lccsancom/iab/omid/library/vungle/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b/b;->c()V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->e:Lccsancom/iab/omid/library/vungle/a/d;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/a/d;->b()V

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lccsancom/iab/omid/library/vungle/b/f;->b:F

    return v0
.end method
