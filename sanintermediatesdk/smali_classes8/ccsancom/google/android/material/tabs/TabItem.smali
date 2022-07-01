.class public Lccsancom/google/android/material/tabs/TabItem;
.super Lccsanandroid/view/View;
.source "TabItem.java"


# instance fields
.field public final customLayout:I

.field public final icon:Lccsanandroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/tabs/TabItem;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lccsancom/google/android/material/R$styleable;->TabItem:[I

    .line 55
    invoke-static {p1, p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->TabItem_android_text:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    .line 57
    sget v1, Lccsancom/google/android/material/R$styleable;->TabItem_android_icon:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabItem;->icon:Lccsanandroid/graphics/drawable/Drawable;

    .line 58
    sget v1, Lccsancom/google/android/material/R$styleable;->TabItem_android_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabItem;->customLayout:I

    .line 59
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 60
    return-void
.end method
