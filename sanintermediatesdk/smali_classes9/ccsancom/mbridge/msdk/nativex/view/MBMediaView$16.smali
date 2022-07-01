.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$16;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsanandroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
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

    .line 1739
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$16;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Lccsanandroid/view/View;ILccsanandroid/view/KeyEvent;)Z
    .locals 0

    .line 1743
    :try_start_0
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1744
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$16;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->y(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    const/4 p1, 0x1

    return p1

    .line 1749
    :cond_0
    goto :goto_0

    .line 1747
    :catchall_0
    move-exception p1

    .line 1748
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
