.class final Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;
.super Ljava/lang/Object;
.source "MBridgeNativeEndCardView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;->b:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;->b:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 256
    return-void
.end method
