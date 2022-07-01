.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;
.super Lccsanandroidx/appcompat/widget/ForwardingListener;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsanandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

.field final synthetic val$popup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;Lccsanandroid/view/View;Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner;
    .param p2, "src"    # Lccsanandroid/view/View;

    .line 264
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;->val$popup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/widget/ForwardingListener;-><init>(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 267
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;->val$popup:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    .line 276
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
