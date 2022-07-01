.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;
.super Lccsancom/mbridge/msdk/widget/a;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n()V
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

    .line 812
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$12;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V

    .line 820
    :goto_0
    const-string p1, "MBMediaView"

    const-string v0, "CLICK WEBVIEW LAYOUT "

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    return-void
.end method
