.class Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
.super Lccsanandroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.app.ActionBar$Tab"


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Lccsanandroid/view/View;

.field private mIconView:Lccsanandroid/widget/ImageView;

.field private mTab:Lccsanandroidx/appcompat/app/ActionBar$Tab;

.field private mTextView:Lccsanandroid/widget/TextView;

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;Lccsanandroid/content/Context;Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 3
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "tab"    # Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .line 395
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    .line 396
    sget p1, Lccsanandroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 382
    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x10100d4

    const/4 v2, 0x0

    aput v1, p1, v2

    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 397
    iput-object p3, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Lccsanandroidx/appcompat/app/ActionBar$Tab;

    .line 399
    sget v1, Lccsanandroidx/appcompat/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v0, p1, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 401
    .local p1, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {p1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 404
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 406
    if-eqz p4, :cond_1

    .line 407
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 410
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 411
    return-void
.end method


# virtual methods
.method public bindTab(Lccsanandroidx/appcompat/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Lccsanandroidx/appcompat/app/ActionBar$Tab;

    .line 414
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Lccsanandroidx/appcompat/app/ActionBar$Tab;

    .line 415
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 416
    return-void
.end method

.method public getTab()Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 522
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Lccsanandroidx/appcompat/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 429
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 436
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 439
    const-string v0, "androidx.appcompat.app.ActionBar$Tab"

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 444
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 447
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, v1, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 451
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 420
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->setSelected(Z)V

    .line 422
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 423
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 425
    :cond_1
    return-void
.end method

.method public update()V
    .locals 12

    .line 454
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTab:Lccsanandroidx/appcompat/app/ActionBar$Tab;

    .line 455
    .local v0, "tab":Lccsanandroidx/appcompat/app/ActionBar$Tab;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->getCustomView()Lccsanandroid/view/View;

    move-result-object v1

    .line 456
    .local v1, "custom":Lccsanandroid/view/View;
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    .line 458
    .local v4, "customParent":Lccsanandroid/view/ViewParent;
    if-eq v4, p0, :cond_1

    .line 459
    if-eqz v4, :cond_0

    move-object v5, v4

    check-cast v5, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 460
    :cond_0
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Lccsanandroid/view/View;)V

    .line 462
    :cond_1
    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Lccsanandroid/view/View;

    .line 463
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 464
    :cond_2
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 465
    invoke-virtual {v5, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 468
    .end local v4    # "customParent":Lccsanandroid/view/ViewParent;
    :cond_3
    goto/16 :goto_3

    .line 469
    :cond_4
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Lccsanandroid/view/View;

    if-eqz v4, :cond_5

    .line 470
    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->removeView(Lccsanandroid/view/View;)V

    .line 471
    iput-object v3, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mCustomView:Lccsanandroid/view/View;

    .line 474
    :cond_5
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 475
    .local v4, "icon":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 477
    .local v5, "text":Ljava/lang/CharSequence;
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v4, :cond_7

    .line 478
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    if-nez v9, :cond_6

    .line 479
    new-instance v9, Lccsanandroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 480
    .local v9, "iconView":Lccsanandroid/widget/ImageView;
    new-instance v10, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v10, "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iput v6, v10, Lccsanandroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 483
    invoke-virtual {v9, v10}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {p0, v9, v7}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Lccsanandroid/view/View;I)V

    .line 485
    iput-object v9, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    .line 487
    .end local v9    # "iconView":Lccsanandroid/widget/ImageView;
    .end local v10    # "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v9, v4}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v9, v7}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 489
    :cond_7
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v9, :cond_8

    .line 490
    invoke-virtual {v9, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v9, v3}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 494
    :cond_8
    :goto_0
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 495
    .local v9, "hasText":Z
    if-eqz v9, :cond_a

    .line 496
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    if-nez v2, :cond_9

    .line 497
    new-instance v2, Lccsanandroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    sget v11, Lccsanandroidx/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v2, v10, v3, v11}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 499
    .local v2, "textView":Lccsanandroid/widget/TextView;
    sget-object v10, Lccsanandroid/text/TextUtils$TruncateAt;->END:Lccsanandroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Lccsanandroid/widget/TextView;->setEllipsize(Lccsanandroid/text/TextUtils$TruncateAt;)V

    .line 500
    new-instance v10, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v10

    .line 502
    .local v8, "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iput v6, v8, Lccsanandroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 503
    invoke-virtual {v2, v8}, Lccsanandroid/widget/TextView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->addView(Lccsanandroid/view/View;)V

    .line 505
    iput-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    .line 507
    .end local v2    # "textView":Lccsanandroid/widget/TextView;
    .end local v8    # "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_9
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v7}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 509
    :cond_a
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    if-eqz v6, :cond_b

    .line 510
    invoke-virtual {v6, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :cond_b
    :goto_1
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v2, :cond_c

    .line 515
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccsanandroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_c
    if-eqz v9, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    invoke-static {p0, v3}, Lccsanandroidx/appcompat/widget/TooltipCompat;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 519
    .end local v4    # "icon":Lccsanandroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v9    # "hasText":Z
    :goto_3
    return-void
.end method
