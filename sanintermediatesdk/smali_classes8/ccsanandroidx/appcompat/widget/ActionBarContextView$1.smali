.class Lccsanandroidx/appcompat/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ActionBarContextView;->initForMode(Lccsanandroidx/appcompat/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionBarContextView;

.field final synthetic val$mode:Lccsanandroidx/appcompat/view/ActionMode;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActionBarContextView;Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ActionBarContextView;

    .line 171
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView$1;->this$0:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    iput-object p2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 174
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->finish()V

    .line 175
    return-void
.end method
