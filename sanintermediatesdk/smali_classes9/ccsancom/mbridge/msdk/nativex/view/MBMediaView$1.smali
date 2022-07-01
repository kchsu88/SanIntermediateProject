.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;
.super Lccsanandroid/os/Handler;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c()V
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

    .line 260
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    :try_start_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    if-eqz p1, :cond_0

    instance-of v0, p1, Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    check-cast p1, Lccsanandroid/view/View;

    .line 275
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/view/View;)Z

    move-result p1

    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    goto :goto_0

    .line 270
    :pswitch_1
    goto :goto_0

    .line 267
    :pswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    goto :goto_0

    .line 284
    :catch_0
    move-exception p1

    .line 285
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBMediaView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_0
    :goto_0
    nop

    .line 287
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
