.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;
.super Lccsanandroid/os/Handler;
.source "MBridgeH5EndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 125
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x7a

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x67

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 131
    nop

    .line 136
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
