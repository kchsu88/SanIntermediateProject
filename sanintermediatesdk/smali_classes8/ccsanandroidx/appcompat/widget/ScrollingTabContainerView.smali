.class public Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;
.super Lccsanandroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;,
        Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;,
        Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Lccsanandroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

.field mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Lccsanandroid/widget/Spinner;

.field protected final mVisAnimListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Lccsanandroid/view/ViewPropertyAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Lccsanandroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Lccsanandroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 83
    invoke-direct {p0, p1}, Lccsanandroid/widget/HorizontalScrollView;-><init>(Lccsanandroid/content/Context;)V

    .line 76
    new-instance v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    invoke-static {p1}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->get(Lccsanandroid/content/Context;)Lccsanandroidx/appcompat/view/ActionBarPolicy;

    move-result-object v0

    .line 88
    .local v0, "abp":Lccsanandroidx/appcompat/view/ActionBarPolicy;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 89
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 91
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->createTabLayout()Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    .line 92
    new-instance v2, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method private createSpinner()Lccsanandroid/widget/Spinner;
    .locals 4

    .line 215
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$attr;->actionDropDownStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 217
    .local v0, "spinner":Lccsanandroid/widget/Spinner;
    new-instance v1, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Spinner;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {v0, p0}, Lccsanandroid/widget/Spinner;->setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    return-object v0
.end method

.method private createTabLayout()Lccsanandroidx/appcompat/widget/LinearLayoutCompat;
    .locals 4

    .line 205
    new-instance v0, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$attr;->actionBarTabBarStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 207
    .local v0, "tabLayout":Lccsanandroidx/appcompat/widget/LinearLayoutCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 208
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 209
    new-instance v1, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performCollapse()V
    .locals 4

    .line 155
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->createSpinner()Lccsanandroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    .line 160
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 161
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    new-instance v1, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    new-instance v1, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Spinner;->setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V

    .line 166
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 170
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    iget v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Spinner;->setSelection(I)V

    .line 171
    return-void
.end method

.method private performExpand()Z
    .locals 5

    .line 174
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 177
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v2, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 180
    return v1
.end method


# virtual methods
.method public addTab(Lccsanandroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    .line 327
    .local v1, "tabView":Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v3, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, p2, v3}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 332
    :cond_0
    if-eqz p3, :cond_1

    .line 333
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 335
    :cond_1
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 338
    :cond_2
    return-void
.end method

.method public addTab(Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    .line 312
    .local v1, "tabView":Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v3, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 317
    :cond_0
    if-eqz p2, :cond_1

    .line 318
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 320
    :cond_1
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 323
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .line 261
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "tabView":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    :cond_0
    new-instance v1, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;-><init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;Lccsanandroid/view/View;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 273
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 236
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Lccsanandroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->cancel()V

    .line 239
    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 244
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 245
    .local v2, "anim":Lccsanandroid/view/ViewPropertyAnimator;
    invoke-virtual {v2, v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    .line 247
    sget-object v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Lccsanandroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewPropertyAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 248
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v0, v2, p1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Lccsanandroid/view/ViewPropertyAnimator;I)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 249
    invoke-virtual {v2}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 250
    .end local v2    # "anim":Lccsanandroid/view/ViewPropertyAnimator;
    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 252
    .restart local v2    # "anim":Lccsanandroid/view/ViewPropertyAnimator;
    invoke-virtual {v2, v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    .line 254
    sget-object v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Lccsanandroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewPropertyAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 255
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v0, v2, p1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Lccsanandroid/view/ViewPropertyAnimator;I)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 256
    invoke-virtual {v2}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 258
    .end local v2    # "anim":Lccsanandroid/view/ViewPropertyAnimator;
    :goto_0
    return-void
.end method

.method createTabView(Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .line 294
    new-instance v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;-><init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;Lccsanandroid/content/Context;Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)V

    .line 295
    .local v0, "tabView":Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 297
    new-instance v1, Lccsanandroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 300
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 302
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    .line 305
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 307
    :goto_0
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 278
    invoke-super {p0}, Lccsanandroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 279
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 226
    invoke-super {p0, p1}, Lccsanandroid/widget/HorizontalScrollView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 228
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->get(Lccsanandroid/content/Context;)Lccsanandroidx/appcompat/view/ActionBarPolicy;

    move-result-object v0

    .line 231
    .local v0, "abp":Lccsanandroidx/appcompat/view/ActionBarPolicy;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 232
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 233
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Lccsanandroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 288
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    :cond_0
    return-void
.end method

.method public onItemSelected(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;",
            "Lccsanandroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 372
    .local p1, "adapterView":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 373
    .local v0, "tabView":Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 374
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 98
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 99
    .local v0, "widthMode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 100
    .local v4, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 102
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    .line 103
    .local v5, "childCount":I
    if-le v5, v1, :cond_3

    if-eq v0, v3, :cond_1

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    .line 105
    :cond_1
    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 106
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    div-int/2addr v7, v6

    iput v7, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 110
    :goto_1
    iget v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v7, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 112
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 115
    :goto_2
    iget v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v6, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 117
    if-nez v4, :cond_4

    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 119
    .local v1, "canCollapse":Z
    :goto_3
    if-eqz v1, :cond_6

    .line 121
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2, p2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->measure(II)V

    .line 122
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v2

    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 123
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->performCollapse()V

    goto :goto_4

    .line 125
    :cond_5
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 128
    :cond_6
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()Z

    .line 131
    :goto_4
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 132
    .local v2, "oldWidth":I
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 133
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 135
    .local v3, "newWidth":I
    if-eqz v4, :cond_7

    if-eq v2, v3, :cond_7

    .line 137
    iget v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 139
    :cond_7
    return-void
.end method

.method public onNothingSelected(Lccsanandroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 379
    .local p1, "adapterView":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 361
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->removeAllViews()V

    .line 362
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 365
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 368
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .line 351
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 352
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 355
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 358
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .line 151
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 152
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .line 200
    iput p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 201
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 202
    return-void
.end method

.method public setTabSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 184
    iput p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 185
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    .line 186
    .local v0, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 187
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v2, v1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 188
    .local v2, "child":Lccsanandroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 189
    .local v3, "isSelected":Z
    :goto_1
    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->setSelected(Z)V

    .line 190
    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 186
    .end local v2    # "child":Lccsanandroid/view/View;
    .end local v3    # "isSelected":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    .line 195
    invoke-virtual {v1, p1}, Lccsanandroid/widget/Spinner;->setSelection(I)V

    .line 197
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .line 341
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 342
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 345
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 348
    :cond_1
    return-void
.end method
