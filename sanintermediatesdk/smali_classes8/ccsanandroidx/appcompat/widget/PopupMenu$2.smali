.class Lccsanandroidx/appcompat/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lccsanandroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/PopupMenu;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/PopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/PopupMenu;

    .line 125
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/PopupMenu$2;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 128
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu$2;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu$2;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/PopupMenu$2;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    invoke-interface {v0, v1}, Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;->onDismiss(Lccsanandroidx/appcompat/widget/PopupMenu;)V

    .line 131
    :cond_0
    return-void
.end method
