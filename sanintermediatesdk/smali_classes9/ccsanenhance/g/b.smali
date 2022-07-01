.class public Lccsanenhance/g/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lccsanandroid/content/Context;

.field public static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lccsanandroid/content/Context;
    .locals 1

    .line 4
    sget-object v0, Lccsanenhance/g/b;->a:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public static a(Lccsanandroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsanenhance/g/b;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lccsanenhance/g/b;->b(Lccsanandroid/content/Context;)V

    .line 3
    check-cast p0, Lccsanandroid/app/Application;

    new-instance v0, Lccsanenhance/g/a;

    invoke-direct {v0}, Lccsanenhance/g/a;-><init>()V

    invoke-virtual {p0, v0}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static b()Lccsanandroid/app/Activity;
    .locals 1

    .line 2
    sget-object v0, Lccsanenhance/g/b;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    :goto_0
    return-object v0
.end method

.method public static b(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lccsanenhance/g/b;->a:Lccsanandroid/content/Context;

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget v0, Lccsanenhance/g/a;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
