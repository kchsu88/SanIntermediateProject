.class final Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$4;
.super Ljava/lang/Object;
.source "MBridgeNativeEndCardView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;I)V

    .line 351
    :cond_0
    return-void
.end method
