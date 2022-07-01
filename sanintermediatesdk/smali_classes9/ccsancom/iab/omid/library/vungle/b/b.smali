.class public Lccsancom/iab/omid/library/vungle/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/iab/omid/library/vungle/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lccsancom/iab/omid/library/vungle/b/b;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lccsancom/iab/omid/library/vungle/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/iab/omid/library/vungle/b/b;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/b/b;-><init>()V

    sput-object v0, Lccsancom/iab/omid/library/vungle/b/b;->a:Lccsancom/iab/omid/library/vungle/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/iab/omid/library/vungle/b/b;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/b/b;->a:Lccsancom/iab/omid/library/vungle/b/b;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lccsancom/iab/omid/library/vungle/b/b;->c:Z

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/b/b;->e()V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->d:Lccsancom/iab/omid/library/vungle/b/b$a;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lccsancom/iab/omid/library/vungle/b/b$a;->a(Z)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/b/a;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v2}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lccsanandroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lccsanandroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Lccsanandroid/app/Application;

    invoke-virtual {p1, p0}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public a(Lccsancom/iab/omid/library/vungle/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/b/b;->d:Lccsancom/iab/omid/library/vungle/b/b$a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->c:Z

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/b/b;->e()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->b:Z

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/b/b;->d:Lccsancom/iab/omid/library/vungle/b/b$a;

    return-void
.end method

.method d()Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 1

    new-instance v0, Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Lccsanandroid/app/ActivityManager;->getMyMemoryState(Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;)V

    return-object v0
.end method

.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 6

    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_5

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/b/b;->d()Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object p1

    iget p1, p1, Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v4}, Lccsancom/iab/omid/library/vungle/adsession/a;->e()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lccsancom/iab/omid/library/vungle/adsession/a;->d()Lccsanandroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lccsanandroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lccsancom/iab/omid/library/vungle/b/b;->a(Z)V

    :cond_5
    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/b/b;->a(Z)V

    return-void
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method
