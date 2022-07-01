.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    .line 632
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 635
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    .line 638
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    .line 639
    .local v0, "vto":Lccsanandroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 640
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 641
    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 646
    :cond_2
    :goto_0
    return-void
.end method
