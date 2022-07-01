.class public Lccsanandroidx/appcompat/widget/AppCompatSeekBar;
.super Lccsanandroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private final mAppCompatSeekBarHelper:Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 45
    sget v0, Lccsanandroidx/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/SeekBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 54
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;-><init>(Lccsanandroid/widget/SeekBar;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;

    .line 55
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 66
    invoke-super {p0}, Lccsanandroid/widget/SeekBar;->drawableStateChanged()V

    .line 67
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->drawableStateChanged()V

    .line 68
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 72
    invoke-super {p0}, Lccsanandroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 73
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->jumpDrawablesToCurrentState()V

    .line 74
    return-void
.end method

.method protected declared-synchronized onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-super {p0, p1}, Lccsanandroid/widget/SeekBar;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 61
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->drawTickMarks(Lccsanandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 59
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/AppCompatSeekBar;
    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
