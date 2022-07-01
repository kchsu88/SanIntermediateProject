.class final Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$2;
.super Lccsancom/mbridge/msdk/widget/a;
.source "MBridgeVastEndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->d()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 64
    return-void
.end method
