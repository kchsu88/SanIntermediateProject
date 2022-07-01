.class public Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;
.super Lccsanandroid/widget/LinearLayout;
.source "ActionBar.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;
    }
.end annotation


# instance fields
.field private a:Lccsanandroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addAction(Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->getChildCount()I

    move-result v0

    .line 43
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->addAction(Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;I)V

    .line 44
    return-void
.end method

.method public addAction(Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;I)V
    .locals 4

    .line 47
    nop

    .line 1080
    nop

    .line 1081
    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;->a()Lccsanandroid/view/View;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->newActionItem()Lccsanandroid/view/View;

    move-result-object v1

    .line 1084
    move-object v2, v1

    check-cast v2, Lccsanandroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/ViewGroup;

    .line 1085
    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 1086
    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {v0, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1082
    :cond_0
    const/4 v1, 0x0

    .line 1089
    :goto_0
    nop

    .line 47
    invoke-virtual {p0, v1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->addView(Lccsanandroid/view/View;I)V

    .line 48
    return-void
.end method

.method public getActionCount()I
    .locals 1

    .line 76
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWebView()Lccsanandroid/webkit/WebView;
    .locals 1

    .line 34
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->a:Lccsanandroid/webkit/WebView;

    return-object v0
.end method

.method public newActionItem()Lccsanandroid/view/View;
    .locals 5

    .line 100
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 101
    new-instance v1, Lccsanandroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 102
    new-instance v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 104
    invoke-virtual {v1, v2}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v2, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 106
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    const/16 v3, 0x11

    iput v3, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {v2, v0}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v1, v2}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V

    .line 110
    return-object v1
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 27
    instance-of v1, v0, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;

    .line 29
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->a:Lccsanandroid/webkit/WebView;

    invoke-interface {v0, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;->a(Lccsanandroid/view/View;Lccsanandroid/webkit/WebView;)V

    .line 31
    :cond_0
    return-void
.end method

.method public removeAction(Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;)Z
    .locals 6

    .line 60
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->getChildCount()I

    move-result v0

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3}, Lccsanandroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 65
    instance-of v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar$a;

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->removeView(Lccsanandroid/view/View;)V

    .line 67
    const/4 p1, 0x1

    return p1

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return v1
.end method

.method public removeActionAt(I)V
    .locals 1

    .line 55
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->removeViewAt(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public removeAllActions()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->removeAllViews()V

    .line 52
    return-void
.end method

.method public setWebView(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/ActionBar;->a:Lccsanandroid/webkit/WebView;

    .line 39
    return-void
.end method
