.class public final Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;
.super Lccsancom/mbridge/msdk/mbsignalcommon/base/b;
.source "WindVaneWebViewClient.java"


# static fields
.field public static b:Z


# instance fields
.field protected a:Ljava/lang/String;

.field private c:I

.field private d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;->c:I

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 3

    .line 84
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lccsanandroid/webkit/WebResourceResponse;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "utf-8"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/a;->a(Lccsanandroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 92
    :cond_0
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 93
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 48
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;->a:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 1

    .line 74
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;->a(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->shouldInterceptRequest(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
