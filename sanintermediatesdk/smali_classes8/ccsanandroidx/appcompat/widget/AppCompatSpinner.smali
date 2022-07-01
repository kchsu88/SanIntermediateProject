.class public Lccsanandroidx/appcompat/widget/AppCompatSpinner;
.super Lccsanandroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroidx/core/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;,
        Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;,
        Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;,
        Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;,
        Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private final mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

.field mDropDownWidth:I

.field private mForwardingListener:Lccsanandroidx/appcompat/widget/ForwardingListener;

.field private mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

.field private final mPopupContext:Lccsanandroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Lccsanandroid/widget/SpinnerAdapter;

.field final mTempRect:Lccsanandroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "mode"    # I

    .line 132
    sget v0, Lccsanandroidx/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 144
    sget v0, Lccsanandroidx/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 160
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 180
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsanandroid/content/res/Resources$Theme;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsanandroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/Spinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    .line 211
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 213
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 216
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    new-instance v2, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v2, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 218
    if-eqz p5, :cond_0

    .line 219
    new-instance v2, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    goto :goto_0

    .line 221
    :cond_0
    sget v2, Lccsanandroidx/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v0, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 222
    .local v2, "popupThemeResId":I
    if-eqz v2, :cond_1

    .line 223
    new-instance v3, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    goto :goto_0

    .line 225
    :cond_1
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    .line 229
    .end local v2    # "popupThemeResId":I
    :goto_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_4

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "aa":Lccsanandroid/content/res/TypedArray;
    :try_start_0
    sget-object v3, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 234
    invoke-virtual {v2, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {v2, v1, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p4, v3

    .line 240
    :cond_2
    if-eqz v2, :cond_4

    .line 241
    :goto_1
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 240
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    invoke-static {v4, v5, v3}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_4

    .line 241
    goto :goto_1

    .line 240
    :goto_2
    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 243
    :cond_3
    throw v1

    .line 246
    .end local v2    # "aa":Lccsanandroid/content/res/TypedArray;
    :cond_4
    :goto_3
    packed-switch p4, :pswitch_data_0

    goto :goto_4

    .line 253
    :pswitch_0
    new-instance v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    invoke-direct {v2, p0, v3, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 254
    .local v2, "popup":Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    sget-object v4, Lccsanandroidx/appcompat/R$styleable;->Spinner:[I

    invoke-static {v3, p2, v4, p3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 256
    .local v1, "pa":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v3, Lccsanandroidx/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 258
    sget v3, Lccsanandroidx/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 259
    invoke-virtual {v1, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 258
    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 260
    sget v3, Lccsanandroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 263
    iput-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    .line 264
    new-instance v3, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;

    invoke-direct {v3, p0, p0, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;Lccsanandroid/view/View;Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Lccsanandroidx/appcompat/widget/ForwardingListener;

    goto :goto_4

    .line 248
    .end local v1    # "pa":Lccsanandroidx/appcompat/widget/TintTypedArray;
    .end local v2    # "popup":Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    :pswitch_1
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    .line 249
    sget v2, Lccsanandroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 250
    nop

    .line 282
    :goto_4
    sget v1, Lccsanandroidx/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 283
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 284
    new-instance v2, Lccsanandroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p1, v3, v1}, Lccsanandroid/widget/ArrayAdapter;-><init>(Lccsanandroid/content/Context;I[Ljava/lang/Object;)V

    .line 286
    .local v2, "adapter":Lccsanandroid/widget/ArrayAdapter;, "Lccsanandroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v3, Lccsanandroidx/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 287
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V

    .line 290
    .end local v2    # "adapter":Lccsanandroid/widget/ArrayAdapter;, "Lccsanandroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_5
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    .line 296
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_6

    .line 297
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V

    .line 298
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Lccsanandroid/widget/SpinnerAdapter;

    .line 301
    :cond_6
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v2, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 302
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method compatMeasureContentWidth(Lccsanandroid/widget/SpinnerAdapter;Lccsanandroid/graphics/drawable/Drawable;)I
    .locals 12
    .param p1, "adapter"    # Lccsanandroid/widget/SpinnerAdapter;
    .param p2, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 558
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 559
    return v0

    .line 562
    :cond_0
    const/4 v1, 0x0

    .line 563
    .local v1, "width":I
    const/4 v2, 0x0

    .line 564
    .local v2, "itemView":Lccsanandroid/view/View;
    const/4 v3, 0x0

    .line 565
    .local v3, "itemType":I
    nop

    .line 566
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 567
    .local v4, "widthMeasureSpec":I
    nop

    .line 568
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 572
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 573
    .local v6, "start":I
    invoke-interface {p1}, Lccsanandroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 574
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 575
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 576
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 577
    invoke-interface {p1, v6}, Lccsanandroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 578
    .local v9, "positionType":I
    if-eq v9, v3, :cond_1

    .line 579
    move v3, v9

    .line 580
    const/4 v2, 0x0

    .line 582
    :cond_1
    invoke-interface {p1, v6, v2, p0}, Lccsanandroid/widget/SpinnerAdapter;->getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v2

    .line 583
    invoke-virtual {v2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 584
    new-instance v10, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 588
    :cond_2
    invoke-virtual {v2, v4, v5}, Lccsanandroid/view/View;->measure(II)V

    .line 589
    invoke-virtual {v2}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 576
    .end local v9    # "positionType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 593
    .end local v6    # "i":I
    :cond_3
    if-eqz p2, :cond_4

    .line 594
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p2, v6}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 595
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->left:I

    iget-object v9, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v9, v9, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 598
    :cond_4
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 551
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->drawableStateChanged()V

    .line 552
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 555
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .line 373
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 375
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 376
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0

    .line 378
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .line 347
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 349
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 350
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 2

    .line 392
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 393
    iget v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    return v0

    .line 394
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 395
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0

    .line 397
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final getInternalPopup()Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
    .locals 1

    .line 603
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    return-object v0
.end method

.method public getPopupBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 328
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 331
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->getPopupBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 333
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContext()Lccsanandroid/content/Context;
    .locals 1

    .line 309
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 472
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 516
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 516
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 545
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 545
    :goto_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 419
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->onDetachedFromWindow()V

    .line 421
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->dismiss()V

    .line 424
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 436
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/Spinner;->onMeasure(II)V

    .line 438
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 440
    .local v0, "measuredWidth":I
    nop

    .line 441
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getAdapter()Lccsanandroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Lccsanandroid/widget/SpinnerAdapter;Lccsanandroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 440
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 442
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 440
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 443
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v2

    .line 440
    invoke-virtual {p0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 445
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 625
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 627
    .local v0, "ss":Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsanandroid/widget/Spinner;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 629
    iget-boolean v1, v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    .line 631
    .local v1, "vto":Lccsanandroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 632
    new-instance v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-direct {v2, p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;)V

    .line 648
    .local v2, "listener":Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 651
    .end local v1    # "vto":Lccsanandroid/view/ViewTreeObserver;
    .end local v2    # "listener":Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 2

    .line 617
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 618
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 619
    .local v0, "ss":Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    .line 620
    return-object v0
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 428
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Lccsanandroidx/appcompat/widget/ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/appcompat/widget/ForwardingListener;->onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    return v0

    .line 431
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_1

    .line 451
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    .line 454
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 458
    :cond_1
    invoke-super {p0}, Lccsanandroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Lccsanandroid/widget/Adapter;)V
    .locals 0

    .line 77
    check-cast p1, Lccsanandroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lccsanandroid/widget/SpinnerAdapter;

    .line 404
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    if-nez v0, :cond_0

    .line 405
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Lccsanandroid/widget/SpinnerAdapter;

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V

    .line 411
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Lccsanandroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 413
    .local v0, "popupContext":Lccsanandroid/content/Context;
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    new-instance v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;-><init>(Lccsanandroid/widget/SpinnerAdapter;Lccsanandroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 415
    .end local v0    # "popupContext":Lccsanandroid/content/Context;
    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 485
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 486
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 489
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 477
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setBackgroundResource(I)V

    .line 478
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 481
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 357
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    .line 359
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    goto :goto_0

    .line 360
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 361
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 363
    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 338
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setVerticalOffset(I)V

    goto :goto_0

    .line 340
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 341
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 343
    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 383
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 384
    iput p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    goto :goto_0

    .line 385
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 386
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setDropDownWidth(I)V

    .line 388
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 316
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 317
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setPopupBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 323
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 463
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 501
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 504
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 530
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 533
    :cond_0
    return-void
.end method

.method showPopup()V
    .locals 3

    .line 607
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mPopup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    .line 612
    :goto_0
    return-void
.end method
