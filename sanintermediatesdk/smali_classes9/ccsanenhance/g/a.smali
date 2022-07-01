.class public Lccsanenhance/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static volatile a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    sget p1, Lccsanenhance/g/a;->a:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lccsanenhance/g/a;->a:I

    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 1

    .line 1
    sget v0, Lccsanenhance/g/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccsanenhance/g/a;->a:I

    .line 2
    invoke-static {p1}, Lccsanenhance/g/b;->a(Lccsanandroid/app/Activity;)V

    .line 4
    instance-of p1, p1, Lccsanen/hance/launchsdk/launch/TaskActivity;

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    const-string p1, "activity resumed"

    invoke-static {p1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p1

    sget-object v0, Lccsanenhance/a/g;->b:Lccsanenhance/a/g;

    invoke-virtual {p1, v0}, Lccsanenhance/a/e;->a(Lccsanenhance/a/g;)V

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
    .locals 1

    .line 1
    instance-of p1, p1, Lccsanen/hance/launchsdk/launch/TaskActivity;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    const-string p1, "activity stopped"

    invoke-static {p1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p1

    sget-object v0, Lccsanenhance/a/g;->c:Lccsanenhance/a/g;

    invoke-virtual {p1, v0}, Lccsanenhance/a/e;->a(Lccsanenhance/a/g;)V

    return-void
.end method
