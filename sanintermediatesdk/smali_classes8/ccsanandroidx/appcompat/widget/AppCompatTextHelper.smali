.class Lccsanandroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Lccsanandroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Lccsanandroid/widget/TextView;


# direct methods
.method constructor <init>(Lccsanandroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/widget/TextView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 76
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    .line 77
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 78
    return-void
.end method

.method private applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "info"    # Lccsanandroidx/appcompat/widget/TintInfo;

    .line 513
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 514
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    .line 516
    :cond_0
    return-void
.end method

.method private static createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "drawableManager"    # Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 520
    invoke-virtual {p1, p0, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 521
    .local v0, "tintList":Lccsanandroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 522
    new-instance v1, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v1}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    .line 523
    .local v1, "tintInfo":Lccsanandroidx/appcompat/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 524
    iput-object v0, v1, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 525
    return-object v1

    .line 527
    .end local v1    # "tintInfo":Lccsanandroidx/appcompat/widget/TintInfo;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawableLeft"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "drawableTop"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p3, "drawableRight"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p4, "drawableBottom"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p5, "drawableStart"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p6, "drawableEnd"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 644
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_5

    if-nez p5, :cond_0

    if-eqz p6, :cond_5

    .line 645
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCompoundDrawablesRelative()[Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 646
    .local v0, "existingRel":[Lccsanandroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    .line 647
    if-eqz p5, :cond_1

    move-object v5, p5

    goto :goto_0

    :cond_1
    aget-object v5, v0, v5

    .line 648
    :goto_0
    if-eqz p2, :cond_2

    move-object v3, p2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v3

    .line 649
    :goto_1
    if-eqz p6, :cond_3

    move-object v4, p6

    goto :goto_2

    :cond_3
    aget-object v4, v0, v4

    .line 650
    :goto_2
    if-eqz p4, :cond_4

    move-object v2, p4

    goto :goto_3

    :cond_4
    aget-object v2, v0, v2

    .line 646
    :goto_3
    invoke-virtual {v1, v5, v3, v4, v2}, Lccsanandroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .end local v0    # "existingRel":[Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 652
    :cond_5
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    goto :goto_c

    .line 655
    :cond_7
    :goto_5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_b

    .line 656
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCompoundDrawablesRelative()[Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 657
    .restart local v0    # "existingRel":[Lccsanandroid/graphics/drawable/Drawable;
    aget-object v1, v0, v5

    if-nez v1, :cond_8

    aget-object v1, v0, v4

    if-eqz v1, :cond_b

    .line 658
    :cond_8
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    aget-object v5, v0, v5

    .line 660
    if-eqz p2, :cond_9

    move-object v3, p2

    goto :goto_6

    :cond_9
    aget-object v3, v0, v3

    :goto_6
    aget-object v4, v0, v4

    .line 662
    if-eqz p4, :cond_a

    move-object v2, p4

    goto :goto_7

    :cond_a
    aget-object v2, v0, v2

    .line 658
    :goto_7
    invoke-virtual {v1, v5, v3, v4, v2}, Lccsanandroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 664
    return-void

    .line 668
    .end local v0    # "existingRel":[Lccsanandroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCompoundDrawables()[Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 669
    .local v0, "existingAbs":[Lccsanandroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    .line 670
    if-eqz p1, :cond_c

    move-object v5, p1

    goto :goto_8

    :cond_c
    aget-object v5, v0, v5

    .line 671
    :goto_8
    if-eqz p2, :cond_d

    move-object v3, p2

    goto :goto_9

    :cond_d
    aget-object v3, v0, v3

    .line 672
    :goto_9
    if-eqz p3, :cond_e

    move-object v4, p3

    goto :goto_a

    :cond_e
    aget-object v4, v0, v4

    .line 673
    :goto_a
    if-eqz p4, :cond_f

    move-object v2, p4

    goto :goto_b

    :cond_f
    aget-object v2, v0, v2

    .line 669
    :goto_b
    invoke-virtual {v1, v5, v3, v4, v2}, Lccsanandroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 676
    .end local v0    # "existingAbs":[Lccsanandroid/graphics/drawable/Drawable;
    :goto_c
    return-void
.end method

.method private setCompoundTints()V
    .locals 1

    .line 632
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 633
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 634
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 635
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 636
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 637
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 638
    return-void
.end method

.method private setTextSizeInternal(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 561
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 562
    return-void
.end method

.method private updateTypefaceAndStyle(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;)V
    .locals 13
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "a"    # Lccsanandroidx/appcompat/widget/TintTypedArray;

    .line 339
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 341
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 342
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 344
    if-eq v0, v2, :cond_0

    .line 345
    iget v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 349
    :cond_0
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 350
    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iput-boolean v3, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 415
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 416
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 426
    :pswitch_0
    sget-object v1, Lccsanandroid/graphics/Typeface;->MONOSPACE:Lccsanandroid/graphics/Typeface;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    goto :goto_0

    .line 422
    :pswitch_1
    sget-object v1, Lccsanandroid/graphics/Typeface;->SERIF:Lccsanandroid/graphics/Typeface;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    .line 423
    goto :goto_0

    .line 418
    :pswitch_2
    sget-object v1, Lccsanandroid/graphics/Typeface;->SANS_SERIF:Lccsanandroid/graphics/Typeface;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    .line 430
    .end local v0    # "typefaceIndex":I
    :cond_2
    :goto_0
    return-void

    .line 351
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    .line 352
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_2

    .line 354
    :cond_4
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    :goto_2
    nop

    .line 355
    .local v0, "fontFamilyId":I
    iget v5, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 356
    .local v5, "fontWeight":I
    iget v6, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 357
    .local v6, "style":I
    invoke-virtual {p1}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_9

    .line 358
    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 359
    .local v7, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/widget/TextView;>;"
    new-instance v8, Lccsanandroidx/appcompat/widget/AppCompatTextHelper$1;

    invoke-direct {v8, p0, v5, v6, v7}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Lccsanandroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 378
    .local v8, "replyCallback":Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    :try_start_0
    iget v9, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v9, v8}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getFont(IILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)Lccsanandroid/graphics/Typeface;

    move-result-object v9

    .line 379
    .local v9, "typeface":Lccsanandroid/graphics/Typeface;
    if-eqz v9, :cond_7

    .line 380
    sget v10, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v1, :cond_6

    iget v10, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v10, v2, :cond_6

    .line 382
    nop

    .line 383
    invoke-static {v9, v3}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v10

    iget v11, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v12, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .line 382
    :goto_3
    invoke-static {v10, v11, v12}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;IZ)Lccsanandroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    goto :goto_4

    .line 386
    :cond_6
    iput-object v9, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    .line 390
    :cond_7
    :goto_4
    iget-object v10, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    if-nez v10, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    iput-boolean v10, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v9    # "typeface":Lccsanandroid/graphics/Typeface;
    goto :goto_6

    .line 391
    :catch_0
    move-exception v9

    goto :goto_6

    :catch_1
    move-exception v9

    .line 395
    .end local v7    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/widget/TextView;>;"
    .end local v8    # "replyCallback":Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_9
    :goto_6
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    if-nez v7, :cond_c

    .line 397
    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "fontFamilyName":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 399
    sget v8, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v1, :cond_b

    iget v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v1, v2, :cond_b

    .line 401
    nop

    .line 402
    invoke-static {v7, v3}, Lccsanandroid/graphics/Typeface;->create(Ljava/lang/String;I)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    iget v2, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v8, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    const/4 v3, 0x1

    .line 401
    :cond_a
    invoke-static {v1, v2, v3}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;IZ)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    goto :goto_7

    .line 405
    :cond_b
    iget v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v7, v1}, Lccsanandroid/graphics/Typeface;->create(Ljava/lang/String;I)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    .line 409
    .end local v7    # "fontFamilyName":Ljava/lang/String;
    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    .line 495
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCompoundDrawables()[Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 498
    .local v0, "compoundDrawables":[Lccsanandroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V

    .line 499
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V

    .line 500
    aget-object v3, v0, v1

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V

    .line 501
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V

    .line 503
    .end local v0    # "compoundDrawables":[Lccsanandroid/graphics/drawable/Drawable;
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 504
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_3

    .line 505
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCompoundDrawablesRelative()[Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    .restart local v0    # "compoundDrawables":[Lccsanandroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V

    .line 507
    aget-object v1, v0, v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;)V

    .line 510
    .end local v0    # "compoundDrawables":[Lccsanandroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method autoSizeText()V
    .locals 1

    .line 551
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 552
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1

    .line 596
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1

    .line 592
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1

    .line 588
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 600
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1

    .line 584
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 605
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getCompoundDrawableTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 619
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .locals 1

    .line 557
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V
    .locals 36
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 82
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    .line 83
    .local v10, "context":Lccsanandroid/content/Context;
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->get()Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v11

    .line 86
    .local v11, "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 88
    .local v13, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    sget-object v2, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 89
    invoke-virtual {v13}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;

    move-result-object v4

    .line 88
    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 92
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 94
    .local v15, "ap":I
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 96
    invoke-virtual {v13, v0, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 95
    invoke-static {v10, v11, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 98
    :cond_0
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 100
    invoke-virtual {v13, v0, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 99
    invoke-static {v10, v11, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 102
    :cond_1
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 104
    invoke-virtual {v13, v0, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 103
    invoke-static {v10, v11, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 106
    :cond_2
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 108
    invoke-virtual {v13, v0, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 107
    invoke-static {v10, v11, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 111
    :cond_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 112
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 114
    invoke-virtual {v13, v0, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 113
    invoke-static {v10, v11, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 116
    :cond_4
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 118
    invoke-virtual {v13, v0, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 117
    invoke-static {v10, v11, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;I)Lccsanandroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 122
    :cond_5
    invoke-virtual {v13}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 127
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    .line 128
    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getTransformationMethod()Lccsanandroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v6, v0, Lccsanandroid/text/method/PasswordTransformationMethod;

    .line 129
    .local v6, "hasPwdTm":Z
    const/4 v0, 0x0

    .line 130
    .local v0, "allCaps":Z
    const/4 v1, 0x0

    .line 131
    .local v1, "allCapsSet":Z
    const/4 v2, 0x0

    .line 132
    .local v2, "textColor":Lccsanandroid/content/res/ColorStateList;
    const/4 v3, 0x0

    .line 133
    .local v3, "textColorHint":Lccsanandroid/content/res/ColorStateList;
    const/4 v4, 0x0

    .line 134
    .local v4, "textColorLink":Lccsanandroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 135
    .local v5, "fontVariation":Ljava/lang/String;
    const/16 v16, 0x0

    .line 138
    .local v16, "localeListString":Ljava/lang/String;
    if-eq v15, v14, :cond_c

    .line 139
    sget-object v14, Lccsanandroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v10, v15, v14}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;I[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 140
    if-nez v6, :cond_6

    sget v14, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v13, v14}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 141
    const/4 v1, 0x1

    .line 142
    sget v14, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v12, 0x0

    invoke-virtual {v13, v14, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 145
    :cond_6
    invoke-direct {v7, v10, v13}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;)V

    .line 146
    sget v12, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v12, v14, :cond_9

    .line 149
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 150
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    .line 152
    :cond_7
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 153
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 156
    :cond_8
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 157
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 161
    :cond_9
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 162
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 164
    :cond_a
    sget v12, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v12, v14, :cond_b

    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 165
    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 166
    sget v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v13, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    :cond_b
    invoke-virtual {v13}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 172
    :cond_c
    sget-object v12, Lccsanandroidx/appcompat/R$styleable;->TextAppearance:[I

    const/4 v14, 0x0

    invoke-static {v10, v8, v12, v9, v14}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    .line 174
    .end local v13    # "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    .local v12, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    if-nez v6, :cond_d

    sget v13, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 175
    const/4 v1, 0x1

    .line 176
    sget v13, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13, v14}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    move v13, v0

    move v14, v1

    goto :goto_0

    .line 178
    :cond_d
    move v13, v0

    move v14, v1

    .end local v0    # "allCaps":Z
    .end local v1    # "allCapsSet":Z
    .local v13, "allCaps":Z
    .local v14, "allCapsSet":Z
    :goto_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_11

    .line 181
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    .line 184
    :cond_e
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 188
    :cond_f
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 189
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    move-object/from16 v35, v4

    move-object v4, v2

    move-object/from16 v2, v35

    goto :goto_1

    .line 188
    :cond_10
    move-object/from16 v35, v4

    move-object v4, v2

    move-object/from16 v2, v35

    goto :goto_1

    .line 178
    :cond_11
    move-object/from16 v35, v4

    move-object v4, v2

    move-object/from16 v2, v35

    .line 193
    .local v2, "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .local v4, "textColor":Lccsanandroid/content/res/ColorStateList;
    :goto_1
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 194
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2

    .line 193
    :cond_12
    move-object/from16 v1, v16

    .line 197
    .end local v16    # "localeListString":Ljava/lang/String;
    .local v1, "localeListString":Ljava/lang/String;
    :goto_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v16, v5

    const/16 v5, 0x1a

    .end local v5    # "fontVariation":Ljava/lang/String;
    .local v16, "fontVariation":Ljava/lang/String;
    if-lt v0, v5, :cond_13

    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 198
    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 199
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v16    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "fontVariation":Ljava/lang/String;
    goto :goto_3

    .line 202
    .end local v5    # "fontVariation":Ljava/lang/String;
    .restart local v16    # "fontVariation":Ljava/lang/String;
    :cond_13
    move-object/from16 v5, v16

    .end local v16    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "fontVariation":Ljava/lang/String;
    :goto_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v16, v15

    .end local v15    # "ap":I
    .local v16, "ap":I
    const/16 v15, 0x1c

    if-lt v0, v15, :cond_16

    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 203
    invoke-virtual {v12, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 204
    sget v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v15, -0x1

    invoke-virtual {v12, v0, v15}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_14

    .line 205
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v18, v11

    const/4 v11, 0x0

    .end local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .local v18, "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    invoke-virtual {v0, v11, v15}, Lccsanandroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4

    .line 204
    .end local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_14
    move-object/from16 v18, v11

    .end local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    goto :goto_4

    .line 203
    .end local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_15
    move-object/from16 v18, v11

    .end local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    goto :goto_4

    .line 202
    .end local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_16
    move-object/from16 v18, v11

    .line 209
    .end local v11    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_4
    invoke-direct {v7, v10, v12}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;)V

    .line 210
    invoke-virtual {v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 212
    if-eqz v4, :cond_17

    .line 213
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 215
    :cond_17
    if-eqz v3, :cond_18

    .line 216
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/TextView;->setHintTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 218
    :cond_18
    if-eqz v2, :cond_19

    .line 219
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setLinkTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 221
    :cond_19
    if-nez v6, :cond_1a

    if-eqz v14, :cond_1a

    .line 222
    invoke-virtual {v7, v13}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 224
    :cond_1a
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    if-eqz v0, :cond_1c

    .line 225
    iget v11, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v15, -0x1

    if-ne v11, v15, :cond_1b

    .line 226
    iget-object v11, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    iget v15, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v11, v0, v15}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;I)V

    goto :goto_5

    .line 228
    :cond_1b
    iget-object v11, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v11, v0}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 231
    :cond_1c
    :goto_5
    if-eqz v5, :cond_1d

    .line 232
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 234
    :cond_1d
    if-eqz v1, :cond_1f

    .line 235
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v0, v11, :cond_1e

    .line 236
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v1}, Lccsanandroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Lccsanandroid/os/LocaleList;

    move-result-object v11

    invoke-virtual {v0, v11}, Lccsanandroid/widget/TextView;->setTextLocales(Lccsanandroid/os/LocaleList;)V

    goto :goto_6

    .line 237
    :cond_1e
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v0, v11, :cond_1f

    .line 238
    const/16 v0, 0x2c

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "firstLanTag":Ljava/lang/String;
    iget-object v11, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v11, v15}, Lccsanandroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 244
    .end local v0    # "firstLanTag":Ljava/lang/String;
    :cond_1f
    :goto_6
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, v8, v9}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 246
    sget-boolean v0, Lccsanandroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_23

    .line 248
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    if-eqz v0, :cond_22

    .line 250
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 251
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    .line 252
    .local v0, "autoSizeTextSizesInPx":[I
    array-length v11, v0

    if-lez v11, :cond_21

    .line 253
    iget-object v11, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v11}, Lccsanandroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v11

    int-to-float v11, v11

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v11, v11, v15

    if-eqz v11, :cond_20

    .line 256
    iget-object v11, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    iget-object v15, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 257
    invoke-virtual {v15}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v15

    move-object/from16 v20, v1

    .end local v1    # "localeListString":Ljava/lang/String;
    .local v20, "localeListString":Ljava/lang/String;
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 258
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move-object/from16 v21, v2

    .end local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .local v21, "textColorLink":Lccsanandroid/content/res/ColorStateList;
    iget-object v2, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 259
    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v2

    .line 256
    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .local v22, "textColorHint":Lccsanandroid/content/res/ColorStateList;
    invoke-virtual {v11, v15, v1, v2, v3}, Lccsanandroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_7

    .line 262
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    :cond_20
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0, v3}, Lccsanandroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_7

    .line 252
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    :cond_21
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    goto :goto_7

    .line 248
    .end local v0    # "autoSizeTextSizesInPx":[I
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    :cond_22
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    goto :goto_7

    .line 246
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    :cond_23
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 270
    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Lccsanandroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Lccsanandroid/content/res/ColorStateList;
    :goto_7
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v11

    .line 273
    .end local v12    # "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    .local v11, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    const/4 v0, 0x0

    .local v0, "drawableLeft":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "drawableTop":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 274
    .local v2, "drawableRight":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "drawableBottom":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .local v12, "drawableStart":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 275
    .local v15, "drawableEnd":Lccsanandroid/graphics/drawable/Drawable;
    move-object/from16 v17, v0

    .end local v0    # "drawableLeft":Lccsanandroid/graphics/drawable/Drawable;
    .local v17, "drawableLeft":Lccsanandroid/graphics/drawable/Drawable;
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    move-object/from16 v23, v1

    const/4 v1, -0x1

    .end local v1    # "drawableTop":Lccsanandroid/graphics/drawable/Drawable;
    .local v23, "drawableTop":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 277
    .local v0, "drawableLeftId":I
    if-eq v0, v1, :cond_24

    .line 278
    move-object/from16 v1, v18

    .end local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .local v1, "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    invoke-virtual {v1, v10, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v17

    goto :goto_8

    .line 277
    .end local v1    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_24
    move-object/from16 v1, v18

    .line 280
    .end local v18    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v1    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_8
    move/from16 v18, v0

    .end local v0    # "drawableLeftId":I
    .local v18, "drawableLeftId":I
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    move-object/from16 v24, v2

    const/4 v2, -0x1

    .end local v2    # "drawableRight":Lccsanandroid/graphics/drawable/Drawable;
    .local v24, "drawableRight":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 282
    .local v0, "drawableTopId":I
    if-eq v0, v2, :cond_25

    .line 283
    invoke-virtual {v1, v10, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v23, v19

    .line 285
    :cond_25
    move/from16 v25, v0

    .end local v0    # "drawableTopId":I
    .local v25, "drawableTopId":I
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v11, v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 287
    .local v0, "drawableRightId":I
    if-eq v0, v2, :cond_26

    .line 288
    invoke-virtual {v1, v10, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v24, v19

    .line 290
    :cond_26
    move/from16 v26, v0

    .end local v0    # "drawableRightId":I
    .local v26, "drawableRightId":I
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v11, v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 292
    .local v0, "drawableBottomId":I
    if-eq v0, v2, :cond_27

    .line 293
    invoke-virtual {v1, v10, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_9

    .line 292
    :cond_27
    move-object/from16 v27, v3

    .line 295
    .end local v3    # "drawableBottom":Lccsanandroid/graphics/drawable/Drawable;
    .local v27, "drawableBottom":Lccsanandroid/graphics/drawable/Drawable;
    :goto_9
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v11, v3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 297
    .local v3, "drawableStartId":I
    if-eq v3, v2, :cond_28

    .line 298
    invoke-virtual {v1, v10, v3}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 300
    :cond_28
    move/from16 v28, v0

    .end local v0    # "drawableBottomId":I
    .local v28, "drawableBottomId":I
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v11, v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 302
    .local v0, "drawableEndId":I
    if-eq v0, v2, :cond_29

    .line 303
    invoke-virtual {v1, v10, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 305
    :cond_29
    move/from16 v29, v0

    .end local v0    # "drawableEndId":I
    .local v29, "drawableEndId":I
    move-object/from16 v0, p0

    move-object/from16 v30, v20

    move-object/from16 v20, v1

    .end local v1    # "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .local v20, "drawableManager":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .local v30, "localeListString":Ljava/lang/String;
    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move/from16 v31, v3

    .end local v3    # "drawableStartId":I
    .local v31, "drawableStartId":I
    move-object/from16 v3, v24

    move-object/from16 v32, v4

    .end local v4    # "textColor":Lccsanandroid/content/res/ColorStateList;
    .local v32, "textColor":Lccsanandroid/content/res/ColorStateList;
    move-object/from16 v4, v27

    move-object/from16 v33, v5

    .end local v5    # "fontVariation":Ljava/lang/String;
    .local v33, "fontVariation":Ljava/lang/String;
    move-object v5, v12

    move/from16 v34, v6

    .end local v6    # "hasPwdTm":Z
    .local v34, "hasPwdTm":Z
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 308
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v11, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 309
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v11, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 311
    .local v0, "tintList":Lccsanandroid/content/res/ColorStateList;
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v1, v0}, Lccsanandroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Lccsanandroid/widget/TextView;Lccsanandroid/content/res/ColorStateList;)V

    .line 313
    .end local v0    # "tintList":Lccsanandroid/content/res/ColorStateList;
    :cond_2a
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v11, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 314
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 315
    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    .line 314
    invoke-static {v0, v1}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 316
    .local v0, "tintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v1, v0}, Lccsanandroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Lccsanandroid/widget/TextView;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 319
    .end local v0    # "tintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    :cond_2b
    sget v0, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 321
    .local v0, "firstBaselineToTopHeight":I
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v11, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 323
    .local v2, "lastBaselineToBottomHeight":I
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v11, v3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 326
    .local v3, "lineHeight":I
    invoke-virtual {v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 327
    if-eq v0, v1, :cond_2c

    .line 328
    iget-object v4, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v4, v0}, Lccsanandroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Lccsanandroid/widget/TextView;I)V

    .line 330
    :cond_2c
    if-eq v2, v1, :cond_2d

    .line 331
    iget-object v4, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v4, v2}, Lccsanandroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Lccsanandroid/widget/TextView;I)V

    .line 333
    :cond_2d
    if-eq v3, v1, :cond_2e

    .line 334
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-static {v1, v3}, Lccsanandroidx/core/widget/TextViewCompat;->setLineHeight(Lccsanandroid/widget/TextView;I)V

    .line 336
    :cond_2e
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Lccsanandroid/graphics/Typeface;)V
    .locals 2
    .param p2, "typeface"    # Lccsanandroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/widget/TextView;",
            ">;",
            "Lccsanandroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 434
    .local p1, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/widget/TextView;>;"
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_0

    .line 435
    iput-object p2, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    .line 436
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    .line 437
    .local v0, "textView":Lccsanandroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 438
    iget v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, p2, v1}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;I)V

    .line 441
    .end local v0    # "textView":Lccsanandroid/widget/TextView;
    :cond_0
    return-void
.end method

.method onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 533
    sget-boolean v0, Lccsanandroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 536
    :cond_0
    return-void
.end method

.method onSetCompoundDrawables()V
    .locals 0

    .line 491
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 492
    return-void
.end method

.method onSetTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 444
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;I[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 446
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 451
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 453
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_1

    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 454
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 458
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 459
    .local v1, "textColor":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 460
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v3, v1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 464
    .end local v1    # "textColor":Lccsanandroid/content/res/ColorStateList;
    :cond_1
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 466
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/widget/TextView;->setTextSize(IF)V

    .line 470
    :cond_2
    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;)V

    .line 472
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 473
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "fontVariation":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 477
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 480
    .end local v1    # "fontVariation":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 481
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Lccsanandroid/graphics/Typeface;

    if-eqz v1, :cond_4

    .line 482
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    iget v3, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v2, v1, v3}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;I)V

    .line 484
    :cond_4
    return-void
.end method

.method setAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .line 487
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setAllCaps(Z)V

    .line 488
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 575
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 580
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 565
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 566
    return-void
.end method

.method setCompoundDrawableTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 609
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 612
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 613
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 614
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 615
    return-void
.end method

.method setCompoundDrawableTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 623
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 626
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 627
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 628
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 629
    return-void
.end method

.method setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 541
    sget-boolean v0, Lccsanandroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 546
    :cond_0
    return-void
.end method