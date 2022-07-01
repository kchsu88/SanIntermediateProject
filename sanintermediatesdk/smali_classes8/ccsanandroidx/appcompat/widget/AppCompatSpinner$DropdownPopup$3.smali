.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

.field final synthetic val$layoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    .line 1086
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iput-object p2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;->val$layoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1089
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1090
    .local v0, "vto":Lccsanandroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1091
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;->val$layoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1093
    :cond_0
    return-void
.end method
