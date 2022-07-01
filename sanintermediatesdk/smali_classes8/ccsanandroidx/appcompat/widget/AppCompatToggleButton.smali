.class public Lccsanandroidx/appcompat/widget/AppCompatToggleButton;
.super Lccsanandroid/widget/ToggleButton;
.source "AppCompatToggleButton.java"


# instance fields
.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatToggleButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 45
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatToggleButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ToggleButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatToggleButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 54
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 55
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method
