.class Lccsanandroidx/appcompat/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lccsanandroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/SearchView;

    .line 1166
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$7;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Lccsanandroid/widget/TextView;ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Lccsanandroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Lccsanandroid/view/KeyEvent;

    .line 1173
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$7;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    .line 1174
    const/4 v0, 0x1

    return v0
.end method
