.class final Lccsancom/mbridge/msdk/system/a$1;
.super Ljava/lang/Object;
.source "MBridgeSDKImpl.java"

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/system/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/system/a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lccsancom/mbridge/msdk/system/a$1;->a:Lccsancom/mbridge/msdk/system/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/tools/i;->c()V

    .line 68
    return-void
.end method

.method public final onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 103
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/tools/i;->d()V

    .line 104
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->c()V

    .line 105
    return-void
.end method

.method public final onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 86
    return-void
.end method

.method public final onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 1

    .line 81
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsanandroid/content/Context;)V

    .line 82
    return-void
.end method

.method public final onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 99
    return-void
.end method

.method public final onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 1

    .line 72
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->e()I

    move-result p1

    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string v0, "1"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(I)V

    .line 77
    return-void
.end method

.method public final onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 1

    .line 90
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->e()I

    move-result p1

    .line 91
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 92
    const-string v0, "2"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(I)V

    .line 95
    return-void
.end method
