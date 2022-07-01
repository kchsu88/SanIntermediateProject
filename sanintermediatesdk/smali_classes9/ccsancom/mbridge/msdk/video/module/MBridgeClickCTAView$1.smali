.class final Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;
.super Ljava/lang/Object;
.source "MBridgeClickCTAView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/ViewGroup;

.field final synthetic b:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;Lccsanandroid/view/ViewGroup;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;->a:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;->a:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 89
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;)Z

    move-result v0

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->f:Z

    .line 90
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    const-string v0, "mbridge_tv_desc"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;Lccsanandroid/widget/TextView;)Lccsanandroid/widget/TextView;

    .line 91
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->c()V

    .line 92
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/c/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
