.class Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lccsanandroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    .line 120
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 123
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 131
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$2;->this$0:Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 133
    :cond_1
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 134
    return-void
.end method
