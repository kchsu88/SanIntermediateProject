.class Lccsanandroidx/appcompat/widget/ActivityChooserView$4;
.super Lccsanandroidx/appcompat/widget/ForwardingListener;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ActivityChooserView;
    .param p2, "src"    # Lccsanandroid/view/View;

    .line 260
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$4;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/widget/ForwardingListener;-><init>(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 263
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$4;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$4;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->showPopup()Z

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$4;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 275
    const/4 v0, 0x1

    return v0
.end method
