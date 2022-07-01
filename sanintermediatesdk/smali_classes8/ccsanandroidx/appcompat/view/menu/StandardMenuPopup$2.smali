.class Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Lccsanandroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    .line 80
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 83
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 87
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 89
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    :cond_1
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 92
    return-void
.end method
