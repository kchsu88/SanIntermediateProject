.class public Lccsancom/mbridge/msdk/video/signal/a/a;
.super Ljava/lang/Object;
.source "DefaultJSActivity.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 13
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onPause"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemResume,isResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "js"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public a(Lccsanandroid/content/res/Configuration;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultJSActivity-onConfigurationChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "js"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public b()V
    .locals 2

    .line 18
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onResume"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public final c()V
    .locals 2

    .line 28
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onStop"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public final d()V
    .locals 2

    .line 33
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onStart"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final e()V
    .locals 2

    .line 38
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onRestart"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public f()V
    .locals 2

    .line 23
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onDestory"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public g()V
    .locals 2

    .line 48
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onBackPressed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public h()I
    .locals 2

    .line 53
    const-string v0, "js"

    const-string v1, "isSystemResume"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    return v0
.end method
