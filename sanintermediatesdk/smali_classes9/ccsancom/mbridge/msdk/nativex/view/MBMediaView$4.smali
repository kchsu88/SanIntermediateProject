.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1813
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1816
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 1817
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->z(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/widget/TextView;

    .line 1819
    :cond_0
    return-void
.end method
