.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$6;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 2409
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2418
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2419
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 2420
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 2412
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 2413
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 2414
    return-void
.end method
