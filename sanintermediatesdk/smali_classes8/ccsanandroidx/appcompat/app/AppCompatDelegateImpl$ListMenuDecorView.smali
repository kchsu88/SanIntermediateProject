.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Lccsanandroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;Lccsanandroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 3011
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3012
    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 3013
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3041
    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_0

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


# virtual methods
.method public dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 3017
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3018
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3017
    :goto_1
    return v0
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 3023
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3024
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 3025
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 3026
    .local v1, "x":I
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3027
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3028
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(I)V

    .line 3029
    const/4 v3, 0x1

    return v3

    .line 3032
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 3037
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 3038
    return-void
.end method
