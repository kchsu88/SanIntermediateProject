.class public Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;
.super Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;
.source "MBridgeTopFullView.java"


# static fields
.field public static final INTERFACE_RESULT:Ljava/lang/String;


# instance fields
.field protected j:Lccsanandroid/widget/ImageView;

.field protected k:Lccsanandroid/widget/TextView;

.field protected l:Lccsanandroid/widget/TextView;

.field protected m:Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WithResault"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->INTERFACE_RESULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "mbridge_nativex_fullscreen_top"

    const-string v1, "layout"

    invoke-static {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 35
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->i:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_tv_display_icon"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->j:Lccsanandroid/widget/ImageView;

    .line 38
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_tv_display_title"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->k:Lccsanandroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_tv_display_description"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->l:Lccsanandroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_full_tv_feeds_star"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->m:Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;

    .line 41
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->l:Lccsanandroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 42
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->updateLayoutParams()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getMBridgeFullViewDisplayDscription()Lccsanandroid/widget/TextView;
    .locals 1

    .line 26
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->l:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method public getMBridgeFullViewDisplayIcon()Lccsanandroid/widget/ImageView;
    .locals 1

    .line 20
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->j:Lccsanandroid/widget/ImageView;

    return-object v0
.end method

.method public getMBridgeFullViewDisplayTitle()Lccsanandroid/widget/TextView;
    .locals 1

    .line 23
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->k:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method public getStarLevelLayoutView()Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->m:Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;

    return-object v0
.end method

.method public updateLayoutParams()V
    .locals 4

    .line 50
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->a:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->b:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method
