.class Lccsanandroidx/appcompat/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ListPopupWindow;

    .line 1167
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$2;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$2;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Lccsanandroid/view/View;

    move-result-object v0

    .line 1172
    .local v0, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$2;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1175
    :cond_0
    return-void
.end method
