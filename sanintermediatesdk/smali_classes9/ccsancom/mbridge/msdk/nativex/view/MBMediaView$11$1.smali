.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;
.super Lccsancom/mbridge/msdk/widget/a;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 1

    .line 781
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;

    iget-object p1, p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 784
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V

    .line 786
    :goto_0
    return-void
.end method
