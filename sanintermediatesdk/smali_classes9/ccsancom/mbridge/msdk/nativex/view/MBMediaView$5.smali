.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$5;
.super Lccsancom/mbridge/msdk/nativex/listener/b;
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

    .line 2403
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$5;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/nativex/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2406
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$5;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->exitFullScreen()V

    .line 2407
    return-void
.end method
