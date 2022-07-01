.class public Lccsanandroidx/appcompat/widget/ActivityChooserView$InnerLayout;
.super Lccsanandroid/widget/LinearLayout;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerLayout"
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 866
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/ActivityChooserView$InnerLayout;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 871
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 872
    sget-object v0, Lccsanandroidx/appcompat/widget/ActivityChooserView$InnerLayout;->TINT_ATTRS:[I

    invoke-static {p1, p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 873
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$InnerLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 874
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 875
    return-void
.end method
