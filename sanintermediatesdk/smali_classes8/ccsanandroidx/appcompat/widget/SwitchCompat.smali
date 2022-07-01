.class public Lccsanandroidx/appcompat/widget/SwitchCompat;
.super Lccsanandroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroidx/appcompat/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Lccsanandroid/text/Layout;

.field private mOnLayout:Lccsanandroid/text/Layout;

.field mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Lccsanandroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Lccsanandroid/graphics/Rect;

.field private mTextColors:Lccsanandroid/content/res/ColorStateList;

.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Lccsanandroid/text/TextPaint;

.field private mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Lccsanandroid/content/res/ColorStateList;

.field private mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private mTrackTintList:Lccsanandroid/content/res/ColorStateList;

.field private mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Lccsanandroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Lccsanandroidx/appcompat/widget/SwitchCompat$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/appcompat/widget/SwitchCompat$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Lccsanandroid/util/Property;

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 206
    sget v0, Lccsanandroidx/appcompat/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/CompoundButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Lccsanandroid/content/res/ColorStateList;

    .line 117
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 119
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 122
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Lccsanandroid/content/res/ColorStateList;

    .line 123
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 124
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 125
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 139
    invoke-static {}, Lccsanandroid/view/VelocityTracker;->obtain()Lccsanandroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Lccsanandroid/view/VelocityTracker;

    .line 182
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-direct {v2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 222
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {p0, v2}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 224
    new-instance v2, Lccsanandroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lccsanandroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    .line 226
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    .line 227
    .local v4, "res":Lccsanandroid/content/res/Resources;
    invoke-virtual {v4}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Lccsanandroid/util/DisplayMetrics;->density:F

    iput v5, v2, Lccsanandroid/text/TextPaint;->density:F

    .line 229
    sget-object v2, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat:[I

    invoke-static {p1, p2, v2, p3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v2

    .line 231
    .local v2, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget-object v7, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat:[I

    .line 233
    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;

    move-result-object v9

    .line 231
    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-static/range {v5 .. v11}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 235
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {v2, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 236
    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v5, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    :cond_0
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {v2, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 240
    if-eqz v5, :cond_1

    .line 241
    invoke-virtual {v5, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 243
    :cond_1
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {v2, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 244
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {v2, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 245
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_showText:I

    invoke-virtual {v2, v5, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 246
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v2, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 248
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v2, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 250
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    invoke-virtual {v2, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 252
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    invoke-virtual {v2, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 254
    sget v5, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    invoke-virtual {v2, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v5

    .line 255
    .local v5, "thumbTintList":Lccsanandroid/content/res/ColorStateList;
    if-eqz v5, :cond_2

    .line 256
    iput-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Lccsanandroid/content/res/ColorStateList;

    .line 257
    iput-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 259
    :cond_2
    sget v6, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    .line 260
    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v6

    .line 259
    invoke-static {v6, v0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 261
    .local v6, "thumbTintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v8, v6, :cond_3

    .line 262
    iput-object v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 263
    iput-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 265
    :cond_3
    iget-boolean v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v8, :cond_5

    .line 266
    :cond_4
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 269
    :cond_5
    sget v8, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_trackTint:I

    invoke-virtual {v2, v8}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v8

    .line 270
    .local v8, "trackTintList":Lccsanandroid/content/res/ColorStateList;
    if-eqz v8, :cond_6

    .line 271
    iput-object v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Lccsanandroid/content/res/ColorStateList;

    .line 272
    iput-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 274
    :cond_6
    sget v9, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    .line 275
    invoke-virtual {v2, v9, v7}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    .line 274
    invoke-static {v7, v0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 276
    .local v0, "trackTintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v7, v0, :cond_7

    .line 277
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 278
    iput-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 280
    :cond_7
    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v3, :cond_9

    .line 281
    :cond_8
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 284
    :cond_9
    sget v3, Lccsanandroidx/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v2, v3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 286
    .local v1, "appearance":I
    if-eqz v1, :cond_a

    .line 287
    invoke-virtual {p0, p1, v1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setSwitchTextAppearance(Lccsanandroid/content/Context;I)V

    .line 290
    :cond_a
    new-instance v3, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v3, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 291
    invoke-virtual {v3, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 293
    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 295
    invoke-static {p1}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v3

    .line 296
    .local v3, "config":Lccsanandroid/view/ViewConfiguration;
    invoke-virtual {v3}, Lccsanandroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 297
    invoke-virtual {v3}, Lccsanandroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 300
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->refreshDrawableState()V

    .line 301
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v7

    invoke-virtual {p0, v7}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 302
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 5
    .param p1, "newCheckedState"    # Z

    .line 1035
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1036
    .local v0, "targetPosition":F
    :goto_0
    sget-object v1, Lccsanandroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Lccsanandroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    .line 1037
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    .line 1038
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_1

    .line 1039
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Lccsanandroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1041
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Lccsanandroid/animation/ObjectAnimator;->start()V

    .line 1042
    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .line 705
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    .line 706
    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 708
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 712
    :cond_1
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 718
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 722
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .line 582
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_3

    .line 583
    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 585
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 589
    :cond_1
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 595
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 599
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .line 1045
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->cancel()V

    .line 1048
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Lccsanandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 995
    invoke-static {p1}, Lccsanandroid/view/MotionEvent;->obtain(Lccsanandroid/view/MotionEvent;)Lccsanandroid/view/MotionEvent;

    move-result-object v0

    .line 996
    .local v0, "cancel":Lccsanandroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsanandroid/view/MotionEvent;->setAction(I)V

    .line 997
    invoke-super {p0, v0}, Lccsanandroid/widget/CompoundButton;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    .line 998
    invoke-virtual {v0}, Lccsanandroid/view/MotionEvent;->recycle()V

    .line 999
    return-void
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1437
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 1051
    iget v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 3

    .line 1304
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_0

    .line 1307
    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 1309
    .restart local v0    # "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .locals 4

    .line 1313
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1314
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 1315
    .local v1, "padding":Lccsanandroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 1318
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1319
    invoke-static {v0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Rect;

    move-result-object v0

    .local v0, "insets":Lccsanandroid/graphics/Rect;
    goto :goto_0

    .line 1321
    .end local v0    # "insets":Lccsanandroid/graphics/Rect;
    :cond_0
    sget-object v0, Lccsanandroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Lccsanandroid/graphics/Rect;

    .line 1324
    .restart local v0    # "insets":Lccsanandroid/graphics/Rect;
    :goto_0
    iget v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1327
    .end local v0    # "insets":Lccsanandroid/graphics/Rect;
    .end local v1    # "padding":Lccsanandroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 899
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 900
    return v1

    .line 904
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 906
    .local v0, "thumbOffset":I
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 907
    iget v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 908
    .local v2, "thumbTop":I
    iget v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 909
    .local v4, "thumbLeft":I
    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    iget v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v3, v5

    .line 911
    .local v3, "thumbRight":I
    iget v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    add-int/2addr v6, v5

    .line 912
    .local v6, "thumbBottom":I
    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    int-to-float v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Lccsanandroid/text/Layout;
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 885
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Lccsanandroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 886
    invoke-interface {v0, p1, p0}, Lccsanandroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_0
    move-object v0, p1

    :goto_0
    nop

    .line 889
    .local v0, "transformed":Ljava/lang/CharSequence;
    new-instance v9, Lccsanandroid/text/StaticLayout;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    .line 890
    if-eqz v0, :cond_1

    .line 891
    invoke-static {v0, v3}, Lccsanandroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Lccsanandroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    sget-object v5, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lccsanandroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Lccsanandroid/text/TextPaint;ILccsanandroid/text/Layout$Alignment;FFZ)V

    .line 889
    return-object v9
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "tf":Lccsanandroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    sget-object v0, Lccsanandroid/graphics/Typeface;->MONOSPACE:Lccsanandroid/graphics/Typeface;

    goto :goto_0

    .line 357
    :pswitch_1
    sget-object v0, Lccsanandroid/graphics/Typeface;->SERIF:Lccsanandroid/graphics/Typeface;

    .line 358
    goto :goto_0

    .line 353
    :pswitch_2
    sget-object v0, Lccsanandroid/graphics/Typeface;->SANS_SERIF:Lccsanandroid/graphics/Typeface;

    .line 354
    nop

    .line 365
    :goto_0
    invoke-virtual {p0, v0, p2}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Lccsanandroid/graphics/Typeface;I)V

    .line 366
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopDrag(Lccsanandroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 1007
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 1011
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1012
    .local v1, "commitChange":Z
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v3

    .line 1014
    .local v3, "oldState":Z
    if-eqz v1, :cond_4

    .line 1015
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Lccsanandroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lccsanandroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1016
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v4}, Lccsanandroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 1017
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 1018
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    cmpg-float v5, v4, v6

    if-gez v5, :cond_2

    goto :goto_1

    :cond_1
    cmpl-float v5, v4, v6

    if-lez v5, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .local v2, "newState":Z
    :goto_2
    goto :goto_3

    .line 1020
    .end local v2    # "newState":Z
    :cond_3
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v2

    .line 1022
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_3
    goto :goto_4

    .line 1023
    .end local v2    # "newState":Z
    :cond_4
    move v2, v3

    .line 1026
    .restart local v2    # "newState":Z
    :goto_4
    if-eq v2, v3, :cond_5

    .line 1027
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->playSoundEffect(I)V

    .line 1030
    :cond_5
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1031
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->cancelSuperTouch(Lccsanandroid/view/MotionEvent;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;

    .line 1144
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 1145
    .local v0, "padding":Lccsanandroid/graphics/Rect;
    iget v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 1146
    .local v1, "switchLeft":I
    iget v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1147
    .local v2, "switchTop":I
    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 1148
    .local v3, "switchRight":I
    iget v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1150
    .local v4, "switchBottom":I
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1153
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1154
    invoke-static {v6}, Lccsanandroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Rect;

    move-result-object v6

    .local v6, "thumbInsets":Lccsanandroid/graphics/Rect;
    goto :goto_0

    .line 1156
    .end local v6    # "thumbInsets":Lccsanandroid/graphics/Rect;
    :cond_0
    sget-object v6, Lccsanandroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Lccsanandroid/graphics/Rect;

    .line 1160
    .restart local v6    # "thumbInsets":Lccsanandroid/graphics/Rect;
    :goto_0
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 1161
    invoke-virtual {v7, v0}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 1164
    iget v7, v0, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1167
    move v7, v1

    .line 1168
    .local v7, "trackLeft":I
    move v8, v2

    .line 1169
    .local v8, "trackTop":I
    move v9, v3

    .line 1170
    .local v9, "trackRight":I
    move v10, v4

    .line 1171
    .local v10, "trackBottom":I
    if-eqz v6, :cond_4

    .line 1172
    iget v11, v6, Lccsanandroid/graphics/Rect;->left:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_1

    .line 1173
    iget v11, v6, Lccsanandroid/graphics/Rect;->left:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 1175
    :cond_1
    iget v11, v6, Lccsanandroid/graphics/Rect;->top:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_2

    .line 1176
    iget v11, v6, Lccsanandroid/graphics/Rect;->top:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1178
    :cond_2
    iget v11, v6, Lccsanandroid/graphics/Rect;->right:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_3

    .line 1179
    iget v11, v6, Lccsanandroid/graphics/Rect;->right:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 1181
    :cond_3
    iget v11, v6, Lccsanandroid/graphics/Rect;->bottom:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_4

    .line 1182
    iget v11, v6, Lccsanandroid/graphics/Rect;->bottom:I

    iget v12, v0, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1185
    :cond_4
    iget-object v11, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1189
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_5
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 1190
    invoke-virtual {v7, v0}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 1192
    iget v7, v0, Lccsanandroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 1193
    .local v7, "thumbLeft":I
    iget v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1194
    .local v8, "thumbRight":I
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1196
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1197
    .local v9, "background":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_6

    .line 1198
    invoke-static {v9, v7, v2, v8, v4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    .line 1204
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Lccsanandroid/graphics/drawable/Drawable;
    :cond_6
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1205
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1364
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1365
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1368
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1369
    invoke-static {v0, p1, p2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 1372
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1373
    invoke-static {v0, p1, p2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 1375
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 1342
    invoke-super {p0}, Lccsanandroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1344
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 1345
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1347
    .local v1, "changed":Z
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 1348
    .local v2, "thumbDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1349
    invoke-virtual {v2, v0}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1352
    :cond_0
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 1353
    .local v3, "trackDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1354
    invoke-virtual {v3, v0}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1357
    :cond_1
    if-eqz v1, :cond_2

    .line 1358
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 1360
    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1274
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    invoke-super {p0}, Lccsanandroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1277
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1278
    .local v0, "padding":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1279
    iget v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1281
    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1286
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-super {p0}, Lccsanandroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1289
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1290
    .local v0, "padding":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1291
    iget v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1293
    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 744
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 457
    iget v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 432
    iget v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 772
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 753
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 641
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 480
    iget v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 672
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 701
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 520
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 550
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 578
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1384
    invoke-super {p0}, Lccsanandroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1386
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1390
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1394
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->end()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Lccsanandroid/animation/ObjectAnimator;

    .line 1398
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 1333
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lccsanandroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1334
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    sget-object v1, Lccsanandroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    .line 1337
    :cond_0
    return-object v0
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lccsanandroid/widget/CompoundButton;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 1211
    iget-object v2, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 1212
    .local v2, "padding":Lccsanandroid/graphics/Rect;
    iget-object v3, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 1213
    .local v3, "trackDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1214
    invoke-virtual {v3, v2}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    goto :goto_0

    .line 1216
    :cond_0
    invoke-virtual {v2}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 1219
    :goto_0
    iget v4, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1220
    .local v4, "switchTop":I
    iget v5, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1221
    .local v5, "switchBottom":I
    iget v6, v2, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 1222
    .local v6, "switchInnerTop":I
    iget v7, v2, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 1224
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 1225
    .local v8, "thumbDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 1226
    iget-boolean v9, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 1227
    invoke-static {v8}, Lccsanandroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Rect;

    move-result-object v9

    .line 1228
    .local v9, "insets":Lccsanandroid/graphics/Rect;
    invoke-virtual {v8, v2}, Lccsanandroid/graphics/drawable/Drawable;->copyBounds(Lccsanandroid/graphics/Rect;)V

    .line 1229
    iget v10, v2, Lccsanandroid/graphics/Rect;->left:I

    iget v11, v9, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iput v10, v2, Lccsanandroid/graphics/Rect;->left:I

    .line 1230
    iget v10, v2, Lccsanandroid/graphics/Rect;->right:I

    iget v11, v9, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v2, Lccsanandroid/graphics/Rect;->right:I

    .line 1232
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v10

    .line 1233
    .local v10, "saveCount":I
    sget-object v11, Lccsanandroid/graphics/Region$Op;->DIFFERENCE:Lccsanandroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v11}, Lccsanandroid/graphics/Canvas;->clipRect(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Region$Op;)Z

    .line 1234
    invoke-virtual {v3, v1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1235
    invoke-virtual {v1, v10}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 1236
    .end local v9    # "insets":Lccsanandroid/graphics/Rect;
    .end local v10    # "saveCount":I
    goto :goto_1

    .line 1237
    :cond_1
    invoke-virtual {v3, v1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1241
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v9

    .line 1243
    .local v9, "saveCount":I
    if-eqz v8, :cond_3

    .line 1244
    invoke-virtual {v8, v1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1247
    :cond_3
    invoke-direct/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOnLayout:Lccsanandroid/text/Layout;

    goto :goto_2

    :cond_4
    iget-object v10, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOffLayout:Lccsanandroid/text/Layout;

    .line 1248
    .local v10, "switchText":Lccsanandroid/text/Layout;
    :goto_2
    if-eqz v10, :cond_7

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v11

    .line 1250
    .local v11, "drawableState":[I
    iget-object v12, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextColors:Lccsanandroid/content/res/ColorStateList;

    if-eqz v12, :cond_5

    .line 1251
    iget-object v13, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    invoke-virtual {v13, v12}, Lccsanandroid/text/TextPaint;->setColor(I)V

    .line 1253
    :cond_5
    iget-object v12, v0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    iput-object v11, v12, Lccsanandroid/text/TextPaint;->drawableState:[I

    .line 1256
    if-eqz v8, :cond_6

    .line 1257
    invoke-virtual {v8}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v12

    .line 1258
    .local v12, "bounds":Lccsanandroid/graphics/Rect;
    iget v13, v12, Lccsanandroid/graphics/Rect;->left:I

    iget v14, v12, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 1259
    .end local v12    # "bounds":Lccsanandroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_3

    .line 1260
    .end local v13    # "cX":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getWidth()I

    move-result v13

    .line 1263
    .restart local v13    # "cX":I
    :goto_3
    div-int/lit8 v12, v13, 0x2

    invoke-virtual {v10}, Lccsanandroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v12, v14

    .line 1264
    .local v12, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v10}, Lccsanandroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1265
    .local v14, "top":I
    int-to-float v15, v12

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 1266
    invoke-virtual {v10, v1}, Lccsanandroid/text/Layout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1269
    .end local v11    # "drawableState":[I
    .end local v12    # "left":I
    .end local v13    # "cX":I
    .end local v14    # "top":I
    :cond_7
    invoke-virtual {v1, v9}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 1270
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 1402
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 1403
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1404
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 1408
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1409
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1410
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 1411
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1412
    invoke-virtual {p1}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1413
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1416
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-virtual {p1, v2}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1421
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1088
    invoke-super/range {p0 .. p5}, Lccsanandroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 1092
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1093
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 1094
    .local v2, "trackPadding":Lccsanandroid/graphics/Rect;
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1095
    invoke-virtual {v3, v2}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {v2}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 1100
    :goto_0
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lccsanandroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Rect;

    move-result-object v3

    .line 1101
    .local v3, "insets":Lccsanandroid/graphics/Rect;
    iget v4, v3, Lccsanandroid/graphics/Rect;->left:I

    iget v5, v2, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1102
    iget v4, v3, Lccsanandroid/graphics/Rect;->right:I

    iget v6, v2, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1107
    .end local v2    # "trackPadding":Lccsanandroid/graphics/Rect;
    .end local v3    # "insets":Lccsanandroid/graphics/Rect;
    :cond_1
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1108
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 1109
    .local v2, "switchLeft":I
    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .local v3, "switchRight":I
    goto :goto_1

    .line 1111
    .end local v2    # "switchLeft":I
    .end local v3    # "switchRight":I
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v2, v1

    .line 1112
    .restart local v3    # "switchRight":I
    iget v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    sub-int v2, v3, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 1117
    .restart local v2    # "switchLeft":I
    :goto_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1120
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    move-result v5

    .line 1121
    .local v5, "switchTop":I
    iget v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr v4, v5

    .line 1122
    .local v4, "switchBottom":I
    goto :goto_2

    .line 1131
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1132
    .restart local v4    # "switchBottom":I
    iget v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    sub-int v5, v4, v5

    .restart local v5    # "switchTop":I
    goto :goto_2

    .line 1125
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    .line 1127
    .local v4, "switchTop":I
    add-int/2addr v5, v4

    .line 1128
    .local v5, "switchBottom":I
    move v7, v5

    move v5, v4

    move v4, v7

    .line 1136
    .local v4, "switchBottom":I
    .local v5, "switchTop":I
    :goto_2
    iput v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 1137
    iput v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1138
    iput v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1139
    iput v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 1140
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 808
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOnLayout:Lccsanandroid/text/Layout;

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Lccsanandroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOnLayout:Lccsanandroid/text/Layout;

    .line 813
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOffLayout:Lccsanandroid/text/Layout;

    if-nez v0, :cond_1

    .line 814
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Lccsanandroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOffLayout:Lccsanandroid/text/Layout;

    .line 818
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 821
    .local v0, "padding":Lccsanandroid/graphics/Rect;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 823
    invoke-virtual {v1, v0}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 824
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 825
    .local v1, "thumbWidth":I
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_0

    .line 827
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_2
    const/4 v1, 0x0

    .line 828
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 832
    .restart local v2    # "thumbHeight":I
    :goto_0
    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eqz v3, :cond_3

    .line 833
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOnLayout:Lccsanandroid/text/Layout;

    invoke-virtual {v3}, Lccsanandroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mOffLayout:Lccsanandroid/text/Layout;

    invoke-virtual {v4}, Lccsanandroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_1

    .line 836
    .end local v3    # "maxTextWidth":I
    :cond_3
    const/4 v3, 0x0

    .line 839
    .restart local v3    # "maxTextWidth":I
    :goto_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 842
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 843
    invoke-virtual {v4, v0}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 844
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_2

    .line 846
    .end local v4    # "trackHeight":I
    :cond_4
    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 847
    const/4 v4, 0x0

    .line 852
    .restart local v4    # "trackHeight":I
    :goto_2
    iget v5, v0, Lccsanandroid/graphics/Rect;->left:I

    .line 853
    .local v5, "paddingLeft":I
    iget v6, v0, Lccsanandroid/graphics/Rect;->right:I

    .line 854
    .local v6, "paddingRight":I
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 855
    invoke-static {v7}, Lccsanandroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Rect;

    move-result-object v7

    .line 856
    .local v7, "inset":Lccsanandroid/graphics/Rect;
    iget v8, v7, Lccsanandroid/graphics/Rect;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 857
    iget v8, v7, Lccsanandroid/graphics/Rect;->right:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 860
    .end local v7    # "inset":Lccsanandroid/graphics/Rect;
    :cond_5
    iget v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    iget v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 862
    .local v7, "switchWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 863
    .local v8, "switchHeight":I
    iput v7, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 864
    iput v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 866
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/CompoundButton;->onMeasure(II)V

    .line 868
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v9

    .line 869
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_6

    .line 870
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 872
    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 876
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 878
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 879
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_1
    return-void
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 917
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 918
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 919
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 932
    :pswitch_0
    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 952
    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    .line 953
    .local v1, "x":F
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v3

    .line 954
    .local v3, "thumbScrollRange":I
    iget v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    sub-float v4, v1, v4

    .line 956
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 957
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_0

    .line 961
    .end local v7    # "dPos":F
    :cond_0
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v7, -0x40800000    # -1.0f

    .line 963
    .restart local v7    # "dPos":F
    :goto_0
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 964
    neg-float v7, v7

    .line 966
    :cond_2
    iget v8, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Lccsanandroidx/appcompat/widget/SwitchCompat;->constrain(FFF)F

    move-result v5

    .line 967
    .local v5, "newPos":F
    iget v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 968
    iput v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 969
    invoke-virtual {p0, v5}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 971
    :cond_3
    return v2

    .line 938
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_2
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v3

    .line 939
    .local v3, "x":F
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v4

    .line 940
    .local v4, "y":F
    iget v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_4

    iget v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    sub-float v5, v4, v5

    .line 941
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 942
    :cond_4
    iput v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 943
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsanandroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 944
    iput v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 945
    iput v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 946
    return v2

    .line 935
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    nop

    .line 974
    :cond_5
    :goto_1
    goto :goto_2

    .line 979
    :pswitch_4
    iget v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    if-ne v3, v1, :cond_6

    .line 980
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->stopDrag(Lccsanandroid/view/MotionEvent;)V

    .line 982
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    .line 983
    return v2

    .line 985
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 986
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v1}, Lccsanandroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 921
    :pswitch_5
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    .line 922
    .restart local v1    # "x":F
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v3

    .line 923
    .local v3, "y":F
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v1, v3}, Lccsanandroidx/appcompat/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 924
    iput v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 925
    iput v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 926
    iput v3, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 991
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 1071
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->setChecked(Z)V

    .line 1075
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 1077
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 1081
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1082
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1084
    :goto_1
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 1429
    nop

    .line 1430
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Lccsanandroid/widget/TextView;Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode$Callback;

    move-result-object v0

    .line 1429
    invoke-super {p0, v0}, Lccsanandroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V

    .line 1431
    return-void
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .line 792
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 793
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 794
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 796
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .line 734
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 735
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 736
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 444
    iput p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 445
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 446
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 420
    iput p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 421
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 422
    return-void
.end method

.method public setSwitchTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resid"    # I

    .line 311
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;I[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 317
    .local v0, "appearance":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 318
    .local v1, "colors":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 319
    iput-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextColors:Lccsanandroid/content/res/ColorStateList;

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getTextColors()Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextColors:Lccsanandroid/content/res/ColorStateList;

    .line 325
    :goto_0
    sget v2, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 326
    .local v2, "ts":I
    if-eqz v2, :cond_1

    .line 327
    int-to-float v4, v2

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v5}, Lccsanandroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 328
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Lccsanandroid/text/TextPaint;->setTextSize(F)V

    .line 329
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 334
    :cond_1
    sget v4, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 335
    .local v4, "typefaceIndex":I
    sget v6, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v0, v6, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 337
    .local v5, "styleIndex":I
    invoke-direct {p0, v4, v5}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 339
    sget v6, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v6, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 340
    .local v3, "allCaps":Z
    if-eqz v3, :cond_2

    .line 341
    new-instance v6, Lccsanandroidx/appcompat/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lccsanandroidx/appcompat/text/AllCapsTransformationMethod;-><init>(Lccsanandroid/content/Context;)V

    iput-object v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Lccsanandroid/text/method/TransformationMethod;

    goto :goto_1

    .line 343
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Lccsanandroid/text/method/TransformationMethod;

    .line 346
    :goto_1
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 347
    return-void
.end method

.method public setSwitchTypeface(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 403
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0}, Lccsanandroid/text/TextPaint;->getTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0}, Lccsanandroid/text/TextPaint;->getTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    .line 404
    invoke-virtual {v0}, Lccsanandroid/text/TextPaint;->getTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 405
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0, p1}, Lccsanandroid/text/TextPaint;->setTypeface(Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;

    .line 407
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 408
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 410
    :cond_2
    return-void
.end method

.method public setSwitchTypeface(Lccsanandroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Lccsanandroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 375
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    .line 376
    if-nez p1, :cond_0

    .line 377
    invoke-static {p2}, Lccsanandroid/graphics/Typeface;->defaultFromStyle(I)Lccsanandroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {p1, p2}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object p1

    .line 382
    :goto_0
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 384
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 385
    .local v2, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p2

    .line 386
    .local v3, "need":I
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v4, v1}, Lccsanandroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 387
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {v1, v0}, Lccsanandroid/text/TextPaint;->setTextSkewX(F)V

    .line 388
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_2

    .line 389
    :cond_4
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v2, v1}, Lccsanandroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 390
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v1, v0}, Lccsanandroid/text/TextPaint;->setTextSkewX(F)V

    .line 391
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 393
    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 781
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 782
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 783
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 762
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 763
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 764
    return-void
.end method

.method public setThumbDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 610
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 611
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 613
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 614
    if-eqz p1, :cond_1

    .line 615
    invoke-virtual {p1, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 617
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 618
    return-void
.end method

.method setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .line 1060
    iput p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 1061
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 1062
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 629
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 630
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .line 468
    iput p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 469
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 470
    return-void
.end method

.method public setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 659
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Lccsanandroid/content/res/ColorStateList;

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 662
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 663
    return-void
.end method

.method public setThumbTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 687
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 690
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 691
    return-void
.end method

.method public setTrackDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 491
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 492
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 494
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 495
    if-eqz p1, :cond_1

    .line 496
    invoke-virtual {p1, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 498
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 499
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 509
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 510
    return-void
.end method

.method public setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 537
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Lccsanandroid/content/res/ColorStateList;

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 540
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 541
    return-void
.end method

.method public setTrackTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 564
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 567
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 568
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1067
    return-void
.end method

.method protected verifyDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 1379
    invoke-super {p0, p1}, Lccsanandroid/widget/CompoundButton;->verifyDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method