.class public final Lccsanandroidx/core/view/OneShotPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotPreDrawListener.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lccsanandroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Lccsanandroid/view/View;

.field private mViewTreeObserver:Lccsanandroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Lccsanandroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "runnable"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mView:Lccsanandroid/view/View;

    .line 45
    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 46
    iput-object p2, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method public static add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "runnable"
        }
    .end annotation

    .line 59
    if-eqz p0, :cond_1

    .line 60
    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lccsanandroidx/core/view/OneShotPreDrawListener;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/OneShotPreDrawListener;-><init>(Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    .line 63
    .local v0, "listener":Lccsanandroidx/core/view/OneShotPreDrawListener;
    invoke-virtual {p0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 64
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->addOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 65
    return-object v0

    .line 60
    .end local v0    # "listener":Lccsanandroidx/core/view/OneShotPreDrawListener;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "runnable == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lccsanandroidx/core/view/OneShotPreDrawListener;->removeListener()V

    .line 71
    iget-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 91
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lccsanandroidx/core/view/OneShotPreDrawListener;->removeListener()V

    .line 96
    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 80
    iget-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lccsanandroidx/core/view/OneShotPreDrawListener;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0, p0}, Lccsanandroid/view/View;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 86
    return-void
.end method