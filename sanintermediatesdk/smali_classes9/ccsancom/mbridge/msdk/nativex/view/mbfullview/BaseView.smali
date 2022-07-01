.class public Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;
.super Lccsanandroid/widget/RelativeLayout;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;
    }
.end annotation


# instance fields
.field protected a:Lccsanandroid/widget/RelativeLayout;

.field protected b:Lccsanandroid/widget/RelativeLayout;

.field protected c:Lccsanandroid/widget/RelativeLayout;

.field protected d:Lccsanandroid/widget/ImageView;

.field protected e:Lccsanandroid/widget/TextView;

.field protected f:Lccsanandroid/widget/ProgressBar;

.field protected g:Lccsanandroid/widget/FrameLayout;

.field protected h:Lccsanandroid/widget/LinearLayout;

.field protected i:Lccsanandroid/widget/RelativeLayout;

.field public style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "mbridge_nativex_fullbasescreen"

    const-string v1, "layout"

    invoke-static {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 48
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    .line 49
    move-object v0, p1

    check-cast v0, Lccsanandroid/widget/RelativeLayout;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->i:Lccsanandroid/widget/RelativeLayout;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_rl_playcontainer"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/RelativeLayout;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->a:Lccsanandroid/widget/RelativeLayout;

    .line 52
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_player_parent"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/RelativeLayout;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->b:Lccsanandroid/widget/RelativeLayout;

    .line 53
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_rl_close"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/RelativeLayout;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->c:Lccsanandroid/widget/RelativeLayout;

    .line 54
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_iv_close"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->d:Lccsanandroid/widget/ImageView;

    .line 55
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_tv_install"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->e:Lccsanandroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_pb_loading"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->f:Lccsanandroid/widget/ProgressBar;

    .line 57
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_animation_content"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->g:Lccsanandroid/widget/FrameLayout;

    .line 58
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_animation_player"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->h:Lccsanandroid/widget/LinearLayout;

    .line 59
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getMBridgeFullClose()Lccsanandroid/widget/RelativeLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->c:Lccsanandroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMBridgeFullIvClose()Lccsanandroid/widget/ImageView;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->d:Lccsanandroid/widget/ImageView;

    return-object v0
.end method

.method public getMBridgeFullPb()Lccsanandroid/widget/ProgressBar;
    .locals 1

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->f:Lccsanandroid/widget/ProgressBar;

    return-object v0
.end method

.method public getMBridgeFullPlayContainer()Lccsanandroid/widget/RelativeLayout;
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->a:Lccsanandroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMBridgeFullPlayerParent()Lccsanandroid/widget/RelativeLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->b:Lccsanandroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMBridgeFullTvInstall()Lccsanandroid/widget/TextView;
    .locals 1

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->e:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method public getStytle()Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;
    .locals 1

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    return-object v0
.end method

.method public getmAnimationContent()Lccsanandroid/widget/FrameLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->g:Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method

.method public getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->h:Lccsanandroid/widget/LinearLayout;

    return-object v0
.end method

.method public setStytle(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    .line 94
    return-void
.end method
