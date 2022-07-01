.class Lccsanandroidx/appcompat/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ActivityChooserView;

    .line 148
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 151
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mProvider:Lccsanandroidx/core/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$2;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mProvider:Lccsanandroidx/core/view/ActionProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 161
    :cond_1
    :goto_0
    return-void
.end method
