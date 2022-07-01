.class final Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$a;
.super Ljava/lang/Object;
.source "MBridgeLandingPageView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/base/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$1;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 62
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 63
    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return v1

    .line 66
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 67
    const/4 p1, 0x1

    return p1

    .line 70
    :cond_1
    return v1
.end method
