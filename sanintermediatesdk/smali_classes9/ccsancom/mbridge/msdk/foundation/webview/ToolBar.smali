.class public Lccsancom/mbridge/msdk/foundation/webview/ToolBar;
.super Lccsanandroid/widget/LinearLayout;
.source "ToolBar.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->a()V

    .line 24
    return-void
.end method

.method private a()V
    .locals 6

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->setOrientation(I)V

    .line 40
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    .line 41
    invoke-virtual {p0, v0, v1, v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->setPadding(IIII)V

    .line 43
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->b()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 44
    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 46
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v4, "ccsan_mbridge_cm_backward"

    const-string v5, "drawable"

    invoke-virtual {v2, v4, v5, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->addView(Lccsanandroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->b()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 51
    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "ccsan_mbridge_cm_forward"

    invoke-virtual {v2, v4, v5, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->addView(Lccsanandroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->b()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 58
    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 60
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v4, "ccsan_mbridge_cm_refresh"

    invoke-virtual {v2, v4, v5, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->addView(Lccsanandroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->b()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 65
    const-string v1, "exits"

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 67
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 66
    const-string v4, "ccsan_mbridge_cm_exits"

    invoke-virtual {v2, v4, v5, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->addView(Lccsanandroid/view/View;)V

    .line 70
    return-void
.end method

.method private b()Lccsanandroid/view/View;
    .locals 3

    .line 73
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 74
    new-instance v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Lccsanandroid/view/View;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->findViewWithTag(Ljava/lang/Object;)Lccsanandroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lccsanandroid/view/View$OnClickListener;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getChildCount()I

    move-result v0

    .line 28
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 29
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
