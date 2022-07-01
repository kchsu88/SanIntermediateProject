.class public final Lccsancom/google/android/material/tabs/TabLayout$TabView;
.super Lccsanandroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field private badgeAnchorView:Lccsanandroid/view/View;

.field private badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

.field private baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private customIconView:Lccsanandroid/widget/ImageView;

.field private customTextView:Lccsanandroid/widget/TextView;

.field private customView:Lccsanandroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Lccsanandroid/widget/ImageView;

.field private tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

.field private textView:Lccsanandroid/widget/TextView;

.field final synthetic this$0:Lccsancom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/tabs/TabLayout;Lccsanandroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lccsancom/google/android/material/tabs/TabLayout;
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 2341
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    .line 2342
    invoke-direct {p0, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2339
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 2343
    invoke-direct {p0, p2}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Lccsanandroid/content/Context;)V

    .line 2344
    iget v0, p1, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    iget v1, p1, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    iget v2, p1, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    iget v3, p1, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, v0, v1, v2, v3}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    .line 2346
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setGravity(I)V

    .line 2347
    iget-boolean v0, p1, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    .line 2348
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setClickable(Z)V

    .line 2349
    nop

    .line 2350
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;->getSystemIcon(Lccsanandroid/content/Context;I)Lccsanandroidx/core/view/PointerIconCompat;

    move-result-object v0

    .line 2349
    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setPointerIcon(Lccsanandroid/view/View;Lccsanandroidx/core/view/PointerIconCompat;)V

    .line 2351
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;
    .param p1, "x1"    # Lccsanandroid/content/Context;

    .line 2327
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;
    .param p1, "x1"    # Lccsanandroid/view/View;

    .line 2327
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Lccsanandroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;
    .param p1, "x1"    # Lccsanandroid/graphics/Canvas;

    .line 2327
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->drawBackground(Lccsanandroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lccsancom/google/android/material/tabs/TabLayout$TabView;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 2327
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/tabs/TabLayout$TabView;)Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 2327
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/tabs/TabLayout$TabView;)Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 2327
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getOrCreateBadge()Lccsancom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/google/android/material/tabs/TabLayout$TabView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 2327
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->removeBadge()V

    return-void
.end method

.method static synthetic access$900(Lccsancom/google/android/material/tabs/TabLayout$TabView;)Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 2327
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getBadge()Lccsancom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    return-object v0
.end method

