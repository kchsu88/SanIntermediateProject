.class public Lccsancom/google/android/material/internal/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;,
        Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnGlobalLayoutListener(Lccsanandroid/view/View;Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "victim"    # Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 322
    if-eqz p0, :cond_0

    .line 323
    invoke-virtual {p0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 325
    :cond_0
    return-void
.end method

.method public static doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/util/AttributeSet;II)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/util/AttributeSet;IILccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 151
    return-void
.end method

.method public static doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/util/AttributeSet;IILccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "listener"    # Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 163
    nop

    .line 164
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsancom/google/android/material/R$styleable;->Insets:[I

    .line 165
    invoke-virtual {v0, p1, v1, p2, p3}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->Insets_paddingBottomSystemWindowInsets:I

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 169
    .local v1, "paddingBottomSystemWindowInsets":Z
    sget v3, Lccsancom/google/android/material/R$styleable;->Insets_paddingLeftSystemWindowInsets:I

    .line 170
    invoke-virtual {v0, v3, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 171
    .local v3, "paddingLeftSystemWindowInsets":Z
    sget v4, Lccsancom/google/android/material/R$styleable;->Insets_paddingRightSystemWindowInsets:I

    .line 172
    invoke-virtual {v0, v4, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 174
    .local v2, "paddingRightSystemWindowInsets":Z
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 176
    new-instance v4, Lccsancom/google/android/material/internal/ViewUtils$2;

    invoke-direct {v4, v1, v3, v2, p4}, Lccsancom/google/android/material/internal/ViewUtils$2;-><init>(ZZZLccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    invoke-static {p0, v4}, Lccsancom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 209
    return-void
.end method

.method public static doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 218
    new-instance v0, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 220
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v1

    .line 221
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingTop()I

    move-result v2

    .line 222
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v3

    .line 223
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 226
    .local v0, "initialPadding":Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;
    new-instance v1, Lccsancom/google/android/material/internal/ViewUtils$3;

    invoke-direct {v1, p1, v0}, Lccsancom/google/android/material/internal/ViewUtils$3;-><init>(Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)V

    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 235
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->requestApplyInsetsWhenAttached(Lccsanandroid/view/View;)V

    .line 236
    return-void
.end method

.method public static dpToPx(Lccsanandroid/content/Context;I)F
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "dp"    # I

    .line 81
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "r":Lccsanandroid/content/res/Resources;
    int-to-float v1, p1

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 291
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 292
    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "rootView":Lccsanandroid/view/View;
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/ViewGroup;

    .line 297
    .local v2, "contentView":Lccsanandroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 298
    return-object v2

    .line 305
    :cond_1
    if-eq v1, p0, :cond_2

    instance-of v3, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 306
    move-object v0, v1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    return-object v0

    .line 309
    :cond_2
    return-object v0
.end method

.method public static getContentViewOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 317
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/material/internal/ViewUtils;->getOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 279
    if-nez p0, :cond_0

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 283
    new-instance v0, Lccsancom/google/android/material/internal/ViewOverlayApi18;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/internal/ViewOverlayApi18;-><init>(Lccsanandroid/view/View;)V

    return-object v0

    .line 285
    :cond_1
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewOverlayApi14;->createFrom(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayApi14;

    move-result-object v0

    return-object v0
.end method

.method public static getParentAbsoluteElevation(Lccsanandroid/view/View;)F
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "absoluteElevation":F
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 266
    .local v1, "viewParent":Lccsanandroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Lccsanandroid/view/View;

    if-eqz v2, :cond_0

    .line 267
    move-object v2, v1

    check-cast v2, Lccsanandroid/view/View;

    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v2

    add-float/2addr v0, v2

    .line 268
    invoke-interface {v1}, Lccsanandroid/view/ViewParent;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_0
    return v0
.end method

.method public static isLayoutRtl(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 77
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 58
    sparse-switch p0, :sswitch_data_0

    .line 72
    return-object p1

    .line 70
    :sswitch_0
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->ADD:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 68
    :sswitch_1
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SCREEN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 66
    :sswitch_2
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->MULTIPLY:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 64
    :sswitch_3
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_ATOP:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 62
    :sswitch_4
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 60
    :sswitch_5
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_OVER:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeOnGlobalLayoutListener(Lccsanandroid/view/View;Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "victim"    # Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 329
    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/internal/ViewUtils;->removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver;Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 332
    :cond_0
    return-void
.end method

.method public static removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver;Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2
    .param p0, "viewTreeObserver"    # Lccsanandroid/view/ViewTreeObserver;
    .param p1, "victim"    # Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 336
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 341
    :goto_0
    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 240
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lccsancom/google/android/material/internal/ViewUtils$4;

    invoke-direct {v0}, Lccsancom/google/android/material/internal/ViewUtils$4;-><init>()V

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->addOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 257
    :goto_0
    return-void
.end method

.method public static requestFocusAndShowKeyboard(Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 86
    invoke-virtual {p0}, Lccsanandroid/view/View;->requestFocus()Z

    .line 87
    new-instance v0, Lccsancom/google/android/material/internal/ViewUtils$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/internal/ViewUtils$1;-><init>(Lccsanandroid/view/View;)V

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
