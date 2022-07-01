.class public Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SnackbarBaseLayout"
.end annotation


# static fields
.field private static final consumeAllTouchListener:Lccsanandroid/view/View$OnTouchListener;


# instance fields
.field private final actionTextColorAlpha:F

.field private animationMode:I

.field private final backgroundOverlayColorAlpha:F

.field private backgroundTint:Lccsanandroid/content/res/ColorStateList;

.field private backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private onAttachStateChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private onLayoutChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1120
    new-instance v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;

    invoke-direct {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Lccsanandroid/view/View$OnTouchListener;

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 1139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 1140
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 1143
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 1146
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 1147
    sget-object v1, Lccsancom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 1148
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    sget v2, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    .line 1150
    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 1149
    invoke-static {p0, v2}, Lccsanandroidx/core/view/ViewCompat;->setElevation(Lccsanandroid/view/View;F)V

    .line 1152
    :cond_0
    sget v2, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_animationMode:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    .line 1153
    sget v0, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_backgroundOverlayColorAlpha:I

    .line 1154
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundOverlayColorAlpha:F

    .line 1155
    sget v0, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_backgroundTint:I

    .line 1156
    invoke-static {p1, v1, v0}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 1155
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 1158
    sget v0, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_backgroundTintMode:I

    const/4 v3, -0x1

    .line 1160
    invoke-virtual {v1, v0, v3}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v3, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1159
    invoke-static {v0, v3}, Lccsancom/google/android/material/internal/ViewUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 1158
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 1161
    sget v0, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->actionTextColorAlpha:F

    .line 1162
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 1164
    sget-object v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Lccsanandroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 1165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setFocusable(Z)V

    .line 1167
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1168
    invoke-direct {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->createThemedBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1170
    :cond_1
    return-void
.end method

.method private createThemedBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 5

    .line 1274
    nop

    .line 1275
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$dimen;->mtrl_snackbar_background_corner_radius:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1277
    .local v0, "cornerRadius":F
    new-instance v1, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1278
    .local v1, "background":Lccsanandroid/graphics/drawable/GradientDrawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1279
    invoke-virtual {v1, v0}, Lccsanandroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1281
    sget v2, Lccsancom/google/android/material/R$attr;->colorSurface:I

    sget v3, Lccsancom/google/android/material/R$attr;->colorOnSurface:I

    .line 1283
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackgroundOverlayColorAlpha()F

    move-result v4

    .line 1282
    invoke-static {p0, v2, v3, v4}, Lccsancom/google/android/material/color/MaterialColors;->layer(Lccsanandroid/view/View;IIF)I

    move-result v2

    .line 1284
    .local v2, "backgroundColor":I
    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1285
    iget-object v3, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 1286
    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1287
    .local v3, "wrappedDrawable":Lccsanandroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 1288
    return-object v3

    .line 1290
    .end local v3    # "wrappedDrawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getActionTextColorAlpha()F
    .locals 1

    .line 1269
    iget v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->actionTextColorAlpha:F

    return v0
.end method

.method getAnimationMode()I
    .locals 1

    .line 1257
    iget v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    return v0
.end method

.method getBackgroundOverlayColorAlpha()F
    .locals 1

    .line 1265
    iget v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundOverlayColorAlpha:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1229
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1230
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 1231
    invoke-interface {v0, p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Lccsanandroid/view/View;)V

    .line 1234
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 1235
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1239
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1240
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 1241
    invoke-interface {v0, p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Lccsanandroid/view/View;)V

    .line 1243
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1221
    invoke-super/range {p0 .. p5}, Lccsanandroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1222
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 1223
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Lccsanandroid/view/View;IIII)V

    .line 1225
    :cond_0
    return-void
.end method

.method setAnimationMode(I)V
    .locals 0
    .param p1, "animationMode"    # I

    .line 1261
    iput p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    .line 1262
    return-void
.end method

.method public setBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 1174
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1175
    return-void
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 1179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1181
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 1182
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 1184
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1185
    return-void
.end method

.method public setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "backgroundTint"    # Lccsanandroid/content/res/ColorStateList;

    .line 1189
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    .line 1190
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1192
    .local v0, "wrappedBackground":Lccsanandroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 1193
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 1194
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1195
    invoke-super {p0, v0}, Lccsanandroid/widget/FrameLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1198
    .end local v0    # "wrappedBackground":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "backgroundTintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1202
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1203
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1205
    .local v0, "wrappedBackground":Lccsanandroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 1206
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1207
    invoke-super {p0, v0}, Lccsanandroid/widget/FrameLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1210
    .end local v0    # "wrappedBackground":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 1252
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 1253
    return-void
.end method

.method public setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Lccsanandroid/view/View$OnClickListener;

    .line 1215
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Lccsanandroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 1216
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1217
    return-void
.end method

.method setOnLayoutChangeListener(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "onLayoutChangeListener"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 1247
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 1248
    return-void
.end method
