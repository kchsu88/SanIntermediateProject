.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$g;
.super Lccsanandroid/webkit/WebViewClient;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/mbridge/msdk/nativex/view/MBMediaView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 2465
    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    .line 2466
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$g;->a:Ljava/lang/ref/WeakReference;

    .line 2467
    return-void
.end method


# virtual methods
.method public final onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 2471
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 2473
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2474
    if-eqz p1, :cond_0

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object p2

    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne p2, v0, :cond_0

    .line 2475
    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->J(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2476
    sget-object p2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->c:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 2477
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->changeNoticeURL()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2481
    :cond_0
    goto :goto_0

    .line 2479
    :catch_0
    move-exception p1

    .line 2480
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    :goto_0
    return-void
.end method
