.class public final Lccsancom/mbridge/msdk/mbsignalcommon/base/c;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/base/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 12
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/click/b;->d(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