.method private addOnLayoutChangeListener(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 2718
    if-nez p1, :cond_0

    .line 2719
    return-void

    .line 2721
    :cond_0
    new-instance v0, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;-><init>(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/view/View;)V

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->addOnLayoutChangeListener(Lccsanandroid/view/View$OnLayoutChangeListener;)V

    .line 2739
    return-void
.end method

.method private approximateLineWidth(Lccsanandroid/text/Layout;IF)F
    .locals 2
    .param p1, "layout"    # Lccsanandroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .line 2952
    invoke-virtual {p1, p2}, Lccsanandroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/text/Layout;->getPaint()Lccsanandroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float v0, v0, v1

    return v0
.end method

.method private clipViewToPaddingForBadge(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 2799
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setClipChildren(Z)V

    .line 2800
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setClipToPadding(Z)V

    .line 2801
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 2802
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2803
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2804
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2806
    :cond_0
    return-void
.end method

.method private createPreApi18BadgeAnchorRoot()Lccsanandroid/widget/FrameLayout;
    .locals 3

    .line 2678
    new-instance v0, Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2679
    .local v0, "frameLayout":Lccsanandroid/widget/FrameLayout;
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2682
    .local v1, "layoutparams":Lccsanandroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2683
    return-object v0
.end method

.method private drawBackground(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 2409
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2411
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 2413
    :cond_0
    return-void
.end method

.method private getBadge()Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 2707
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    return-object v0
.end method

.method private getCustomParentForBadge(Lccsanandroid/view/View;)Lccsanandroid/widget/FrameLayout;
    .locals 2
    .param p1, "anchor"    # Lccsanandroid/view/View;

    .line 2895
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-eq p1, v0, :cond_0

    .line 2896
    return-object v1

    .line 2898
    :cond_0
    sget-boolean v0, Lccsancom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    :cond_1
    return-object v1
.end method

.method private getOrCreateBadge()Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 2

    .line 2695
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_0

    .line 2696
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/material/badge/BadgeDrawable;->create(Lccsanandroid/content/Context;)Lccsancom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 2698
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 2699
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    .line 2702
    return-object v0

    .line 2700
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create badge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasBadgeDrawable()Z
    .locals 1

    .line 2890
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inflateAndAddDefaultIconView()V
    .locals 4

    .line 2651
    move-object v0, p0

    .line 2652
    .local v0, "iconViewParent":Lccsanandroid/view/ViewGroup;
    sget-boolean v1, Lccsancom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2653
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    .line 2654
    invoke-virtual {p0, v0, v2}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->addView(Lccsanandroid/view/View;I)V

    .line 2656
    :cond_0
    nop

    .line 2658
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lccsancom/google/android/material/R$layout;->design_layout_tab_icon:I

    .line 2659
    invoke-virtual {v1, v3, v0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    .line 2660
    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;I)V

    .line 2661
    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .locals 4

    .line 2664
    move-object v0, p0

    .line 2665
    .local v0, "textViewParent":Lccsanandroid/view/ViewGroup;
    sget-boolean v1, Lccsancom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v1, :cond_0

    .line 2666
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->createPreApi18BadgeAnchorRoot()Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    .line 2667
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->addView(Lccsanandroid/view/View;)V

    .line 2669
    :cond_0
    nop

    .line 2671
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$layout;->design_layout_tab_text:I

    const/4 v3, 0x0

    .line 2672
    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    .line 2673
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 2674
    return-void
.end method

.method private removeBadge()V
    .locals 1

    .line 2711
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2712
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2714
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 2715
    return-void
.end method

.method private tryAttachBadgeToAnchor(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "anchorView"    # Lccsanandroid/view/View;

    .line 2774
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    return-void

    .line 2777
    :cond_0
    if-eqz p1, :cond_1

    .line 2778
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->clipViewToPaddingForBadge(Z)V

    .line 2779
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 2780
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getCustomParentForBadge(Lccsanandroid/view/View;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    .line 2779
    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 2781
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    .line 2783
    :cond_1
    return-void
.end method

.method private tryRemoveBadgeFromAnchor()V
    .locals 2

    .line 2786
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2787
    return-void

    .line 2789
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->clipViewToPaddingForBadge(Z)V

    .line 2790
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    .line 2791
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    invoke-static {v1, v0}, Lccsancom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;)V

    .line 2792
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    .line 2794
    :cond_1
    return-void
.end method

.method private tryUpdateBadgeAnchor()V
    .locals 2

    .line 2742
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2743
    return-void

    .line 2745
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    .line 2747
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    goto :goto_0

    .line 2749
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2750
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    if-eq v0, v1, :cond_2

    .line 2751
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2753
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryAttachBadgeToAnchor(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 2755
    :cond_2
    invoke-direct {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 2757
    :cond_3
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_5

    .line 2759
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getTabLabelVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2760
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-eq v0, v1, :cond_4

    .line 2761
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2763
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryAttachBadgeToAnchor(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 2765
    :cond_4
    invoke-direct {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 2768
    :cond_5
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2771
    :goto_0
    return-void
.end method

.method private tryUpdateBadgeDrawableBounds(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Lccsanandroid/view/View;

    .line 2884
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeAnchorView:Lccsanandroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2885
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getCustomParentForBadge(Lccsanandroid/view/View;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 2887
    :cond_0
    return-void
.end method

.method private updateBackgroundDrawable(Lccsanandroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 2354
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 2356
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2357
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2360
    :cond_0
    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 2364
    :cond_1
    :goto_0
    new-instance v0, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2365
    .local v0, "contentDrawable":Lccsanandroid/graphics/drawable/Drawable;
    move-object v2, v0

    check-cast v2, Lccsanandroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2367
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lccsancom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 2368
    new-instance v2, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2372
    .local v2, "maskDrawable":Lccsanandroid/graphics/drawable/GradientDrawable;
    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v2, v4}, Lccsanandroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2373
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2375
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lccsancom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

    .line 2376
    invoke-static {v4}, Lccsancom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 2380
    .local v4, "rippleColor":Lccsanandroid/content/res/ColorStateList;
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4

    .line 2381
    new-instance v3, Lccsanandroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-boolean v5, v5, Lccsancom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    iget-object v6, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-boolean v6, v6, Lccsancom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-direct {v3, v4, v5, v1}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    .local v1, "background":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 2387
    .end local v1    # "background":Lccsanandroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static {v2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2388
    .local v1, "rippleDrawable":Lccsanandroid/graphics/drawable/Drawable;
    invoke-static {v1, v4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 2389
    new-instance v5, Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object v0, v6, v3

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-direct {v5, v6}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    move-object v3, v5

    move-object v1, v3

    .line 2391
    .end local v2    # "maskDrawable":Lccsanandroid/graphics/drawable/GradientDrawable;
    .end local v4    # "rippleColor":Lccsanandroid/content/res/ColorStateList;
    .local v1, "background":Lccsanandroid/graphics/drawable/Drawable;
    :goto_3
    goto :goto_4

    .line 2392
    .end local v1    # "background":Lccsanandroid/graphics/drawable/Drawable;
    :cond_5
    move-object v1, v0

    .line 2394
    .restart local v1    # "background":Lccsanandroid/graphics/drawable/Drawable;
    :goto_4
    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2395
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lccsancom/google/android/material/tabs/TabLayout;->invalidate()V

    .line 2396
    return-void
.end method

.method private updateTextAndIcon(Lccsanandroid/widget/TextView;Lccsanandroid/widget/ImageView;)V
    .locals 9
    .param p1, "textView"    # Lccsanandroid/widget/TextView;
    .param p2, "iconView"    # Lccsanandroid/widget/ImageView;

    .line 2819
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2820
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 2821
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2823
    .local v0, "icon":Lccsanandroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 2825
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    .line 2826
    if-eqz v0, :cond_2

    .line 2827
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2828
    invoke-virtual {p2, v4}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 2829
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    goto :goto_2

    .line 2831
    :cond_2
    invoke-virtual {p2, v3}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 2832
    invoke-virtual {p2, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2836
    :cond_3
    :goto_2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 2837
    .local v5, "hasText":Z
    if-eqz p1, :cond_6

    .line 2838
    if-eqz v5, :cond_5

    .line 2839
    invoke-virtual {p1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2840
    iget-object v7, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {v7}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$1100(Lccsancom/google/android/material/tabs/TabLayout$Tab;)I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 2841
    invoke-virtual {p1, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2843
    :cond_4
    invoke-virtual {p1, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 2845
    :goto_3
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 2847
    :cond_5
    invoke-virtual {p1, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 2848
    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2852
    :cond_6
    :goto_4
    if-eqz p2, :cond_9

    .line 2853
    invoke-virtual {p2}, Lccsanandroid/widget/ImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 2854
    .local v6, "lp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    const/4 v7, 0x0

    .line 2855
    .local v7, "iconMargin":I
    if-eqz v5, :cond_7

    invoke-virtual {p2}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    .line 2857
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lccsancom/google/android/material/internal/ViewUtils;->dpToPx(Lccsanandroid/content/Context;I)F

    move-result v3

    float-to-int v7, v3

    .line 2859
    :cond_7
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-boolean v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_8

    .line 2860
    invoke-static {v6}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v7, v3, :cond_9

    .line 2861
    invoke-static {v6, v7}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2862
    iput v4, v6, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2864
    invoke-virtual {p2, v6}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2865
    invoke-virtual {p2}, Lccsanandroid/widget/ImageView;->requestLayout()V

    goto :goto_5

    .line 2868
    :cond_8
    iget v3, v6, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v7, v3, :cond_9

    .line 2869
    iput v7, v6, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2870
    invoke-static {v6, v4}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2872
    invoke-virtual {p2, v6}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2873
    invoke-virtual {p2}, Lccsanandroid/widget/ImageView;->requestLayout()V

    .line 2878
    .end local v6    # "lp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "iconMargin":I
    :cond_9
    :goto_5
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v3, :cond_a

    invoke-static {v3}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$200(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2879
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    :cond_a
    if-eqz v5, :cond_b

    move-object v3, v2

    goto :goto_6

    :cond_b
    move-object v3, v1

    :goto_6
    invoke-static {p0, v3}, Lccsanandroidx/appcompat/widget/TooltipCompat;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 2880
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 2417
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2418
    const/4 v0, 0x0

    .line 2419
    .local v0, "changed":Z
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v1

    .line 2420
    .local v1, "state":[I
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2421
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2424
    :cond_0
    if-eqz v0, :cond_1

    .line 2425
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    .line 2426
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lccsancom/google/android/material/tabs/TabLayout;->invalidate()V

    .line 2428
    :cond_1
    return-void
.end method

.method getContentHeight()I
    .locals 8

    .line 2930
    const/4 v0, 0x0

    .line 2931
    .local v0, "initialized":Z
    const/4 v1, 0x0

    .line 2932
    .local v1, "top":I
    const/4 v2, 0x0

    .line 2934
    .local v2, "bottom":I
    const/4 v3, 0x3

    new-array v4, v3, [Lccsanandroid/view/View;

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v5, v4, v6

    .line 2935
    .local v5, "view":Lccsanandroid/view/View;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lccsanandroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2936
    invoke-virtual {v5}, Lccsanandroid/view/View;->getTop()I

    move-result v7

    if-eqz v0, :cond_0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_0
    move v1, v7

    .line 2937
    invoke-virtual {v5}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    if-eqz v0, :cond_1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1
    move v2, v7

    .line 2938
    const/4 v0, 0x1

    .line 2934
    .end local v5    # "view":Lccsanandroid/view/View;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2942
    :cond_3
    sub-int v3, v2, v1

    return v3
.end method

.method getContentWidth()I
    .locals 8

    .line 2908
    const/4 v0, 0x0

    .line 2909
    .local v0, "initialized":Z
    const/4 v1, 0x0

    .line 2910
    .local v1, "left":I
    const/4 v2, 0x0

    .line 2912
    .local v2, "right":I
    const/4 v3, 0x3

    new-array v4, v3, [Lccsanandroid/view/View;

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v5, v4, v6

    .line 2913
    .local v5, "view":Lccsanandroid/view/View;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lccsanandroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2914
    invoke-virtual {v5}, Lccsanandroid/view/View;->getLeft()I

    move-result v7

    if-eqz v0, :cond_0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_0
    move v1, v7

    .line 2915
    invoke-virtual {v5}, Lccsanandroid/view/View;->getRight()I

    move-result v7

    if-eqz v0, :cond_1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1
    move v2, v7

    .line 2916
    const/4 v0, 0x1

    .line 2912
    .end local v5    # "view":Lccsanandroid/view/View;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2920
    :cond_3
    sub-int v3, v2, v1

    return v3
.end method

.method public getTab()Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .locals 1

    .line 2947
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 2471
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2472
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2474
    .local v0, "customContentDescription":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 2475
    invoke-virtual {v2}, Lccsancom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2474
    invoke-virtual {p1, v1}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2477
    .end local v0    # "customContentDescription":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 2478
    .local v0, "infoCompat":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 2482
    invoke-virtual {v3}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2485
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v6

    .line 2479
    invoke-static/range {v1 .. v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 2478
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 2486
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2487
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 2488
    sget-object v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 2490
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->item_view_role_description:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 2491
    return-void
.end method

.method public onMeasure(II)V
    .locals 17
    .param p1, "origWidthMeasureSpec"    # I
    .param p2, "origHeightMeasureSpec"    # I

    .line 2495
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2496
    .local v1, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2497
    .local v2, "specWidthMode":I
    iget-object v3, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lccsancom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    move-result v3

    .line 2500
    .local v3, "maxWidth":I
    move/from16 v4, p2

    .line 2502
    .local v4, "heightMeasureSpec":I
    if-lez v3, :cond_1

    if-eqz v2, :cond_0

    if-le v1, v3, :cond_1

    .line 2505
    :cond_0
    iget-object v5, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v5, v5, Lccsancom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "widthMeasureSpec":I
    goto :goto_0

    .line 2508
    .end local v5    # "widthMeasureSpec":I
    :cond_1
    move/from16 v5, p1

    .line 2512
    .restart local v5    # "widthMeasureSpec":I
    :goto_0
    invoke-super {v0, v5, v4}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 2515
    iget-object v6, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 2516
    iget-object v6, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lccsancom/google/android/material/tabs/TabLayout;->tabTextSize:F

    .line 2517
    .local v6, "textSize":F
    iget v7, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 2519
    .local v7, "maxLines":I
    iget-object v8, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 2521
    const/4 v7, 0x1

    goto :goto_1

    .line 2522
    :cond_2
    iget-object v8, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lccsanandroid/widget/TextView;->getLineCount()I

    move-result v8

    if-le v8, v9, :cond_3

    .line 2524
    iget-object v8, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v6, v8, Lccsancom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 2527
    :cond_3
    :goto_1
    iget-object v8, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-virtual {v8}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v8

    .line 2528
    .local v8, "curTextSize":F
    iget-object v10, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-virtual {v10}, Lccsanandroid/widget/TextView;->getLineCount()I

    move-result v10

    .line 2529
    .local v10, "curLineCount":I
    iget-object v11, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-static {v11}, Lccsanandroidx/core/widget/TextViewCompat;->getMaxLines(Lccsanandroid/widget/TextView;)I

    move-result v11

    .line 2531
    .local v11, "curMaxLines":I
    cmpl-float v12, v6, v8

    if-nez v12, :cond_4

    if-ltz v11, :cond_7

    if-eq v7, v11, :cond_7

    .line 2533
    :cond_4
    const/4 v12, 0x1

    .line 2535
    .local v12, "updateTextView":Z
    iget-object v13, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v13, v13, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v14, 0x0

    if-ne v13, v9, :cond_6

    cmpl-float v13, v6, v8

    if-lez v13, :cond_6

    if-ne v10, v9, :cond_6

    .line 2541
    iget-object v9, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-virtual {v9}, Lccsanandroid/widget/TextView;->getLayout()Lccsanandroid/text/Layout;

    move-result-object v9

    .line 2542
    .local v9, "layout":Lccsanandroid/text/Layout;
    if-eqz v9, :cond_5

    .line 2543
    invoke-direct {v0, v9, v14, v6}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->approximateLineWidth(Lccsanandroid/text/Layout;IF)F

    move-result v13

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v13, v13, v15

    if-lez v13, :cond_6

    .line 2545
    :cond_5
    const/4 v12, 0x0

    .line 2549
    .end local v9    # "layout":Lccsanandroid/text/Layout;
    :cond_6
    if-eqz v12, :cond_7

    .line 2550
    iget-object v9, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-virtual {v9, v14, v6}, Lccsanandroid/widget/TextView;->setTextSize(IF)V

    .line 2551
    iget-object v9, v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-virtual {v9, v7}, Lccsanandroid/widget/TextView;->setMaxLines(I)V

    .line 2552
    invoke-super {v0, v5, v4}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 2556
    .end local v6    # "textSize":F
    .end local v7    # "maxLines":I
    .end local v8    # "curTextSize":F
    .end local v10    # "curLineCount":I
    .end local v11    # "curMaxLines":I
    .end local v12    # "updateTextView":Z
    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 2432
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2434
    .local v0, "handled":Z
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v1, :cond_1

    .line 2435
    if-nez v0, :cond_0

    .line 2436
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->playSoundEffect(I)V

    .line 2438
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 2439
    const/4 v1, 0x1

    return v1

    .line 2441
    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    .line 2566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 2567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 2568
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .line 2447
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2449
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->setSelected(Z)V

    .line 2451
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 2453
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2458
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2459
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setSelected(Z)V

    .line 2461
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2462
    invoke-virtual {v1, p1}, Lccsanandroid/widget/ImageView;->setSelected(Z)V

    .line 2464
    :cond_3
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    if-eqz v1, :cond_4

    .line 2465
    invoke-virtual {v1, p1}, Lccsanandroid/view/View;->setSelected(Z)V

    .line 2467
    :cond_4
    return-void
.end method

.method setTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 2559
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2560
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 2561
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->update()V

    .line 2563
    :cond_0
    return-void
.end method

.method final update()V
    .locals 6

    .line 2571
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 2572
    .local v0, "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Lccsanandroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2573
    .local v2, "custom":Lccsanandroid/view/View;
    :goto_0
    if-eqz v2, :cond_6

    .line 2574
    invoke-virtual {v2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    .line 2575
    .local v3, "customParent":Lccsanandroid/view/ViewParent;
    if-eq v3, p0, :cond_2

    .line 2576
    if-eqz v3, :cond_1

    .line 2577
    move-object v4, v3

    check-cast v4, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 2579
    :cond_1
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->addView(Lccsanandroid/view/View;)V

    .line 2581
    :cond_2
    iput-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    .line 2582
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    .line 2583
    invoke-virtual {v4, v5}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 2585
    :cond_3
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 2586
    invoke-virtual {v4, v5}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 2587
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2590
    :cond_4
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/TextView;

    iput-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customTextView:Lccsanandroid/widget/TextView;

    .line 2591
    if-eqz v4, :cond_5

    .line 2592
    invoke-static {v4}, Lccsanandroidx/core/widget/TextViewCompat;->getMaxLines(Lccsanandroid/widget/TextView;)I

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 2594
    :cond_5
    const v4, 0x1020006

    invoke-virtual {v2, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/ImageView;

    iput-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customIconView:Lccsanandroid/widget/ImageView;

    .line 2595
    .end local v3    # "customParent":Lccsanandroid/view/ViewParent;
    goto :goto_1

    .line 2597
    :cond_6
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    if-eqz v3, :cond_7

    .line 2598
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->removeView(Lccsanandroid/view/View;)V

    .line 2599
    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    .line 2601
    :cond_7
    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customTextView:Lccsanandroid/widget/TextView;

    .line 2602
    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customIconView:Lccsanandroid/widget/ImageView;

    .line 2605
    :goto_1
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customView:Lccsanandroid/view/View;

    if-nez v3, :cond_d

    .line 2607
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    if-nez v3, :cond_8

    .line 2608
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->inflateAndAddDefaultIconView()V

    .line 2610
    :cond_8
    if-eqz v0, :cond_9

    .line 2611
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2612
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_9
    nop

    .line 2614
    .local v1, "icon":Lccsanandroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v1, :cond_a

    .line 2615
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTint:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v1, v3}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 2616
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_a

    .line 2617
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v3}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 2621
    :cond_a
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    if-nez v3, :cond_b

    .line 2622
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->inflateAndAddDefaultTextView()V

    .line 2623
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-static {v3}, Lccsanandroidx/core/widget/TextViewCompat;->getMaxLines(Lccsanandroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 2625
    :cond_b
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v4, v4, Lccsancom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    invoke-static {v3, v4}, Lccsanandroidx/core/widget/TextViewCompat;->setTextAppearance(Lccsanandroid/widget/TextView;I)V

    .line 2626
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    if-eqz v3, :cond_c

    .line 2627
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 2629
    :cond_c
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Lccsanandroid/widget/TextView;Lccsanandroid/widget/ImageView;)V

    .line 2631
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 2632
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v3}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->addOnLayoutChangeListener(Lccsanandroid/view/View;)V

    .line 2633
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    invoke-direct {p0, v3}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->addOnLayoutChangeListener(Lccsanandroid/view/View;)V

    .line 2634
    .end local v1    # "icon":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 2636
    :cond_d
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customTextView:Lccsanandroid/widget/TextView;

    if-nez v1, :cond_e

    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customIconView:Lccsanandroid/widget/ImageView;

    if-eqz v3, :cond_f

    .line 2637
    :cond_e
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customIconView:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Lccsanandroid/widget/TextView;Lccsanandroid/widget/ImageView;)V

    .line 2641
    :cond_f
    :goto_3
    if-eqz v0, :cond_10

    invoke-static {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$200(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2644
    invoke-static {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$200(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2647
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_4

    :cond_11
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 2648
    return-void
.end method

.method final updateOrientation()V
    .locals 2

    .line 2809
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-boolean v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    .line 2810
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customTextView:Lccsanandroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customIconView:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2813
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->textView:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->iconView:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Lccsanandroid/widget/TextView;Lccsanandroid/widget/ImageView;)V

    goto :goto_1

    .line 2811
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView;->customIconView:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Lccsanandroid/widget/TextView;Lccsanandroid/widget/ImageView;)V

    .line 2815
    :goto_1
    return-void
.end method
